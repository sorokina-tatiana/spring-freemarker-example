<#import "macros/ui-library.ftl" as ui/>
<!DOCTYPE html>
<html lang="en">
    <#include "components/html-heads.ftl">
<body>
    <#include "components/nav.ftl">
    <#switch pageType>
    <#case "home">
        <#include "pages/home.ftl">
    <#break>
    <#case "delete">
        <#include "pages/delete.ftl">
    <#break>
    <#case "search">
        <#include "pages/search.ftl">
    <#break>
    <#case "update">
    <#case "add">
        <#include "pages/update.ftl">
    <#break>
    </#switch>
</body>
</html>
