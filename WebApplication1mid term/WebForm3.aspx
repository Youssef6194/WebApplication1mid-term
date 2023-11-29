<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1mid_term.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 108px;
            height: 27px;
        }
        .auto-style3 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Arial Black" ForeColor="Black" NavigateUrl="~/WebForm1.aspx" Target="_top">SIGNUP</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Names="Arial Black" ForeColor="Black" NavigateUrl="~/signin.aspx" Target="_top">lOGIN</asp:HyperLink>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
