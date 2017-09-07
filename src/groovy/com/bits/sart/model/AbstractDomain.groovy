package com.bits.sart.model

class AbstractDomain implements Serializable {
	
	/**
	 * Serializable means that instances of the class can be turned into a byte-stream (for example, to be saved to a file) and then converted back into classes again.
	 */
	
	transient springSecurityService
	
	def beforeInsert() {
		
		if(null != springSecurityService) {
			
			User currentUser = springSecurityService.getCurrentUser()
			
			if(null != currentUser) {
				
				this.createdByUser = currentUser
			}
		}
	}

	def beforeUpdate() {
		
		if(null != springSecurityService) {
			
			User currentUser = springSecurityService.getCurrentUser()
			
			if(null != currentUser) {
				
				this.updatedByUser = currentUser
			}
		}
		
	}
}
