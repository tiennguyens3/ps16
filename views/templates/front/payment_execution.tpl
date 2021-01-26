{capture name=path}
    <a href="{$link->getPageLink('order', true, NULL, "step=3")|escape:'html':'UTF-8'}" title="{l s='Go back to the Checkout' mod='waave_pg'}">{l s='Checkout' mod='waave_pg'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='Waave Payment Gateway' mod='waave_pg'}
{/capture}

<h1 class="page-heading">{l s='Order summary' mod='waave_pg'}</h1>

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

<h3 class="page-subheading">{l s='Waave Payment Gateway' mod='waave_pg'}</h3>
<form action="{$actionUrl}" method="get" id="waave_payment_form">
    <input type="hidden" name="access_key" value="{$accessKey}">
    <input type="hidden" name="return_url" value="{$returnUrl}">
    <input type="hidden" name="cancel_url" value="{$cancelUrl}">
    <input type="hidden" name="callback_url" value="{$callbackUrl}">
    <input type="hidden" name="amount" value="{$amount}">
    <input type="hidden" name="reference_id" value="{$referenceId}">
    <input type="hidden" name="currency" value="USD">
    <input type="hidden" name="venue_id" value="{$venueId}">
</form>

<p class="cheque-indent"><strong class="dark">{l s="Now, you just need to proceed the payment and do what you need to do."}</strong></p>

<script type='text/javascript' src="{$waavePgJsUrl|escape:'htmlall':'UTF-8'}"></script>