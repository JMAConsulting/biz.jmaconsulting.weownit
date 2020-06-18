{literal}
<script type="text/javascript">
CRM.$(function($) {
  var onetimeprice = "price_4";
  var otherprice = "price_5";
  var onetimenone = $('input[name=price_4][value=0]');
  var fgifttype = "custom_13";

  onetimenone.hide();

  $('#' + otherprice).on('click', function(e) {
    e.preventDefault();
    display(0);
    $('.crm-section .donate-section .highlight > input[type="radio"]').prop('checked', false);
    $('.crm-section .donate-section .highlight > input[type="radio"]').trigger('change', false);
    var amount = $(this).val() ? $(this).val() : 0;
    var totalFormattedFee = CRM.formatMoney(amount);
    cj('#pricevalue').html(totalFormattedFee);
    $('#total_amount').val( amount );
    $('#pricevalue').data('raw-total', amount).trigger('change');
  });

  $('input[name="' + onetimeprice + '"]').on('click', function(e) {
    $('#' + otherprice).val('');
  });


  $('input[name="' + onetimeprice + '"]').css('display', 'none');

  $('input[name="' + onetimeprice + '"]+label').addClass('button-block');


  $('.amount_monthly-section').hide();
  $('.amount_monthly-section > .label').hide();
  $('.amount_one_time-section').hide();
  $('.amount_one_time-section > .label').hide();
  $('#' + otherprice).hide();

  var gifttype = $('input[name=gift_type]:checked').val();
  hideShow(gifttype);

});
</script>
{/literal}
