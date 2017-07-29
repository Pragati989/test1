<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TOLLRATE.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            height: 23px;
        }

        .auto-style15 {
            font-size: x-large;
        }

        .auto-style16 {
            height: 23px;
            width: 239px;
        }

        .auto-style17 {
            width: 200px;
        }

        .auto-style18 {
            width: 217px;
        }

        .auto-style19 {
            font-weight: bold;
            font-size: large;
        }

        .auto-style20 {
            height: 23px;
            width: 229px;
        }

        .auto-style21 {
            width: 229px;
        }

        .auto-style22 {
            width: 100%;
            height: 427px;
            background-image: url('img/1.png');
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style22">
                    <tr>
                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class="auto-style16">
                            <strong>&nbsp;<br />
                                <asp:Label ID="Label3" runat="server" ForeColor="White"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                            </strong>
                        </td>
                        <td class="auto-style13">
                            <br />
                            <br />
                        </td>
                        <td class="auto-style20">&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style17">
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text="User Id" CssClass="auto-style15" ForeColor="Black"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Gray"
                                BorderStyle="Ridge"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                        </td>
                        <td class="auto-style21">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="ENTRY required" ValidationGroup="Group2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style17">
                            <strong>
                                <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style15" ForeColor="Black"></asp:Label>
                                <br />
                                <br />
                                <br />
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BorderColor="Gray" BorderStyle="Ridge"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                        </td>
                        <td class="auto-style21">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="ENTRY required" ValidationGroup="Group2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style17"></td>
                        <td>
                            <br />
                            <strong>
                                <asp:Button ID="Button1" runat="server" CssClass="auto-style19" ForeColor="#006666" Text="Login" Width="83px" OnClick="Button1_Click" Style="height: 33px" ValidationGroup="Group2" />
                            </strong>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />

                        </td>
                        <td class="auto-style21">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
