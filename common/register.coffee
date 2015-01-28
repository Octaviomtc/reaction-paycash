ReactionCore.registerPackage
  name: 'reaction-paycash'
  provides: ['paymentMethod']
  paymentTemplate: "paypalPaymentForm"
  label: 'PayPal'
  description: 'Accept cash payments'
  icon: 'fa fa-paypal'
  settingsRoute: 'paypal'
  defaultSettings:
    mode: false
    client_id: ""
    client_secret: ""
  priority: '2'
  hasWidget: true
  autoEnable: false
  shopPermissions: [
    {
      label: "Pay Cash"
      permission: "dashboard/payments"
      group: "Shop Settings"
    }
  ]
