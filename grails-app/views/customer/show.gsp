
<%@ page import="work.Customer" %>
<!DOCTYPE html>
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="خانه"/></a></li>
				<li><g:link class="list" action="list"><g:message code="لیست مشتری" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="ثبت نام" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customer" class="content scaffold-show" role="main">
            <h1>${fieldValue(bean:customerInstance, field:'family')}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
			
				<g:if test="${customerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="customer.name.label" default="نام" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${customerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.family}">
				<li class="fieldcontain">
					<span id="family-label" class="property-label"><g:message code="customer.family.label" default="نام خانوادگی" /></span>
					
						<span class="property-value" aria-labelledby="family-label"><g:fieldValue bean="${customerInstance}" field="family"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.tel}">
				<li class="fieldcontain">
					<span id="tel-label" class="property-label"><g:message code="customer.tel.label" default="تلفن" /></span>
					
						<span class="property-value" aria-labelledby="tel-label"><g:fieldValue bean="${customerInstance}" field="tel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="customer.email.label" default="ایمیل" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${customerInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="customer.address.label" default="آدرس" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${customerInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.namecompany}">
				<li class="fieldcontain">
					<span id="namecompany-label" class="property-label"><g:message code="customer.namecompany.label" default="نام کمپانی" /></span>
					
						<span class="property-value" aria-labelledby="namecompany-label"><g:fieldValue bean="${customerInstance}" field="namecompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.telcompany}">
				<li class="fieldcontain">
					<span id="telcompany-label" class="property-label"><g:message code="customer.telcompany.label" default="تلفن کمپانی" /></span>
					
						<span class="property-value" aria-labelledby="telcompany-label"><g:fieldValue bean="${customerInstance}" field="telcompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${work.Product.list()}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="customer.product.label" default="محصول مورد علاقه" /></span>
					
						<g:each in="${customerInstance.product}" var="s">
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>


				</li>
				</g:if>

				<g:if test="${customerInstance?.whatuneed}">
				<li class="fieldcontain">
					<span id="whatuneed-label" class="property-label"><g:message code="customer.whatuneed.label" default="توضیحات" /></span>
					
						<span class="property-value" aria-labelledby="whatuneed-label"><g:fieldValue bean="${customerInstance}" field="whatuneed"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customerInstance?.id}" />
					<g:link class="edit" action="edit" id="${customerInstance?.id}"><g:message code="ویرایش" default="ویرایش" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'حذف', default: 'حذف')}" onclick="return confirm('${message(code: 'مشتری مورد نظر حذف شود؟', default: 'مشتری مورد نظر حذف شود؟')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
