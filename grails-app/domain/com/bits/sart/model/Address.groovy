package com.bits.sart.model

class Address extends AbstractDomain {

	String street
	
	String woreda
	
	String phoneNumber
	
	City city
	
	static belongsTo = [sartUser : SartUser]
	
	Date dateCreated
	Date lastUpdated
	User createdByUser
	User updatedByUser
	
	static constraints = {
		
		street blank:false, maxSize:100
		
		createdByUser nullable:true
		updatedByUser nullable:true
	}

}
