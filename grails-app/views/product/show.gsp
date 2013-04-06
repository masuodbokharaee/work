
<%@ page import="work.Product" %>
<!DOCTYPE html>
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
        <ckeditor:resources/>
	</head>
	<body>
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="خانه"/></a></li>
				<li><g:link class="list" action="list"><g:message code="لیست محصولات" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="ثبت محصول جدید" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
            <h1>${fieldValue(bean:productInstance, field:'productname')}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.productname}">
				<li class="fieldcontain">
					<span id="productname-label" class="property-label"><g:message code="product.productname.label" default="نام محصول" /></span>

						<span class="property-value" aria-labelledby="productname-label"><g:fieldValue bean="${productInstance}" field="productname"/></span>

				</li>
				</g:if>
			
				<g:if test="${productInstance?.info}">
				<li class="fieldcontain">
					<span id="info-label" class="property-label"><g:message code="product.info.label" default="توضیحات" /></span>
					
						<span class="property-value" aria-labelledby="info-label">${productInstance?.info}</span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.pic}">
				<li class="fieldcontain">
                    <span id="pic-label" class="property-label"><g:message code="product.pic.label" default="عکس" /></span>

                    <img src="${createLink(controller:'product', action:'pic', id: productInstance.id)}" width="95%" />
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productInstance?.id}" />
					<g:link class="edit" action="edit" id="${productInstance?.id}"><g:message code="ویرایش" default="ویرایش" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'حذف', default: 'حذف')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>

	</body>
</html>
