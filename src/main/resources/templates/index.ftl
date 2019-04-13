<!DOCTYPE html>
<html>
<body>
<h3>Welcome!</h3>
<a href="http://localhost:8080/blog/search/">Search blog</a>
<a href="http://localhost:8080/add/">Add blog</a>
<#if blogs?has_content>
        <#list blogs as blog>
            <fieldset>
                <p>id: ${blog.getId()}</p>
                <p>title: ${blog.getTitle()}</p>
                <p>content: ${blog.getContent()}</p>
                <form action="http://localhost:8080/update/${blog.getId()}">
                    <input type="submit" value="Update" />
                </form>
                <form action="http://localhost:8080/delete/${blog.getId()}">
                    <input type="submit" value="Delete" />
                </form>
            </fieldset>
        </#list>
    </ul>
<#else>
    No blogs added yet!
</#if>
</body>
</html>