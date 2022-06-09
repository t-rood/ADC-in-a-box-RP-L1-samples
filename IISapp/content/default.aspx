<%@ Page Language="C#" %>
<%@ Import NameSpace = "System.Globalization" %>
<%@ Import NameSpace = "System.Web" %>
<%@ Import NameSpace = "System" %>
<%

string strDate = "";
string strColor = "";
string strColorCode = "";

System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);
if (rootWebConfig.AppSettings.Settings.Count > 0) {

	System.Configuration.KeyValueConfigurationElement customSetting = null;

	customSetting = rootWebConfig.AppSettings.Settings["ColorName"];
	if (customSetting != null) { strColor = customSetting.Value.ToString(); }

	customSetting = rootWebConfig.AppSettings.Settings["ColorCode"];
	if (customSetting != null) { strColorCode = customSetting.Value.ToString(); }

}
DateTime currentTime = DateTime.Now;
strDate = currentTime.ToString(new CultureInfo("en"));

string option = Request.QueryString["option"];
if (option == null)
{
	option = "";
}

%><html>
<head>
<title>Server <% Response.Write(strColor); %></title>
<link rel="stylesheet" href="/styles/theme.css">
<meta http-equiv="expires" content="0">
</head>
<style>body { background-color: <% Response.Write(strColorCode); %>;} </style>
<body>
<p><img src="/images/logo_white.png" width="186" heiht="56"></p>
<p>Welcome to <% Response.Write(strColor); %>.</p><%

if (!(option.Equals(""))) {
	Response.Write("<p>Received value for option <b>" + option + "</b></p>");
}

%><p>Timestamp: <% Response.Write(strDate); %></p>
</body>
</html>