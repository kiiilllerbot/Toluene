//= require jquery3
//= require popper
//= require bootstrap
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

// TinyMCE Config
document.addEventListener("turbolinks:load", function() {
	tinymce.remove();
	tinymce.init({
	  height: '220',
	  selector:'textarea#project_description',
	  branding: false,
	  plugins: "codesample image media link code",
	  toolbar: "undo redo | styleselect | bold italic link | codesample image media | code"
	});

	tinymce.init({
		height: '220',
		selector:'textarea#task_description',
		branding: false,
		plugins: "codesample image media link code",
		toolbar: "undo redo | styleselect | bold italic link | codesample image media | code"
	  });

	tinymce.init({
		height: '220',
		selector:'textarea#issue_description',
		branding: false,
		plugins: "codesample image media link code",
		toolbar: "undo redo | styleselect | bold italic link | codesample image media | code"
	  });
	
	tinymce.init({
		height: '220',
		selector:'textarea#comment_description',
		branding: false,
		plugins: "codesample image media link code",
		toolbar: "undo redo | styleselect | bold italic link | codesample image media | code"
	  });

	  tinymce.init({
		height: '220',
		selector:'textarea#note_body',
		branding: false,
		plugins: "codesample image media link code",
		toolbar: "undo redo | styleselect | bold italic link | codesample image media | code"
	  });

	  tinymce.init({
		height: '220',
		selector:'textarea#work_description',
		branding: false,
		plugins: "codesample image media link code",
		toolbar: "undo redo | styleselect | bold italic link | codesample image media | code"
	  });

	tinymce.init({
		height: '220',
		selector:'textarea#bug_body',
		branding: false,
		plugins: "codesample image media link code",
		toolbar: "undo redo | styleselect | bold italic link | codesample image media | code"
	  });
	  
  })