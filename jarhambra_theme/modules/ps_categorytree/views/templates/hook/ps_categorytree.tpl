{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

{function name="categories" nodes=[] depth=0}
    {strip}
        {if $nodes|count}
            <ul class="subcategories-list">
                {foreach from=$nodes item=node}
                    <li>
                        <a href="{$node.link}" class="subcategory-name">{$node.name}</a>
                        <div>
                            {categories nodes=$node.children depth=$depth+1}
                        </div>
                    </li>
                {/foreach}
            </ul>
        {/if}
    {/strip}
{/function}

{if $categories.children|@count > 0}
    <div id="subcategories" class="card card-block">
        <h2 class="subcategory-heading">{l s='Subcategories' d='Shop.Theme.Category'}</h2>
        {categories nodes=$categories.children}
    </div>
{/if}
