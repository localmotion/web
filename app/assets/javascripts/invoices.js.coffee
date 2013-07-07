$ ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  invoice.setupPaymentForm()
  
invoice =
  setupPaymentForm: ->
    $('#billing-form').submit (event) ->
      $('input[type=submit]').attr('disabled', true)
      if invoice.billingInformationInvalid()
        false
      else 
        if $('#card_number').val().length
          invoice.processCard()
          false
        else
          invoice.error("Please provide a credit card number")
          false
      
  processCard: ->
    card =
      number: $('#card_number').val()
      cvc: $('#cvc').val()
      expYear: $('#card_year').val()
      expMonth: $('#card_month').val()
      
    Stripe.createToken(card, invoice.handleResponse)
    
  handleResponse: (status, response) ->
    if status == 200
      $('#stripe_token').val(response.id)
      $('.uceem-form')[0].submit()
    else
      invoice.error(response.error.message)
      
  billingInformationInvalid: ->
    false
    
  error: (msg) ->
    alert(msg)