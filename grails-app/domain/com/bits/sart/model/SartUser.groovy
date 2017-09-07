package com.bits.sart.model

import java.util.Date;

class SartUser extends User {

	String firstName
	String middleName
	String lastName
	
	String summary
	String position							//	{can be Enum}
	
	GenderTypeEnum gender
	String email
	Address address
	
	LevelOfEducation highestLevelOfEducation
	Double yearsOfExperience
	
	Date dateCreated
	Date lastUpdated
	User createdByUser
	User updatedByUser

	static hasMany = [attachment : Attachment]
	
	static constraints = {
	
		createdByUser nullable:true
		updatedByUser nullable:true
	}
	
}
