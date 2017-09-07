package com.bits.sart.model

import java.util.Date;

class Duration extends AbstractDomain {

	Date startDate
	
	Date endDate
	
	Date dateCreated
	Date lastUpdated
	User createdByUser
	User updatedByUser
	
	//static belongsTo = [research : Research]
	
	static constraints = {
		
		createdByUser nullable:true
		updatedByUser nullable:true
	}
	
}
