//= require jquery3
//= require popper
//= require bootstrap
//= require rails-ujs
//= require chartkick
//= require Chart.bundle
// require moment
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

document.addEventListener("turbolinks:load", function() {
	tinymce.remove();
	tinymce.init({
	  height: '220',
	  selector:'textarea#comment_body',
	  plugins: "codesample image media link code",
	  toolbar: "undo redo | styleselect | bold italic link | codesample image media | code"
	});
  })