<h1>Blog deletion</h1>
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
