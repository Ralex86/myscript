mkdir myboiler
cd myboiler || exit
npm install jquery
npm install --save-dev --save-exact prettier
touch index.html

touch index.html
cat << 'EOT' > ./index.html
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <title>Boilerplate JS</title>
    <meta name="description" content="Description de la page">
    <style>
	</style>
    <script src="/node_modules/jquery/dist/jquery.min.js"></script>
    <script src="myscript.js" type="text/javascript"></script>
</head>
<body>Hello World</body>
</html>
EOT

touch myscript.js
cat << 'EOT' > ./myscript.js
$(document).ready(function(){
	console.log("hello world ")
});
EOT


python -m SimpleHTTPServer
