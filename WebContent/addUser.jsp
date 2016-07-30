<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<%@ include file="headerIndex.jsp"%>

<title>Create Account</title>
</head>
<body>
	<hgroup>
	<h1>Account Create</h1>
	</hgroup>
	<form method="POST" action="/CrowTp/addUser">
		<div class="group">
			<input name="firstName" type="text"><span class="highlight"></span><span
				class="bar"></span> <label>First Name</label>
		</div>
		<div class="group">
			<input name="secondName" type="text"><span class="highlight"></span><span
				class="bar"></span> <label>Second Name</label>
		</div>
		<div class="group">
			<input name="mail" type="email"><span class="highlight"></span><span
				class="bar"></span> <label>E-Mail</label>
		</div>
		<div class="group">
			<input type="password" id="password" name="password" /><span
				class="highlight"></span><span class="bar"></span> <label>Enter
				a password</label>

		</div>
		<div class="group">
			<input type="password" id="confirm-password" name="confirm-password" /><span
				class="highlight"></span><span class="bar"></span> <label>Please
				confirm your password</label>
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
</script>