<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="Mini_Project.Management" %>


<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
    <style type="text/css">
        .auto-style1 {
            width: 75%;
        }
        .auto-style2 {
            width: 75%;
            text-align: center;
            font-size: large;
        }
        .auto-style3 {
            text-align: right;
            width: 318px;
        }
        .auto-style4 {
            width: 318px;
        }
        .auto-style5 {
            text-align: right;
            width: 318px;
            height: 25px;
        }
        .auto-style6 {
            width: 318px;
            height: 25px;
        }
        .auto-style7 {
            height: 25px;
        }
        .auto-style8 {
            width: 318px;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
        </telerik:RadScriptManager>
        <div>
        </div>
      <div class="auto-style2">
            <strong>Employee Data form</strong></div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">EmpID:</td>
            <td class="auto-style6">
                <telerik:RadNumericTextBox ID="RadNumericTextBox1" Runat="server" MaxLength="3" NumberFormat-AllowRounding="false">
                </telerik:RadNumericTextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadNumericTextBox1" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">FirstName:</td>
            <td class="auto-style4">
                <telerik:RadTextBox ID="RadTextBox1" Runat="server" MaxLength="30">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadTextBox1" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="RadTextBox1" ErrorMessage="Should not accept number" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">LastName:</td>
            <td class="auto-style4">
                <telerik:RadTextBox ID="RadTextBox2" Runat="server" MaxLength="30">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadTextBox2" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="RadTextBox2" ErrorMessage="Should not accept number" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">City:</td>
            <td class="auto-style4">
                <telerik:RadTextBox ID="RadTextBox3" Runat="server" MaxLength="30">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadTextBox3" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="RadTextBox3" ErrorMessage="Should not accept number" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">State:</td>
            <td class="auto-style4">
                <telerik:RadTextBox ID="RadTextBox4" Runat="server" MaxLength="30">
                </telerik:RadTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadTextBox4" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="RadTextBox4" ErrorMessage="Should not accept number" ForeColor="Red" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Zip:</td>
            <td class="auto-style4">
                <telerik:RadNumericTextBox ID="RadNumericTextBox2" Runat="server"  MinLength="5" MaxLength="5">
                </telerik:RadNumericTextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadNumericTextBox2" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style8">
                <telerik:RadButton ID="RadButton1" runat="server" Skin="WebBlue" Text="Save" OnClick="RadButton1_Click">
                </telerik:RadButton>
                <input id="Reset1" type="reset" value="Cancel" /></td>
            <td class="auto-style9">
                </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
      </body>
</html>
