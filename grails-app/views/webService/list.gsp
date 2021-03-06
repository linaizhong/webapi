
<%@ page import="au.org.ala.webapi.WebService" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'webService.label', default: 'WebService')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-webService" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <ul class="breadcrumb" role="navigation">
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a> <span class="divider"><i class="fa fa-arrow-right"></i></span></li>
            <li class="active"><g:message code="default.list.label" args="[entityName]" /></li>
        </ul>
		<div id="list-webService" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /> - ${webServiceInstanceTotal} listed
                <g:link class="create btn btn-primary pull-right" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
            </h1>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'webService.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'webService.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'webService.url.label', default: 'Url')}" />

                        <g:sortableColumn property="app" title="${message(code: 'webService.url.label', default: 'App')}" />
					
						<g:sortableColumn property="httpMethod" title="${message(code: 'webService.httpMethod.label', default: 'Http Method')}" />
					
						<g:sortableColumn property="deprecated" title="${message(code: 'webService.deprecated.label', default: 'Deprecated')}" />
					
						<g:sortableColumn property="outputFormat" title="${message(code: 'webService.outputFormat.label', default: 'Output Format')}" />

                        <th>Edit</th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${webServiceInstanceList}" status="i" var="webServiceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${webServiceInstance.id}">${fieldValue(bean: webServiceInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: webServiceInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: webServiceInstance, field: "url")}</td>

                        <td>${fieldValue(bean: webServiceInstance, field: "app")}</td>
					
						<td>${fieldValue(bean: webServiceInstance, field: "httpMethod")}</td>
					
						<td><g:formatBoolean boolean="${webServiceInstance.deprecated}" /></td>
					
						<td>${fieldValue(bean: webServiceInstance, field: "outputFormat")}</td>

                        <td>
                            <g:link class="btn btn-mini" controller="webService" action="edit" id="${webServiceInstance.id}">Edit&nbsp;details</g:link>
                            <g:link class="btn btn-mini"  controller="example" action="createForWS" id="${webServiceInstance.id}">Add&nbsp;example</g:link>
                            <g:link class="btn btn-mini"  controller="webService" action="create" id="${webServiceInstance.id}">Create&nbsp;copy</g:link>
                        </td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${webServiceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
