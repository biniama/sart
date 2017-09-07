package com.bits.sart.model

import java.util.Date;

class Client extends AbstractDomain {

	String name
	
	Address address		//{do we need this?}
	
	Date dateCreated
	Date lastUpdated
	User createdByUser
	User updatedByUser
	
	//static belongsTo = [research : Research]
	
	static constraints = {
		
		address nullable:true
		
		createdByUser nullable:true
		updatedByUser nullable:true
	}
	
}
