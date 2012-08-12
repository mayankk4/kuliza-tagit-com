<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><?php if(isset($title)) echo $title; else echo "Kuliza.TagIt"; ?></title>

	<link rel="stylesheet" type="text/css" href="/static/css/default.css" />
</head>
<body>

<div id="container">

	<h1><?php if(isset($heading)) echo $heading; else echo ""; ?></h1>


		<code><a href="/">Home</a> | <a href="/admin">Admin Login</a> | <a href="/fbobject">Objects</a></code>

	<div id="body">
