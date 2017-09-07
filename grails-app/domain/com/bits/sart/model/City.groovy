package com.bits.sart.model

import java.util.Date;

class City extends AbstractDomain {

	String name
	
	Date dateCreated
	Date lastUpdated
	User createdByUser
	User updatedByUser
	
	//static belongsTo = [research : Research, address: Address]
	
	static constraints = {
		
		createdByUser nullable:true
		updatedByUser nullable:true
	}

}
