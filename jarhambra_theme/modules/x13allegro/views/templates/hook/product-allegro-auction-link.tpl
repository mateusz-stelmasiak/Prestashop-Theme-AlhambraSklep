{if version_compare($smarty.const._PS_VERSION_, '1.7.0.0', '>')}
    {if isset($href) && !empty($href)}
        <div class="payment_methods">
            <span>{l s='Korzystasz z Allegro?'}</span>
            <div class="allegro_smart">
                <img src='https://alhambra.nazwa.pl/alhambrasklep/cart_small.png' alt='Cart icon' width='160'
                     height='134'/>
                <div>
                    <h3 style="font-size: 1.5rem;color:#422779">Bądź</h3>
                    <img src="https://alhambra.nazwa.pl/alhambrasklep/smart_transparent.png" alt="smart icon" width='300'
                         height='81'/>
                    <div class="x13allegro-auction-link" style="margin-top: 10px;">
                        <img src="{$allegro_img}" style="float: left; padding: 2px 4px 0 0;"><a href="{$href}" target="_blank" rel="nofollow">{l s='Zobacz na Allegro' mod='x13allegro'}</a>
                    </div>
                </div>
            </div>
        </div>
    {/if}
{else}
    <style>
        .x13allegro-auction-link a:before {
            content: url({$allegro_img});
        }
    </style>
    <div class="payment_methods">
        <span>{l s='Korzystasz z Allegro?'}</span>
        <div class="allegro_smart">
            <img src='https://alhambra.nazwa.pl/alhambrasklep/cart_small.png' alt='Cart icon' width='160'
                 height='134'/>
            <div>
                <h3 style="font-size: 1.5rem;color:#422779">Bądź</h3>
                <img src="https://alhambra.nazwa.pl/alhambrasklep/smart_transparent.png" alt="smart icon" width='300'
                     height='81'/>
                <li class="x13allegro-auction-link" style="display: none;">
                    <a href="#" target="_blank" rel="nofollow" data-controller="{$link->getModuleLink('x13allegro', 'ajax')}">{l s='Zobacz na Allegro' mod='x13allegro'}</a>
                </li>
            </div>
        </div>
    </div>

{/if}
