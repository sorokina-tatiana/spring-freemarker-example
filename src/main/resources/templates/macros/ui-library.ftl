<#macro blogItem blog>
    <fieldset>
        <p>id: ${blog.getId()}</p>
        <p>title: ${blog.getTitle()}</p>
        <p>content: ${blog.getContent()}</p>
        <a class="button" href="http://localhost:8080/update/${blog.getId()}">Update</a>
        <a class="button button--danger" href="http://localhost:8080/delete/${blog.getId()}">Delete</a>
    </fieldset>
</#macro>

<#macro blogList blogs>
    <#list blogs as blog>
        <@blogItem blog=blog/>
    </#list>
</#macro>
