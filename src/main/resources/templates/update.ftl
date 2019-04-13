<!DOCTYPE html>
<html>
<body>
<h3>Blog updating</h3>
<a href="http://localhost:8080/">Home</a>
<a href="http://localhost:8080/blog/search/">Search blog</a>
<a href="http://localhost:8080/add/">Add blog</a>
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
    <p>id: ${updatedBlog.getId()}</p>
    <p>title: ${updatedBlog.getTitle()}</p>
    <p>content: ${updatedBlog.getContent()}</p>
</#if>
</body>
</html>