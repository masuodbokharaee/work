<%@ page import="work.Wneed" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'wneed.label', default: 'Wneed')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-wneed" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-wneed" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list wneed">

        <g:if test="${wneedInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="wneed.name.label" default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:link controller="customer" action="show"
                                                                                  id="${wneedInstance?.name?.id}">${wneedInstance?.name?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${wneedInstance?.productname}">
            <li class="fieldcontain">
                <span id="productname-label" class="property-label"><g:message code="wneed.productname.label"
                                                                               default="Productname"/></span>

                <span class="property-value" aria-labelledby="productname-label"><g:link controller="product"
                                                                                         action="show"
                                                                                         id="${wneedInstance?.productname?.id}">${wneedInstance?.productname?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${wneedInstance?.wuneed}">
            <li class="fieldcontain">
                <span id="wuneed-label" class="property-label"><g:message code="wneed.wuneed.label"
                                                                          default="Wuneed"/></span>

                <span class="property-value" aria-labelledby="wuneed-label"><g:fieldValue bean="${wneedInstance}"
                                                                                          field="wuneed"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${wneedInstance?.id}"/>
            <g:link class="edit" action="edit" id="${wneedInstance?.id}"><g:message code="default.button.edit.label"
                                                                                    default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
