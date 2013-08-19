// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.ui.datepicker
//= require_tree ./includes

$(document).ready(function() {
  $('label.date').each(function() {
    $this=$(this)
    $sels= $this.find('select')
    $sel = $sels.first()
    val = $($sels[0]).val() + "-" + zeroFill($($sels[1]).val(),2) + "-" + zeroFill($($sels[2]).val(),2)
    console.log(val)
    $('<input />',{ type: 'date', id: $sel.attr('id').replace(/_[0-9]i$/,''), name: $sel.attr('name').replace(/\(.+?\)/,''), value: val}).appendTo($this)
    $this.find('select').remove()
    if (!Modernizr.inputtypes.date) {
      $this.find('input').datepicker()
    }
  })
})

function zeroFill( number, width ) {
  width -= number.toString().length;
  if ( width > 0 ) {
    return new Array( width + (/\./.test( number ) ? 2 : 1) ).join( '0' ) + number;
  }
  return number + "";
}