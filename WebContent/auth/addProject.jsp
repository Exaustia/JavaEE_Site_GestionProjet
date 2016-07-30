<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<title>Add product</title>
</head>

<body>
	<hgroup>
	<h1>Create a Project</h1>
	</hgroup>
	<form action="/CrowTp/auth/addProject" method="POST">
		<div class="group">
			<input name="name" type="text"><span class="highlight"></span><span
				class="bar"></span> <label>Project Name</label>
		</div>
		<div class="group">
			<input name="desc" type="text"><span class="highlight"></span><span
				class="bar"></span> <label>Description</label>
		</div>
		<div class="group">
			<input name="price" type="number"><span class="highlight"></span><span
				class="bar"></span> <label>Objectif Price </label>
		</div>
		<div class="group">
			<input name="dateEnd" type="text"><span class="highlight"></span><span
				class="bar"></span> <label>Date End (dd/MM/yyyy)</label>
		</div>

		<div class="group">
			<p>Categoy</p>
			<select name="category" class="form-control">
				<c:forEach items="${ categories }" var="c">
					<option value="${ c.id }">${ c.name }</option>
				</c:forEach>

			</select><br>
			<br>
		</div>
		<div align="center">
			<button type="submit" class="button arrow">
				Validate
				<div class="ripples buttonRipples">
					<span class="ripplesCircle"></span>
				</div>
			</button>
		</div>
	</form>
</body>
</html>
<script type="text/javascript">
$(window, document, undefined).ready(function() {

	  $('input').blur(function() {
	    var $this = $(this);
	    if ($this.val())
	      $this.addClass('used');
	    else
	      $this.removeClass('used');
	  });

	  var $ripples = $('.ripples');

	  $ripples.on('click.Ripples', function(e) {

	    var $this = $(this);
	    var $offset = $this.parent().offset();
	    var $circle = $this.find('.ripplesCircle');

	    var x = e.pageX - $offset.left;
	    var y = e.pageY - $offset.top;

	    $circle.css({
	      top: y + 'px',
	      left: x + 'px'
	    });

	    $this.addClass('is-active');

	  });

	  $ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd', function(e) {
	  	$(this).removeClass('is-active');
	  });

	});
var $password = $("#password");
var $confirmPassword = $("#confirm-password");

$("form span").hide();

function isPasswordValid() {
  return $password.val().length > 5;
}

function arePasswordsMatching() {
  return $password.val() === $confirmPassword.val();
}

function canSubmit() {
  return isPasswordValid() && arePasswordsMatching();
}

function passwordEvent() {
  if(isPasswordValid()) {
    $password.next().hide()
  } else {
    $password.next().show()
  }
}

function confirmPasswordEvent() {
  if(arePasswordsMatching()) {
    $confirmPassword.next().hide();
  } else {
    $confirmPassword.next().show();
  }
}

function enableSubmitEvent() {
  $("#submit").prop("disabled", !canSubmit());
}

$password.focus(passwordEvent).keyup(passwordEvent).keyup(confirmPasswordEvent).keyup(enableSubmitEvent);  
$confirmPassword.focus(confirmPasswordEvent).keyup(confirmPasswordEvent).keyup(enableSubmitEvent);

enableSubmitEvent();
</script>