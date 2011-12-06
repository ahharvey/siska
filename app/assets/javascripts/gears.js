$(function () {  
  $(window.applicationCache).bind('error', function () {  
    alert('There was an error when loading the cache manifest.');  
  });  
  
  $("#gears_index").html($("#gear_template").template({"gear":{"name":"cake"}}));    
});