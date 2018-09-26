<!DOCTYPE html>
<html[available=lostpassword|register] [/available]>
<head>
	{headers}
	<meta name="HandheldFriendly" content="true">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="default">

  <link href="/favicon.ico" rel="shortcut icon">

  <link href="{THEME}/css/style.css" type="text/css" rel="stylesheet">
  <!-- UIkit CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.16/css/uikit.min.css" />

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- UIkit JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.16/js/uikit.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.0-rc.16/js/uikit-icons.min.js"></script>
</head>
<body>
	[not-available=lostpassword|register]

								{login}
	[/not-available]

	[available=lostpassword|register]
				{info}
				{content}
				{logout-link}
	[/available]

	{AJAX}
</body>
</html>
