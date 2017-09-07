package com.bits.sart.model

class Attachment extends AbstractDomain {

	byte[] fileName
	
	String type 			// {questionnaire, proposal, report} {can be Type type}
	
	String description
	
//	static belongsTo = [sartUser : SartUser, research : Research]
	
}
