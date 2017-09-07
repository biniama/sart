
<%@ page import="com.bits.sart.model.Research" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'research.label', default: 'Research')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-research" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-research" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list research">
			
				<g:if test="${researchInstance?.budget}">
				<li class="fieldcontain">
					<span id="budget-label" class="property-label"><g:message code="research.budget.label" default="Budget" /></span>
					
						<span class="property-value" aria-labelledby="budget-label"><g:fieldValue bean="${researchInstance}" field="budget"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.researchReferences}">
				<li class="fieldcontain">
					<span id="researchReferences-label" class="property-label"><g:message code="research.researchReferences.label" default="Research References" /></span>
					
						<span class="property-value" aria-labelledby="researchReferences-label"><g:fieldValue bean="${researchInstance}" field="researchReferences"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.externalCollaborators}">
				<li class="fieldcontain">
					<span id="externalCollaborators-label" class="property-label"><g:message code="research.externalCollaborators.label" default="External Collaborators" /></span>
					
						<span class="property-value" aria-labelledby="externalCollaborators-label"><g:fieldValue bean="${researchInstance}" field="externalCollaborators"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.remark}">
				<li class="fieldcontain">
					<span id="remark-label" class="property-label"><g:message code="research.remark.label" default="Remark" /></span>
					
						<span class="property-value" aria-labelledby="remark-label"><g:fieldValue bean="${researchInstance}" field="remark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.lessonsLearned}">
				<li class="fieldcontain">
					<span id="lessonsLearned-label" class="property-label"><g:message code="research.lessonsLearned.label" default="Lessons Learned" /></span>
					
						<span class="property-value" aria-labelledby="lessonsLearned-label"><g:fieldValue bean="${researchInstance}" field="lessonsLearned"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.createdByUser}">
				<li class="fieldcontain">
					<span id="createdByUser-label" class="property-label"><g:message code="research.createdByUser.label" default="Created By User" /></span>
					
						<span class="property-value" aria-labelledby="createdByUser-label"><g:link controller="user" action="show" id="${researchInstance?.createdByUser?.id}">${researchInstance?.createdByUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.updatedByUser}">
				<li class="fieldcontain">
					<span id="updatedByUser-label" class="property-label"><g:message code="research.updatedByUser.label" default="Updated By User" /></span>
					
						<span class="property-value" aria-labelledby="updatedByUser-label"><g:link controller="user" action="show" id="${researchInstance?.updatedByUser?.id}">${researchInstance?.updatedByUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.attachments}">
				<li class="fieldcontain">
					<span id="attachments-label" class="property-label"><g:message code="research.attachments.label" default="Attachments" /></span>
					
						<g:each in="${researchInstance.attachments}" var="a">
						<span class="property-value" aria-labelledby="attachments-label"><g:link controller="attachment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.client}">
				<li class="fieldcontain">
					<span id="client-label" class="property-label"><g:message code="research.client.label" default="Client" /></span>
					
						<span class="property-value" aria-labelledby="client-label"><g:link controller="client" action="show" id="${researchInstance?.client?.id}">${researchInstance?.client?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="research.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${researchInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="research.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${researchInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="research.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:link controller="duration" action="show" id="${researchInstance?.duration?.id}">${researchInstance?.duration?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.geographicalCoverage}">
				<li class="fieldcontain">
					<span id="geographicalCoverage-label" class="property-label"><g:message code="research.geographicalCoverage.label" default="Geographical Coverage" /></span>
					
						<g:each in="${researchInstance.geographicalCoverage}" var="g">
						<span class="property-value" aria-labelledby="geographicalCoverage-label"><g:link controller="city" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="research.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${researchInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.methodology}">
				<li class="fieldcontain">
					<span id="methodology-label" class="property-label"><g:message code="research.methodology.label" default="Methodology" /></span>
					
						<span class="property-value" aria-labelledby="methodology-label"><g:link controller="methodology" action="show" id="${researchInstance?.methodology?.id}">${researchInstance?.methodology?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.methodologyDescription}">
				<li class="fieldcontain">
					<span id="methodologyDescription-label" class="property-label"><g:message code="research.methodologyDescription.label" default="Methodology Description" /></span>
					
						<span class="property-value" aria-labelledby="methodologyDescription-label"><g:fieldValue bean="${researchInstance}" field="methodologyDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.projectManager}">
				<li class="fieldcontain">
					<span id="projectManager-label" class="property-label"><g:message code="research.projectManager.label" default="Project Manager" /></span>
					
						<span class="property-value" aria-labelledby="projectManager-label"><g:link controller="sartUser" action="show" id="${researchInstance?.projectManager?.id}">${researchInstance?.projectManager?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.researchCategory}">
				<li class="fieldcontain">
					<span id="researchCategory-label" class="property-label"><g:message code="research.researchCategory.label" default="Research Category" /></span>
					
						<span class="property-value" aria-labelledby="researchCategory-label"><g:link controller="researchCategory" action="show" id="${researchInstance?.researchCategory?.id}">${researchInstance?.researchCategory?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.researchers}">
				<li class="fieldcontain">
					<span id="researchers-label" class="property-label"><g:message code="research.researchers.label" default="Researchers" /></span>
					
						<g:each in="${researchInstance.researchers}" var="r">
						<span class="property-value" aria-labelledby="researchers-label"><g:link controller="researcher" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.responsibility}">
				<li class="fieldcontain">
					<span id="responsibility-label" class="property-label"><g:message code="research.responsibility.label" default="Responsibility" /></span>
					
						<span class="property-value" aria-labelledby="responsibility-label"><g:fieldValue bean="${researchInstance}" field="responsibility"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.sampleSize}">
				<li class="fieldcontain">
					<span id="sampleSize-label" class="property-label"><g:message code="research.sampleSize.label" default="Sample Size" /></span>
					
						<span class="property-value" aria-labelledby="sampleSize-label"><g:fieldValue bean="${researchInstance}" field="sampleSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.softwareUsed}">
				<li class="fieldcontain">
					<span id="softwareUsed-label" class="property-label"><g:message code="research.softwareUsed.label" default="Software Used" /></span>
					
						<span class="property-value" aria-labelledby="softwareUsed-label"><g:fieldValue bean="${researchInstance}" field="softwareUsed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${researchInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="research.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${researchInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${researchInstance?.id}" />
					<g:link class="edit" action="edit" id="${researchInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
