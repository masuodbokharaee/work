<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>شرکت ....</title>
		<style type="text/css" media="screen">


			#page-body {
				margin: 2em 1em 1.25em 18em;
                direction:rtl;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 1.25em 1.5em;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
                    direction:rtl;
				}

				#page-body h1 {
					margin-top: 0;
                    direction:rtl;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="page-body" role="main">
			<h1>به سایت شرکت ... خوش آمدید</h1>
			<p>اینجا میتوان مختصری درباره شرکت توضیحات داد (دربازه ی ما) و در زیر معرفی محصولات</p>
		</div>
    <div class="homeCell">
        <h3>نام نویسی مشتری</h3>
        <p>
            در اینجا می توانید خود را به ما معرفی کنید و بگویید به چه محصولاتی علاقه دارید و به چه محصولاتی نیاز دارید
        </p>
        <span class="kuttons12">
            <g:link controller="customer" action="list">لیست مشتری ها</g:link>
        </span>
        <span class="kuttons12">
            <g:link  controller="customer" action="create">ثبت نام مشتری</g:link>
        </span>
    </div>
    <div class="homeCell">
        <h3>معرفی محصولات</h3>
        <p>
            در زیر شما میتوانید به لیست محصولات ما وارد شده و با تک تک محصولات ما به طور کامل آشنا شوید
        </p>
        <span class="kuttons12">
            <g:link controller="product" action="list">
                محصولات
            </g:link>
        </span>

    </div>
	</body>
</html>
