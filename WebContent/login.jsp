<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link type="text/css" rel="stylesheet" href="css/login.css" />
<%@ include file="headerIndex.jsp"%>
<title>Login</title>
</head>
<body>
	<hgroup>
	<h1>Login</h1>
	</hgroup>
	<form method="POST" action="/CrowTp/login">
		<div class="group">
			<input name="mail" type="email"><span class="highlight"></span><span
				class="bar"></span> <label>e-Mail</label>
		</div>
		<div class="group">
			<input name="password" type="password"><span
				class="highlight"></span><span class="bar"></span> <label>Password</label>
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