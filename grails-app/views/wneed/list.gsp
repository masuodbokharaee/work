<%@ page import="work.Wneed" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'wneed.label', default: 'Wneed')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-wneed" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-wneed" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <th><g:message code="wneed.name.label" default="Name"/></th>

            <th><g:message code="wneed.productname.label" default="Productname"/></th>

            <g:sortableColumn property="wuneed" title="${message(code: 'wneed.wuneed.label', default: 'Wuneed')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${wneedInstanceList}" status="i" var="wneedInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${wneedInstance.id}">${fieldValue(bean: wneedInstance, field: "name")}</g:link></td>

                <td>${fieldValue(bean: wneedInstance, field: "productname")}</td>

                <td>${fieldValue(bean: wneedInstance, field: "wuneed")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${wneedInstanceTotal}"/>
    </div>
</div>
</body>
</html>
