package com.bits.sart.model

import java.util.Date;

class Research extends AbstractDomain {

	ResearchCategory researchCategory
	
	Client client
	
	String title
	
	String description
	
	String sampleSize
	
	String responsibility
	
	Methodology methodology
	String methodologyDescription
	
	Duration duration
	
	Double budget
	
	String softwareUsed					//{can be changed to List<SoftwareUsed>}
	
	SartUser projectManager				//{must be a registered user}
	
	String researchReferences					//{needs description}
	
	String externalCollaborators
	
	String remark
	
	String lessonsLearned				//{can be LessonsLearned lessonsLearned}
	
/*	List<City> geographicalCoverage
	
	List<Researcher> researchers
	
	List<Attachment> attachments*/
	
	Date dateCreated
	Date lastUpdated
	User createdByUser
	User updatedByUser
	
	static hasMany = [geographicalCoverage : City,
					  researchers: Researcher,
					  attachments: Attachment]
	
//	static searchable = [ except: ['version', 'dateCreated', 'lastUpdated'] ]
	
	static constraints = {
		
		budget nullable:true
		researchReferences nullable:true
		externalCollaborators nullable:true
		remark nullable:true
		lessonsLearned nullable:true
		
		createdByUser nullable:true
		updatedByUser nullable:true
	}

}
