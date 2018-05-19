# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end


var myData={
    "Apple": null,
    "Microsoft": null,
    "Google": 'https://placehold.it/500x500'
  };

$(document).ready(function() {
$('input.autocomplete').autocomplete({
  data: myData,
  limit: 20, // The max amount of results that can be shown at once. Default: Infinity.
  onAutocomplete: function(val) {
    // Callback function when value is autcompleted.
  },
  minLength: 1, // The minimum length of the input for the autocomplete to start. Default: 1.
});
});