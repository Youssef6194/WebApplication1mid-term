<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1mid_term.WebForm1" %>
<%@Import Namespace="System.Data.SqlClient"%>
<!DOCTYPE html>
<script runat="server">
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";
            String strInsert = "INSERT INTO Table " +
                               "VALUES('" + TextFname.Text + "','"
                               + TextFname0.Text + "','"
                               + RadioButtonList1.SelectedValue + "','"
                               + IDtext.Text + "','"
                               + TextFname1.Text + "','"
                               + IDtext.Text + "','"
                               + TextFname3.Text + "')";

            SqlCommand cmdInsert = new SqlCommand(strInsert, conn);
            MSGregister.Text = "The Function has been executed";
            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("userpic") + "\\" + TextFname.Text + "jpg");
            }
        }
        catch (SqlException err)
        {
            if (err.Number == 2627)
            {
                MSGregister.Text = "email already exists!";
            }
            else
            {
                MSGregister.Text = "Database error!";
            }
        }
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 229px;
        }
        .auto-style3 {
            width: 269px;
        }
        .auto-style4 {
            width: 191px;
        }
        .auto-style5 {
            width: 229px;
            height: 38px;
        }
        .auto-style6 {
            width: 269px;
            height: 38px;
        }
        .auto-style7 {
            width: 191px;
            height: 38px;
        }
        .auto-style8 {
            height: 38px;
        }
        .auto-style9 {
            width: 229px;
            height: 47px;
        }
        .auto-style10 {
            width: 269px;
            height: 47px;
        }
        .auto-style11 {
            width: 191px;
            height: 47px;
        }
        .auto-style12 {
            height: 47px;
        }
        .auto-style13 {
            width: 229px;
            height: 39px;
        }
        .auto-style14 {
            width: 269px;
            height: 39px;
        }
        .auto-style15 {
            width: 191px;
            height: 39px;
        }
        .auto-style16 {
            height: 39px;
        }
        .auto-style17 {
            width: 229px;
            height: 46px;
        }
        .auto-style18 {
            width: 269px;
            height: 46px;
        }
        .auto-style19 {
            width: 191px;
            height: 46px;
        }
        .auto-style20 {
            height: 46px;
        }
        .auto-style25 {
            width: 229px;
            height: 70px;
        }
        .auto-style26 {
            width: 191px;
            height: 70px;
        }
        .auto-style27 {
            height: 70px;
        }
        .auto-style28 {
            width: 229px;
            height: 57px;
        }
        .auto-style29 {
            width: 269px;
            height: 57px;
        }
        .auto-style30 {
            width: 191px;
            height: 57px;
        }
        .auto-style31 {
            height: 57px;
        }
        .auto-style32 {
            width: 229px;
            height: 26px;
        }
        .auto-style33 {
            width: 269px;
            height: 26px;
        }
        .auto-style34 {
            width: 191px;
            height: 26px;
        }
        .auto-style35 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Fill in all the fields"></asp:Label>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextFname" runat="server"></asp:TextBox> 
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFname" ErrorMessage="This is a required fied"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextFname" ErrorMessage="invalid first name format" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextFname0" runat="server" OnTextChanged="TextFname0_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextFname0" ErrorMessage="This is a required fied"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextFname0" ErrorMessage="invalid first name format" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="139px">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="This is a required fied"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label6" runat="server" Text="Major"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="151px">
                        <asp:ListItem>Choose Major</asp:ListItem>
                        <asp:ListItem>CS</asp:ListItem>
                        <asp:ListItem>DM</asp:ListItem>
                        <asp:ListItem>IS</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This is a required fied"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="TextFname1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextFname0" ErrorMessage="This is a required fied"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style31">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextFname1" ErrorMessage="invalidemail format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Label ID="Label8" runat="server" Text="Sudent Id"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:TextBox ID="IDtext" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style30">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="IDtext" ErrorMessage="This is a required fied"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style31">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextFname1" ErrorMessage="invalidemail format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
                <td class="auto-style31"></td>
            </tr>
            <tr>
                <td class="auto-style25">Password
                    </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextFname3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextFname3" ErrorMessage="This is a required fied"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextFname3" ErrorMessage="8 char to 12" ValidationExpression="\w{8,12}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="Label11" runat="server" Text="Confirm password"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="TextFname4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style34">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextFname4" ErrorMessage="This is a required fied"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style35">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextFname3" ControlToValidate="TextFname4" ErrorMessage="NOTsame password"></asp:CompareValidator>
                </td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Register" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Buttonclear" runat="server" Text="Clear" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="5">
            <asp:Label ID="MSGregister" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Text="Upload pic"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
