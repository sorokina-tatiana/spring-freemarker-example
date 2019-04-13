<!DOCTYPE html>
<html>
<body>
<h3>Adding new blog</h3>
<a href="http://localhost:8080/">Home</a>
<a href="http://localhost:8080/blog/search/">Search blog</a>
<fieldset>
    <legend>Add new blog</legend>
    <form name="blog" method="post">
        Title: <input type="text" name="title" /> <br/>
        Content: <input type="text" name="content" /> <br/>
        <input type="submit" value="Save" />
        </form>
        <#if validationError!false>
            <p style="color:red">All fields should be filled</p>
        <#else>
            <#if validationError??>
                <p style="color:green">New blog added successfully</p>
            </#if>
        </#if>
</fieldset>
<#if blog?has_content>
    <p>id: ${blog.getId()}</p>
    <p>title: ${blog.getTitle()}</p>
    <p>content: ${blog.getContent()}</p>
</#if>
</body>
</html>