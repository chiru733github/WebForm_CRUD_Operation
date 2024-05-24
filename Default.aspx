<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeSystemWebForm._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <table class="w-100" style="height: 207px">
        <tr>
            <td colspan="2" style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; text-align: center; color: #3399FF; padding-top: 35px; padding-bottom: 35px;">Complete CRUD Operation in ASP.NET C# with SQL using Stored Procedure</td>
        </tr>
        <tr>
            <td style="padding-left: 350px; width: 576px;">
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="EmployeeId"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 350px; width: 576px;">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="EmployeeName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 350px; width: 576px;">
                <asp:Label ID="Label3" runat="server" Font-Size="Large" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 350px; width: 576px;">
                <asp:Label ID="Label4" runat="server" Font-Size="Large" Text="Salary"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 350px; width: 576px;">
                <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Role"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Width="200px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Salesman</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Analyst</asp:ListItem>
                    <asp:ListItem>CEO</asp:ListItem>
                    <asp:ListItem>Developer</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="text-align: center; letter-spacing: 3em; padding-top: 15px; padding-bottom: 15px; height: 69px;" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="#9900FF" Font-Size="Medium" ForeColor="White" OnClick="Insert_Click" Text="Insert" Width="100px" />
&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#9900FF" Font-Size="Medium" ForeColor="White" OnClick="Update_Click" Text="Update" Width="100px" />
&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#9900FF" Font-Size="Medium" ForeColor="White" OnClick="Delete_Click" OnClientClick="return confirm('Are you sure to delete ?');" Text="Delete" Width="100px" />
            &nbsp;<asp:Button ID="Button5" runat="server" BackColor="#9900FF" Font-Size="Medium" ForeColor="White" OnClick="Fetch_Click" Text="Fetch" Width="100px" />
            &nbsp;<asp:Button ID="Button4" runat="server" BackColor="#9900FF" Font-Size="Medium" ForeColor="White" OnClick="Clear_Click" Text="Clear" Width="100px" />
            </td>
        </tr>
        <tr>
            <td style="width: 576px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" dir="ltr" style="text-align: center">
                &nbsp;<asp:GridView ID="GridView1" runat="server" Width="1088px" CellPadding="1" HorizontalAlign="Center">
                    <HeaderStyle BackColor="#6600CC" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>

    

</asp:Content>
