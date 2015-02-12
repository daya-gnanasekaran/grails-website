<head>
    <meta content="masterv2" name="layout"/>
    <title>Submit a Web Site Using Grails</title>
</head>

<body>

<div id="content" class="content-aside" role="main">

    <g:render template="/community/sideNav"/>

    <section id="main">
        <article>
            <h2><g:message code="website.create.title" /></h2>

            <p><g:message code="website.create.desc" /></p>

            <flash:message flash="${flash}" bean="${webSiteInstance}"/>

            <g:hasErrors bean="${webSiteInstance}">
                <div class="alert alert-error">
                    <g:renderErrors bean="${webSiteInstance}" as="list"/>
                </div>
            </g:hasErrors>

            <g:uploadForm action="save" class="content-form padding-top">
                <input type="hidden" value="${webSiteInstance.id}" name="id" />
                <div class="control-group ${hasErrors(bean: webSiteInstance, field: 'title', 'error')}">
                    <label class="col-sm-2 control-label" for="title"><g:message code="website.title" /></label>
                    <div class="col-sm-10">
                        <g:textField required="required" name="title" value="${webSiteInstance?.title}" class="input-fullsize"/>
                    </div>
                </div>


                <div class="control-group ${hasErrors(bean: webSiteInstance, field: 'shortDescription', 'error')}">
                    <label class="col-sm-2 control-label" for="shortDescription"><g:message code="website.description.short" /></label>
                    <div class="col-sm-10">
                        <g:textField name="shortDescription" value="${webSiteInstance?.shortDescription}" class="input-fullsize"/>
                    </div>
                </div>

                <div class="control-group ${hasErrors(bean: webSiteInstance, field: 'url', 'error')}">
                    <label class="col-sm-2 control-label" for="description"><g:message code="website.description" /></label>
                    <div class="col-sm-10">
                        <g:textArea required="required" cols="30" rows="4" name="description" value="${webSiteInstance?.description}" class="input-fullsize"/>
                    </div>
                </div>

                <div class="control-group ${hasErrors(bean: webSiteInstance, field: 'url', 'error')}">
                    <label class="col-sm-2 control-label" for="url"><g:message code="website.url" /></label>
                    <div class="col-sm-10">
                        <g:field type="url" required="required" name="url" value="${webSiteInstance?.url}" class="input-fullsize"/>
                    </div>
                </div>

                <div class="control-group">
                    <label class="col-sm-2 control-label"><g:message code="website.previewImage" /></label>

                    <div class="col-sm-10">
                        <input type="file" name="preview"/>
                        <div class="hint"><g:message code="website.previewImage.format" /></div>
                    </div>
                </div>

                <div class="form-group"><div class="col-sm-offset-2 col-sm-10">
                    <g:submitButton name="submit" value="${g.message(code: webSiteInstance?.id ? "website.submit" : "website.approval")}" class="btn"/>
                </div></div>

            </g:uploadForm>

        </article>
    </section>
</div>

</body>
