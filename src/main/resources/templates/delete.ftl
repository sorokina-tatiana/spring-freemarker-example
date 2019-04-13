<!DOCTYPE html>
<html>
<body>
<h3>Blog deletion</h3>
<a href="http://localhost:8080/">Home</a>
<a href="http://localhost:8080/blog/search/">Search blog</a>
<a href="http://localhost:8080/add/">Add blog</a>
<fieldset>
    <#if blog?has_content>
    <legend>Delete blog ID "${blog.getId()}"</legend>
        <form name="blog" method="post">
            <p>title: ${blog.getTitle()}</p>
            <p>content: ${blog.getContent()}</p>
            <input type="submit" value="Delete"/>
        </form>
    </#if>
    <#if deletion!false>
        <p style="color:green">Blog deleted successfully</p>
    </#if>
</fieldset>
</body>
</html>