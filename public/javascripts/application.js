// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Calendar date-picker widget
$("li.calendar input").datepicker({
  yearRange: '-10:+4',
  dateFormat: 'mm/dd/yy',
  showOn: 'button',
  buttonImage: '/images/calendar.png',
  buttonImageOnly: true
});

function unimplemented() {
  alert("This feature is not implemented yet.");
}


function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}