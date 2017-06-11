<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ersteAspSeite.Default" 
    Title="Zinseszins-Rechnung"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Zinseszins-Rechnung</h1>            
            <p>
                <asp:Label runat="server" ID="test" Width="150">Betrag in Euro</asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"  TextMode="Number" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:Label runat="server" ID="Label1" Width="150">Startjahr</asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"  TextMode="Number" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:Label runat="server" ID="Label2" Width="150">Lauftzeit in Jahren</asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"  TextMode="Number" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
            </p>
            <p>
                <asp:Label runat="server" ID="Label3" Width="150">Zinssatz</asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True" OnTextChanged="TextBox_TextChanged"></asp:TextBox>
            </p>
            <p style="vertical-align:top ">
                <asp:button runat="server" Width="150" Text="Berechne" OnClick="Unnamed1_Click" />
                <asp:label runat="server" ID ="lbl1" style="padding-left:5px;">Ergebnis</asp:label>
            </p>
        </div>
        
        
        
    </form>
</body>
</html>
