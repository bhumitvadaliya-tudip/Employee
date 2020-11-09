<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Mini_Project.Employee" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
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
        <h2 class="auto-style1">Employee Data</h2>
         <telerik:RadButton ID="RadButton1" runat="server" Text="Add New Record" OnClick="RadButton1_Click">
        </telerik:RadButton>
        <telerik:RadGrid ID="gridUsers" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnDeleteCommand="gridUsers_DeleteCommand" OnUpdateCommand="gridUsers_UpdateCommand"> 
              <GroupingSettings CollapseAllTooltip="Collapse all groups"></GroupingSettings>
				<MasterTableView DataKeyNames="EmpID" DataSourceID="SqlDataSource2">
					<Columns>
						<telerik:GridBoundColumn DataField="EmpID" HeaderText="EmpID"></telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="FirstName" HeaderText="FirstName"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="LastName" HeaderText="LastName"></telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="City" HeaderText="City"></telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="State" HeaderText="State"></telerik:GridBoundColumn>
						<telerik:GridBoundColumn DataField="Zip" HeaderText="Zip"></telerik:GridBoundColumn>
                        <telerik:GridEditCommandColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Update" ColumnGroupName="Action">
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </telerik:GridEditCommandColumn>
            <telerik:GridButtonColumn ConfirmText="Are You Want to Delete this Record?" ConfirmDialogType="RadWindow"
                        ConfirmTitle="Delete" HeaderStyle-HorizontalAlign="Center" HeaderText="Delete" ColumnGroupName="Action" ButtonType="FontIconButton" CommandName="Delete" />
					</Columns>
                     <ColumnGroups>
                       <telerik:GridColumnGroup HeaderText="Action" Name="Action" HeaderStyle-HorizontalAlign="Center">
                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                    </telerik:GridColumnGroup>
                </ColumnGroups>
				</MasterTableView>
		 </telerik:RadGrid>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" SelectCommand="SELECT * FROM [EmployeeData]"></asp:SqlDataSource>
    </form>
</body>
</html>
