<%@ page import="work.Wneed" %>



<div class="fieldcontain ${hasErrors(bean: wneedInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="wneed.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="name" name="name.id" from="${work.Customer.list()}" optionKey="id" required=""
              value="${wneedInstance?.name?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: wneedInstance, field: 'productname', 'error')} required">
    <label for="productname">
        <g:message code="wneed.productname.label" default="Productname"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="productname" name="productname.id" from="${work.Product.list()}" optionKey="id" required=""
              value="${wneedInstance?.productname?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: wneedInstance, field: 'wuneed', 'error')} ">
    <label for="wuneed">
        <g:message code="wneed.wuneed.label" default="Wuneed"/>

    </label>
    <g:textArea name="wuneed" cols="40" rows="5" maxlength="100000" value="${wneedInstance?.wuneed}"/>
</div>

