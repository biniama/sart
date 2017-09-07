package com.bits.sart.model

import java.util.Date;

class Researcher extends AbstractDomain {

	SartUser sartUser
	String roleInResearch
	String evaluationRemark
	
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
