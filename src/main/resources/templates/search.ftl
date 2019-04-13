<!DOCTYPE html>
<html>
<body>
<h3>Search page</h3>
<a href="http://localhost:8080/">Home</a>
<a href="http://localhost:8080/add/">Add blog</a>
<fieldset>
    <legend>Search a blog</legend>
    <form>
        Text for search: <input type="text" name="text"/> <br/>
        <input type="submit" value="Search" />
    </form>
</fieldset>
<#if blogs?has_content>
    <ul>
        <#list blogs as blog>
        <li>
            <p>id: ${blog.getId()}</p>
            <p>title: ${blog.getTitle()}</p>
            <p>content: ${blog.getContent()}</p>
        </li>
    </#list>
    </ul>
<#else>
    <#if blogs??>
        No blogs found!
    </#if>
</#if>
</body>
</html>