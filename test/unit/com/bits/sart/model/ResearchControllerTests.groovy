package com.bits.sart.model



import org.junit.*
import grails.test.mixin.*

@TestFor(ResearchController)
@Mock(Research)
class ResearchControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/research/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.researchInstanceList.size() == 0
        assert model.researchInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.researchInstance != null
    }

    void testSave() {
        controller.save()

        assert model.researchInstance != null
        assert view == '/research/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/research/show/1'
        assert controller.flash.message != null
        assert Research.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/research/list'


        populateValidParams(params)
        def research = new Research(params)

        assert research.save() != null

        params.id = research.id

        def model = controller.show()

        assert model.researchInstance == research
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/research/list'


        populateValidParams(params)
        def research = new Research(params)

        assert research.save() != null

        params.id = research.id

        def model = controller.edit()

        assert model.researchInstance == research
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/research/list'

        response.reset()


        populateValidParams(params)
        def research = new Research(params)

        assert research.save() != null

        // test invalid parameters in update
        params.id = research.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/research/edit"
        assert model.researchInstance != null

        research.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/research/show/$research.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        research.clearErrors()

        populateValidParams(params)
        params.id = research.id
        params.version = -1
        controller.update()

        assert view == "/research/edit"
        assert model.researchInstance != null
        assert model.researchInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/research/list'

        response.reset()

        populateValidParams(params)
        def research = new Research(params)

        assert research.save() != null
        assert Research.count() == 1

        params.id = research.id

        controller.delete()

        assert Research.count() == 0
        assert Research.get(research.id) == null
        assert response.redirectedUrl == '/research/list'
    }
}
