<%@ page import="work.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="خانه"/></a></li>
				<li><g:link class="list" action="list"><g:message code="لیست مشتری" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="ثبت نام" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-customer" class="content scaffold-edit" role="main">
			<h1><g:message code="ویرایش مشتری" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${customerInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${customerInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${customerInstance?.id}" />
				<g:hiddenField name="version" value="${customerInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'ذخیره', default: 'ذخیره')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'حذف', default: 'حذف')}" formnovalidate="" onclick="return confirm('${message(code: 'مشتری مورد نظر خذف شود؟', default: 'مشتری مورد نظر حذف شود؟')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
