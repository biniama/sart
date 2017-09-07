package com.bits.sart.model

import java.util.Date;

class Methodology extends AbstractDomain {

	//{Qualitative, Quantitative, Mixed} {Enum}
	
	String name 
	
	String description 
	
	Date dateCreated
	Date lastUpdated
	User createdByUser
	User updatedByUser
	
//	static belongsTo = [research : Research]
	
	static constraints = {
		
		description nullable:true
		
		createdByUser nullable:true
		updatedByUser nullable:true
	}
	
}
