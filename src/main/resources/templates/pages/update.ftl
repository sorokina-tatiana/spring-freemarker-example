<h1>Blog updating</h1>
<fieldset>
    <legend>Update blog ID "${blog.getId()}"</legend>
    <form name="blog" method="post">
        Title: <input type="text" name="title" value="${blog.getTitle()}"/>
        Content: <input type="text" name="content" value="${blog.getContent()}"/>
        <input type="submit" value="Save" />
        </form>
        <#if validationError!false>
            <p style="color:red">All fields should be filled</p>
        <#else>
            <#if validationError??>
                <p style="color:green">Blog updated successfully</p>
            </#if>
        </#if>
</fieldset>
<#if updatedBlog?has_content>
   <@ui.blogItem blog=updatedBlog/>
</#if>
