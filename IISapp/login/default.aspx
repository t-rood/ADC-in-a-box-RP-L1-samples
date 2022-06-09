<%@ Page Language="C#" %>
<%@ Import NameSpace = "System.Globalization" %>
<%@ Import NameSpace = "System.Web" %>
<%@ Import NameSpace = "System" %>
<%

string strDate = "";

DateTime currentTime = DateTime.Now;
strDate = currentTime.ToString(new CultureInfo("en"));

NameValueCollection nvc = Request.Form;
string userName = "";
string password = "";
if (!string.IsNullOrEmpty(nvc["user"]))
{
	userName = nvc["user"];
}
if (!string.IsNullOrEmpty(nvc["pass"]))
{
	password = nvc["pass"];
}

%><html>
<head>
<title>Login</title>
<link rel="stylesheet" href="/styles/theme.css">
<meta http-equiv="expires" content="0">
</head>
<style>body { background-color: white; } </style>
<body>
<p><img src="/images/logo_color.png" width="186" heiht="56"></p>
<h3>Please log in</h3>
<form action="" method="post">
<table cellspacing="2" cellpadding="0" border="0">
<tr><td>User:</td><td><input type="text" name="user"></td></tr>
<tr><td>Password:</td><td><input type="password" name="pass"></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="login"></td></tr>
</table> 
</form><%

if (!(userName.Equals(""))) {
	Response.Write("<p>Received login for user <b>" + userName + "</b></p>");
}

%><p>Timestamp: <% Response.Write(strDate); %></p>
</body>
</html>