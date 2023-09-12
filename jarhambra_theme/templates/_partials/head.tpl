{block name='head_charset'}
    <meta charset="utf-8">
{/block}
{block name='head_ie_compatibility'}
    <meta http-equiv="x-ua-compatible" content="ie=edge">
{/block}

{block name='head_seo'}
    <title>{block name='head_seo_title'}{$page.meta.title}{/block}</title>
    {block name='hook_after_title_tag'}
        {hook h='displayAfterTitleTag'}
    {/block}
    <meta name="description" content="{block name='head_seo_description'}{$page.meta.description}{/block}">
    <meta name="keywords" content="{block name='head_seo_keywords'}{$page.meta.keywords}{/block}">
    {if $page.meta.robots !== 'index'}
        <meta name="robots" content="{$page.meta.robots}">
    {/if}
    {if $page.canonical}
        <link rel="canonical" href="{$page.canonical}">
    {/if}
    {block name='head_hreflang'}
        {foreach from=$urls.alternative_langs item=pageUrl key=code}
            <link rel="alternate" href="{$pageUrl}" hreflang="{$code}">
        {/foreach}
    {/block}

    {block name='head_microdata'}
        {include file="_partials/microdata/head-jsonld.tpl"}
    {/block}

    {block name='head_microdata_special'}{/block}

    {block name='head_pagination_seo'}
        {include file="_partials/pagination-seo.tpl"}
    {/block}

    {block name='head_open_graph'}
        <meta property="og:url" content="{$urls.current_url}"/>
        <meta property="og:site_name" content="{$shop.name}"/>
        {if !isset($product) && $page.page_name != 'product'}
            <meta property="og:type" content="website"/>
            <meta property="og:title" content="{$page.meta.title}"/>
            <meta property="og:description" content="{$page.meta.description}"/>
            <meta property="og:image" content="https://alhambra.nazwa.pl/alhambrasklep/og-image.png"/>
        {/if}

        {if isset($product) && $page.page_name == 'product'}
            <meta property="og:type" content="product"/>
            <meta property="og:title" content="{$product.name}"/>
            <meta property="og:description"
                  content="{$product.description|regex_replace:"/(<p>)|(<\/p>)|(<br \/>)|(<br\/>)/":" "}"/>
            {if $product.cover}
                <meta property="og:image" content="{$product.cover.large.url}">
            {/if}
        {/if}
    {/block}
{/block}

{block name='head_viewport'}
    <meta name="viewport" content="width=device-width, initial-scale=1">
{/block}

{block name='head_icons'}
    <link rel="icon" type="image/vnd.microsoft.icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
    <link rel="shortcut icon" type="image/x-icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
{/block}


{block name='stylesheets'}
    {include file="_partials/stylesheets.tpl" stylesheets=$stylesheets}
{/block}

{block name='javascript_head'}
    {include file="_partials/javascript.tpl" javascript=$javascript.head vars=$js_custom_vars}
{/block}

{literal}
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-195085005-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }

        gtag('js', new Date());

        gtag('config', 'UA-195085005-1');

    </script>
{/literal}

{literal}
    <script type="application/ld+json">
        {
            "@context": "https://schema.org/",
            "@type": "Product",
            "name": "Rating",
            "aggregateRating": {
                "@type": "AggregateRating",
                "ratingValue": "4.9",
                "ratingCount": "20"
            }
        }
    </script>
{/literal}

{block name='hook_header'}
    {$HOOK_HEADER nofilter}
{/block}

{block name='hook_extra'}{/block}
