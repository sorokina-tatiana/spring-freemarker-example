<h1>Search page</h1>
<fieldset>
    <legend>Search a blog</legend>
    <form>
        Text for search: <input type="text" name="text"/> <br/>
        <input type="submit" value="Search" />
    </form>
</fieldset>
<#if blogs?has_content>
    <@ui.blogList blogs=blogs/>
<#else>
    <#if blogs??>
        No blogs found!
    </#if>
</#if>
