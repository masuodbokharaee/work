
<%@ page import="work.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="خانه"/></a></li>
				<li><g:link class="create" action="create"><g:message code="ثبت نام" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customer" class="content scaffold-list" role="main">
			<h1><g:message code="لیست مشتری" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'customer.name.label', default: 'نام')}" />
					
						<g:sortableColumn property="family" title="${message(code: 'customer.family.label', default: 'نام خانوادگی')}" />
					
						<g:sortableColumn property="namecompany" title="${message(code: 'customer.namecompany.label', default: 'نام شرکت')}" />

                        <g:sortableColumn property="email" title="${message(code: 'customer.email.label', default: 'ایمیل')}" />

                        <g:sortableColumn property="product" title="${message(code: 'customer.product.label', default: 'محصول مورد علاقه')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerInstanceList}" status="i" var="customerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerInstance.id}">${fieldValue(bean: customerInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: customerInstance, field: "family")}</td>
					
						<td>${fieldValue(bean: customerInstance, field: "namecompany")}</td>

                        <td>${fieldValue(bean: customerInstance, field: "email")}</td>

                        <td>${fieldValue(bean: customerInstance, field: "product")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
