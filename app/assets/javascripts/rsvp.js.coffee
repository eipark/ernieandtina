# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  if $('input[name=attending]:checked').val() == "yes"
    $('#guest-food').show();
  if $('input[name=po_attending]:checked').val() == "yes"
    $('#po-food').show();

  $('input[name=attending]').change (elt) =>
    if $(elt.target).val() == "yes"
      $('#guest-food').show();
    else
      $('#guest-food').hide();
  $('input[name=po_attending]').change (elt) =>
    if $(elt.target).val() == "yes"
      $('#po-food').show();
    else
      $('#po-food').hide();
