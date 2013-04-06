<%@ page import="work.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="customer.name.label" default="نام" />
		
	</label>
	<g:textField name="name" value="${customerInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'family', 'error')} ">
	<label for="family">
		<g:message code="customer.family.label" default="نام خانوادگی" />
		
	</label>
	<g:textField name="family" value="${customerInstance?.family}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'tel', 'error')} ">
	<label for="tel">
		<g:message code="customer.tel.label" default="تلفن" />
		
	</label>
	<g:textField name="tel" value="${customerInstance?.tel}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="customer.email.label" default="ایمیل" />
		
	</label>
	<g:textField name="email" value="${customerInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="customer.address.label" default="آدرس" />
		
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="3000" value="${customerInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'namecompany', 'error')} ">
	<label for="namecompany">
		<g:message code="customer.namecompany.label" default="نام شرکت" />
		
	</label>
	<g:textField name="namecompany" value="${customerInstance?.namecompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'telcompany', 'error')} ">
	<label for="telcompany">
		<g:message code="customer.telcompany.label" default="تلفن شرکت" />
		
	</label>
	<g:textField name="telcompany" value="${customerInstance?.telcompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'product', 'error')} ">
	<label for="product">
		<g:message code="customer.product.label" default="محصول مورد علاقه" />

	</label>

   <g:each in="${work.Product.list()}" var="s">        <p> ${s?.encodeAsHTML()}</p>
        <img src="${createLink(controller:'product', action:'pic', id: s.id)}" width="50px" height="50px" />

                <g:checkBox name="selected_${s.id}" controller="product" action="show"  > </g:checkBox>
       <g:textArea name="selected_${s.id}" controller='wneed' action='show' cols="20" rows="5" maxlength="1000" value="${wneedInstance?.wneed}"/>


    </g:each>

</div>


<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'whatuneed', 'error')} ">
	<label for="whatuneed">
		<g:message code="customer.whatuneed.label" default="توضیحات" />

	</label>
	<g:textArea name="whatuneed" cols="40" rows="5" maxlength="5000" value="${customerInstance?.whatuneed}"/>
</div>

