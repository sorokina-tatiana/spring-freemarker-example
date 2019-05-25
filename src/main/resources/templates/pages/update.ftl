<h1>
    <#if pageType=="add">Add new blog
    <#else>Blog updating
    </#if>
</h1>
<fieldset>
    <form name="blog" method="post">
        Title: <input type="text" name="title" <#if blog??> value="${blog.getTitle()}</#if>"/>
        Content: <input type="text" name="content" <#if blog??> value="${blog.getContent()}" </#if>/>
        <input type="submit" value="Save" />
        </form>
        <#if validationError!false>
            <p style="color:red">${errorText}</p>
        <#else>
            <#if validationError??>
                <p style="color:green">${message}</p>
            </#if>
        </#if>
</fieldset>
<#if updatedBlog?has_content>
   <@ui.blogItem blog=updatedBlog/>
</#if>
