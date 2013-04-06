<%@ page import="work.Product" %>
<ckeditor:resources/>


<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productname', 'error')} ">
	<label for="productname">
		<g:message code="product.productname.label" default="نام محصول" />
		
	</label>
	<g:textField name="productname" value="${productInstance?.productname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'info', 'error')} ">
	<label for="info">
		<g:message code="product.info.label" default="توضیحات" />

	</label>
    <ckeditor:editor id="cedit" name="info" height="400px" width="100%">
        ${initialValue}
    </ckeditor:editor>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'pic', 'error')} ">
	<label for="pic">
		<g:message code="product.pic.label" default="عکس از محصول" />
		
	</label>
	<input type="file" id="pic" name="pic" />
</div>


