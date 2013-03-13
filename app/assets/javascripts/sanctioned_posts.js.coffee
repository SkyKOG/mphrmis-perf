# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  districts = $('#sanctioned_post_district').html()
  $('#sanctioned_post_division').change ->
    division = $('#sanctioned_post_division :selected').text()
    escaped_division = division.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(districts).filter("optgroup[label='#{escaped_division}']").html()
    if options
      $('#sanctioned_post_district').html(options)
      $('#sanctioned_post_district').parent().show()
    else
      $('#sanctioned_post_district').empty()
      $('#sanctioned_post_district').parent().hide()
  blocks = $('#sanctioned_post_block').html()
  $('#sanctioned_post_district').change ->
    district = $('#sanctioned_post_district :selected').text()
    escaped_district = district.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(blocks).filter("optgroup[label='#{escaped_district}']").html()
    if options
      $('#sanctioned_post_block').html(options)
      $('#sanctioned_post_block').parent().show()
    else
      $('#sanctioned_post_block').empty()
      $('#sanctioned_post_block').parent().hide()
  hospitals = $('#sanctioned_post_hospital_id').html()
  $('#sanctioned_post_block').change ->
    block = $('#sanctioned_post_block :selected').text()
    escaped_block = block.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(hospitals).filter("optgroup[label='#{escaped_block}']").html()
    if options
      $('#sanctioned_post_hospital_id').html(options)
      $('#sanctioned_post_hospital_id').parent().show()
    else
      $('#sanctioned_post_hospital_id').empty()
      $('#sanctioned_post_hospital_id').parent().hide()
