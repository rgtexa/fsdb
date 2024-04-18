{{define "nav"}}
<nav class="container">
    <ul>
        <li><a href='/'>Home</a></li>
        <li><a href='/about'>About</a></li>
        {{if .IsAuthenticated}}
        <li><a href='/snippet/create'>Create snippet</a></li>
        {{end}}
        {{if .IsAuthenticated}}
        <li><a href='/user/account'>Account</a></li>
        <form action='/user/logout' method='POST'>
            <input type='hidden' name='csrf_token' value='{{.CSRFToken}}'>
            <li><button>Logout</button></li>
        </form>
        {{else}}
            <li><a href='/user/signup'>Signup</a></li>
            <li><a href='/user/login'>Login</a></li>
        {{end}}
    </ul>
</nav>
{{end}}