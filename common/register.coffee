ReactionCore.registerPackage
  name: 'reaction-payCash'
  provides: ['paymentMethod']
  paymentTemplate: "paypalPaymentForm"
  label: 'PayPal'
  description: 'Accept cash payments. Reaction POS'
  icon: 'fa fa-credit-card'
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
