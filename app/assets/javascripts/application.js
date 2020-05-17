//= require jquery3
//= require popper
//= require bootstrap
//= require trix
//= require rails-ujs
//= require particles
//= require particles2
//= require activestorage
//= require turbolinks
//= require_tree .


// Bootstrap Fancy Alert
$(document).ready(function (){
	setTimeout(function(){
		$('#notice_wrapper').fadeOut("slow",function(){
			$(this).remove();
		})
	},4500);
});