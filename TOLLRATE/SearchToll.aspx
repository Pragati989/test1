<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeFile="SearchToll.aspx.cs" Inherits="TOLLRATE.SearchToll" %>

<script runat="server">

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
</script>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style14 {
            font-size: x-large;
        }
        .auto-style16 {
            font-size: x-large;
            height: 31px;
            width: 736px;
        }
        .auto-style17 {
            height: 31px;
        }
        .auto-style21 {
            width: 102%;
            height: 312px;
             background-image: url('img/tollpay.jpg');
        }
        .auto-style22 {
            margin-left: 0px;
        font-weight: bold;
        font-size: x-large;
        color: #006666;
    }
        .auto-style23 {
            height: 6px;
        }
    .auto-style25 {
        font-size: x-large;
    }
    .auto-style26 {
        width: 653px;
        height: 92px;
    }
    .auto-style27 {
        width: 213px;
        height: 92px;
    }
    .auto-style31 {
        font-size: x-large;
        width: 653px;
    }
        .auto-style32 {
            font-size: x-large;
            width: 653px;
            height: 31px;
        }
        .auto-style34 {
            font-size: x-large;
            height: 57px;
            width: 653px;
        }
        .auto-style35 {
            width: 653px;
        }
    .auto-style36 {
        font-size: xx-large;
        width: 100%;
        height: 35px;
        color: #FFFFFF;
    }
        .auto-style43 {
            width: 653px;
            height: 17px;
        }
        .auto-style44 {
            height: 17px;
        }
    .auto-style39 {
        font-size: xx-large;
        text-decoration: none;
        color: #FFFFFF;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style21">
                        <tr>
                            <td class="auto-style26"><span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                <strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style36" Text=" State"></asp:Label>
                                </strong>
                                <span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
                            <td class="auto-style27">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Format-Ex-Himachal Pradesh " ForeColor="White" ValidationExpression="^([A-Z][a-zA-Z ]*)$" ValidationGroup="Group3"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#666666" BorderStyle="Ridge" CssClass="auto-style25" Height="30px" OnTextChanged="TextBox1_TextChanged" Width="291px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required" ForeColor="White" ValidationGroup="Group3"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            </td>
                            <td class="auto-style27"></td>
                        </tr>
                        <tr>
                            <td class="auto-style43"><strong><asp:Label ID="Label2" runat="server" CssClass="auto-style36" Text="NH"></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style44">
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid National Highway" ForeColor="White" ValidationExpression="^[1-9][0-9]*$" ValidationGroup="Group3"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" BorderColor="#666666" BorderStyle="Ridge" CssClass="auto-style25" Height="30px" OnTextChanged="TextBox2_TextChanged" Width="302px"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required" ForeColor="White" ValidationGroup="Group3"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                <br />
                            </td>
                            <td class="auto-style44"></td>
                        </tr>
                        <tr>
                            <td class="auto-style35"><span class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;</span></td>
                            <td>
                                <strong>
                                <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="39px" OnClick="Button1_Click" Text="Search for toll" ValidationGroup="Group3" Width="264px" />
                                </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" ForeColor="Black"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove" Height="171px" Visible="False" Width="633px">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style14" Height="42px" >
                                        <asp:ListItem>--select--</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton7" runat="server" BorderStyle="Groove" CssClass="auto-style39" OnClick="LinkButton7_Click">Check For Price</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                    <asp:LinkButton ID="LinkButton8" runat="server" BorderStyle="Groove" CssClass="auto-style39" OnClick="LinkButton8_Click1">Payment</asp:LinkButton>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</span></asp:Panel>
                                <br />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style34">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style17">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                            </td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style32"></td>
                            <td class="auto-style17">
                                <br />
                            </td>
                            <td class="auto-style17"></td>
                        </tr>
                        <tr>
                            <td class="auto-style31">&nbsp;</td>
                            <td class="auto-style14">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

