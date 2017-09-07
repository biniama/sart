<%@ page import="com.bits.sart.model.Research" %>



<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'budget', 'error')} ">
	<label for="budget">
		<g:message code="research.budget.label" default="Budget" />
		
	</label>
	<g:field type="number" name="budget" value="${fieldValue(bean: researchInstance, field: 'budget')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'researchReferences', 'error')} ">
	<label for="researchReferences">
		<g:message code="research.researchReferences.label" default="Research References" />
		
	</label>
	<g:textField name="researchReferences" value="${researchInstance?.researchReferences}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'externalCollaborators', 'error')} ">
	<label for="externalCollaborators">
		<g:message code="research.externalCollaborators.label" default="External Collaborators" />
		
	</label>
	<g:textField name="externalCollaborators" value="${researchInstance?.externalCollaborators}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="research.remark.label" default="Remark" />
		
	</label>
	<g:textField name="remark" value="${researchInstance?.remark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'lessonsLearned', 'error')} ">
	<label for="lessonsLearned">
		<g:message code="research.lessonsLearned.label" default="Lessons Learned" />
		
	</label>
	<g:textField name="lessonsLearned" value="${researchInstance?.lessonsLearned}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'createdByUser', 'error')} ">
	<label for="createdByUser">
		<g:message code="research.createdByUser.label" default="Created By User" />
		
	</label>
	<g:select id="createdByUser" name="createdByUser.id" from="${com.bits.sart.model.User.list()}" optionKey="id" value="${researchInstance?.createdByUser?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'updatedByUser', 'error')} ">
	<label for="updatedByUser">
		<g:message code="research.updatedByUser.label" default="Updated By User" />
		
	</label>
	<g:select id="updatedByUser" name="updatedByUser.id" from="${com.bits.sart.model.User.list()}" optionKey="id" value="${researchInstance?.updatedByUser?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'attachments', 'error')} ">
	<label for="attachments">
		<g:message code="research.attachments.label" default="Attachments" />
		
	</label>
	<g:select name="attachments" from="${com.bits.sart.model.Attachment.list()}" multiple="multiple" optionKey="id" size="5" value="${researchInstance?.attachments*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'client', 'error')} required">
	<label for="client">
		<g:message code="research.client.label" default="Client" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="client" name="client.id" from="${com.bits.sart.model.Client.list()}" optionKey="id" required="" value="${researchInstance?.client?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="research.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${researchInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'duration', 'error')} required">
	<label for="duration">
		<g:message code="research.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="duration" name="duration.id" from="${com.bits.sart.model.Duration.list()}" optionKey="id" required="" value="${researchInstance?.duration?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'geographicalCoverage', 'error')} ">
	<label for="geographicalCoverage">
		<g:message code="research.geographicalCoverage.label" default="Geographical Coverage" />
		
	</label>
	<g:select name="geographicalCoverage" from="${com.bits.sart.model.City.list()}" multiple="multiple" optionKey="id" size="5" value="${researchInstance?.geographicalCoverage*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'methodology', 'error')} required">
	<label for="methodology">
		<g:message code="research.methodology.label" default="Methodology" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="methodology" name="methodology.id" from="${com.bits.sart.model.Methodology.list()}" optionKey="id" required="" value="${researchInstance?.methodology?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'methodologyDescription', 'error')} ">
	<label for="methodologyDescription">
		<g:message code="research.methodologyDescription.label" default="Methodology Description" />
		
	</label>
	<g:textField name="methodologyDescription" value="${researchInstance?.methodologyDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'projectManager', 'error')} required">
	<label for="projectManager">
		<g:message code="research.projectManager.label" default="Project Manager" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="projectManager" name="projectManager.id" from="${com.bits.sart.model.SartUser.list()}" optionKey="id" required="" value="${researchInstance?.projectManager?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'researchCategory', 'error')} required">
	<label for="researchCategory">
		<g:message code="research.researchCategory.label" default="Research Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="researchCategory" name="researchCategory.id" from="${com.bits.sart.model.ResearchCategory.list()}" optionKey="id" required="" value="${researchInstance?.researchCategory?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'researchers', 'error')} ">
	<label for="researchers">
		<g:message code="research.researchers.label" default="Researchers" />
		
	</label>
	<g:select name="researchers" from="${com.bits.sart.model.Researcher.list()}" multiple="multiple" optionKey="id" size="5" value="${researchInstance?.researchers*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'responsibility', 'error')} ">
	<label for="responsibility">
		<g:message code="research.responsibility.label" default="Responsibility" />
		
	</label>
	<g:textField name="responsibility" value="${researchInstance?.responsibility}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'sampleSize', 'error')} ">
	<label for="sampleSize">
		<g:message code="research.sampleSize.label" default="Sample Size" />
		
	</label>
	<g:textField name="sampleSize" value="${researchInstance?.sampleSize}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'softwareUsed', 'error')} ">
	<label for="softwareUsed">
		<g:message code="research.softwareUsed.label" default="Software Used" />
		
	</label>
	<g:textField name="softwareUsed" value="${researchInstance?.softwareUsed}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: researchInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="research.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${researchInstance?.title}"/>
</div>

