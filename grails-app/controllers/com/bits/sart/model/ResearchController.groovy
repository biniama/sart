package com.bits.sart.model

import org.springframework.dao.DataIntegrityViolationException

class ResearchController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [researchInstanceList: Research.list(params), researchInstanceTotal: Research.count()]
    }

    def create() {
        [researchInstance: new Research(params)]
    }

    def save() {
        def researchInstance = new Research(params)
        if (!researchInstance.save(flush: true)) {
            render(view: "create", model: [researchInstance: researchInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'research.label', default: 'Research'), researchInstance.id])
        redirect(action: "show", id: researchInstance.id)
    }

    def show() {
        def researchInstance = Research.get(params.id)
        if (!researchInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'research.label', default: 'Research'), params.id])
            redirect(action: "list")
            return
        }

        [researchInstance: researchInstance]
    }

    def edit() {
        def researchInstance = Research.get(params.id)
        if (!researchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'research.label', default: 'Research'), params.id])
            redirect(action: "list")
            return
        }

        [researchInstance: researchInstance]
    }

    def update() {
        def researchInstance = Research.get(params.id)
        if (!researchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'research.label', default: 'Research'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (researchInstance.version > version) {
                researchInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'research.label', default: 'Research')] as Object[],
                          "Another user has updated this Research while you were editing")
                render(view: "edit", model: [researchInstance: researchInstance])
                return
            }
        }

        researchInstance.properties = params

        if (!researchInstance.save(flush: true)) {
            render(view: "edit", model: [researchInstance: researchInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'research.label', default: 'Research'), researchInstance.id])
        redirect(action: "show", id: researchInstance.id)
    }

    def delete() {
        def researchInstance = Research.get(params.id)
        if (!researchInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'research.label', default: 'Research'), params.id])
            redirect(action: "list")
            return
        }

        try {
            researchInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'research.label', default: 'Research'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'research.label', default: 'Research'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
