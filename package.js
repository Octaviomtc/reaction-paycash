Package.describe({
  summary: "Reaction PayCash - PayCash payments for Reaction Commerce",
  name: "octaviomtc:reaction-paycash",
  version: "0.0.16",
  git: "https://github.com/octaviomtc/reaction-paycash.git"
});

Npm.depends({'paypal-rest-sdk': '1.2.2'});

Package.onUse(function (api, where) {
  api.versionsFrom('METEOR@1.0');
  api.use("meteor-platform@1.2.1");
  api.use("coffeescript");
  api.use("less");
  api.use("reactioncommerce:core@0.2.2");

  api.add_files([
    "common/register.coffee",
    "common/collections.coffee",
    "lib/paypal.coffee"
  ],["client","server"]);
  api.add_files("server/paypal.coffee",["server"]);
  api.add_files([
    "client/routing.coffee",
    "client/templates/paypal.html",
    "client/templates/paypal.less",
    "client/templates/paypal.coffee",
    "client/templates/cart/checkout/payment/methods/paypal/paypal.html",
    "client/templates/cart/checkout/payment/methods/paypal/paypal.coffee"
  ],
  ["client"]);

});
