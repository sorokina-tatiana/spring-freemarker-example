<h1>Blogs</h1>
<#if blogs?has_content>
    <@ui.blogList blogs=blogs/>
<#else>
    No blogs added yet!
</#if>
