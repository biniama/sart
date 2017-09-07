package com.bits.sart.model

import java.util.Date;

class ResearchCategory extends AbstractDomain {
	
	//{Market research, Social research}
	String name 
	
	String description
	
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
