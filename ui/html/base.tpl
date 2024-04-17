{{define "base"}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{template "title" .}}</title>
    <link rel="stylesheet" href="/static/css/pico.min.css" />
</head>
<body>
    <header>
        <h2>FSdb</h2>
    </header>
    {{template "nav" .}}
    <main class="container-fluid">
        {{with .Flash}}
        <div class="container-fluid">{{.}}</div>
        {{end}}
        {{template "main" .}}
    </main>
    <footer class="container-fluid">
        <p>&copy;2024 rgtexa. All rights reserved.</p>
    </footer>
</body>
</html>
{{end}}
