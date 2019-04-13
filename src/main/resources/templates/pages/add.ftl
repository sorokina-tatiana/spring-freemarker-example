<h1>Add new blog</h1>
<fieldset>
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
    <@ui.blogItem blog=blog/>
</#if>
