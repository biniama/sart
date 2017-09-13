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
}
