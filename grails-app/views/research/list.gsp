
<%@ page import="com.bits.sart.model.Research" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'research.label', default: 'Research')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-research" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-research" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="budget" title="${message(code: 'research.budget.label', default: 'Budget')}" />
					
						<g:sortableColumn property="researchReferences" title="${message(code: 'research.researchReferences.label', default: 'Research References')}" />
					
						<g:sortableColumn property="externalCollaborators" title="${message(code: 'research.externalCollaborators.label', default: 'External Collaborators')}" />
					
						<g:sortableColumn property="remark" title="${message(code: 'research.remark.label', default: 'Remark')}" />
					
						<g:sortableColumn property="lessonsLearned" title="${message(code: 'research.lessonsLearned.label', default: 'Lessons Learned')}" />
					
						<th><g:message code="research.createdByUser.label" default="Created By User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${researchInstanceList}" status="i" var="researchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${researchInstance.id}">${fieldValue(bean: researchInstance, field: "budget")}</g:link></td>
					
						<td>${fieldValue(bean: researchInstance, field: "researchReferences")}</td>
					
						<td>${fieldValue(bean: researchInstance, field: "externalCollaborators")}</td>
					
						<td>${fieldValue(bean: researchInstance, field: "remark")}</td>
					
						<td>${fieldValue(bean: researchInstance, field: "lessonsLearned")}</td>
					
						<td>${fieldValue(bean: researchInstance, field: "createdByUser")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${researchInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
