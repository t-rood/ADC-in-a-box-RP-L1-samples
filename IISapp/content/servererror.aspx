<%@ Page Language="C#" %>
<%@ Import NameSpace = "System.Globalization" %>
<%@ Import NameSpace = "System.Web" %>
<%@ Import NameSpace = "System" %>
<%

DateTime currentTime = DateTime.Now;
string strDate = currentTime.ToString(new CultureInfo("en"));

string option = Request.QueryString["option"];

%><html>
<head>
<link rel="stylesheet" href="/styles/theme.css">
<meta http-equiv="expires" content="0">
</head>
<body>
<p><img src="/images/logo_color.png" width="186" heiht="56"></p><%

if (!(option.Equals(""))) {
	Response.Write("<p>Received value for option <b>" + option + "</b></p>");
}

%><p>Timestamp: <% Response.Write(strDate); %></p>
</body>
</html>