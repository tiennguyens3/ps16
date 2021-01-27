{literal}
    <style>
        .line {
            text-decoration : underline;
        }
    </style>
{/literal}

{if $status == 'ok'}
    <p> 
        Your order is comfirmed.<br>
        Your order reference is : {$reference|escape:'htmlall':'UTF-8'}.<br />
        You will receive an order confirmation email with details of your order and a link to track its progress.<br />
        Click <a class="line" href="{$link->getPageLink('pdf-invoice',true)|escape:'htmlall':'UTF-8'}&id_order={$id_order|escape:'htmlall':'UTF-8'}">here</a> to print a copy of your order confirmation.
    </p>
{/if}