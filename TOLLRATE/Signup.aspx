<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="TOLLRATE.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style12 {
            font-size: xx-large;
            height: 40px;
        }

        .style1 {
            background-image: url('img/signup.jpg');
        }

        .auto-style13 {
            width: 100%;
            background-image: url('img/signup.jpg');
            height: 338px;
        }

        .auto-style14 {
            width: 331px;
        }

        .auto-style15 {
            width: 242px;
        }

        .auto-style16 {
            width: 231px;
        }

        .auto-style17 {
            font-size: x-large;
        }

        .auto-style18 {
            font-size: large;
        }

        .auto-style19 {
            width: 192px;
        }

        .auto-style21 {
            width: 231px;
            height: 30px;
        }

        .auto-style22 {
            width: 192px;
            height: 30px;
        }

        .auto-style23 {
            width: 242px;
            height: 30px;
        }

        .auto-style24 {
            height: 30px;
        }

        .auto-style25 {
            width: 81px;
            height: 35px;
        }

        .auto-style26 {
            width: 81px;
            height: 30px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table class="auto-style1">
        <tr>
            <td class="auto-style12">Open Your Account<table class="auto-style13">
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="First Name" CssClass="auto-style17"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Gray" BorderStyle="Ridge" Wrap="False" ></asp:TextBox>
                    </td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required." Display="Dynamic" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25"><strong>
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Last Name" CssClass="auto-style17"></asp:Label>
                    </strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox2" runat="server" BorderColor="Gray" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field is required." Display="Dynamic" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style26"><strong>
                        <asp:Label ID="Label3" runat="server" ForeColor="White" Text="User Id" CssClass="auto-style17"></asp:Label>
                    </strong></td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox3" runat="server" BorderColor="Gray" BorderStyle="Ridge" ></asp:TextBox>
                    </td>
                    <td class="auto-style22">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This field is required." Display="Dynamic" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style25"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style17" ForeColor="White" Text="Email Id"></asp:Label>
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox8" runat="server" BorderColor="Gray" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                    <td class="auto-style19"><strong>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox8" CssClass="auto-style18" ErrorMessage="Invalid format of email id" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                    </strong></td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="This field is required." ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style26"><strong>
                        <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Vehicle Type" CssClass="auto-style17"></asp:Label>
                    </strong></td>
                    <td class="auto-style21">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="167px">
                            <asp:ListItem>LCV</asp:ListItem>
                            <asp:ListItem>Bus/Truck</asp:ListItem>
                            <asp:ListItem>Upto 3 Axle Vehicle</asp:ListItem>
                            <asp:ListItem>4 to 6 Axle</asp:ListItem>
                            <asp:ListItem>HCM/EME</asp:ListItem>
                            <asp:ListItem>7 or more Axle</asp:ListItem>
                            <asp:ListItem>car/jeep/van</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style22"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style25"><strong>
                        <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Vehicle Number" CssClass="auto-style17"></asp:Label>
                    </strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox7" runat="server" BorderColor="Gray" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Format : AA 11 AA 1111" ControlToValidate="TextBox7" ValidationExpression="^[A-Z]{2}([ \-])[0-9]{2}[ ,][A-Z0-9]{1,2}[A-Z]\1[0-9]{4}$" SetFocusOnError="true" CssClass="auto-style18" ForeColor="#CC0000" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="This field is required." Display="Dynamic" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style25"><strong>
                        <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Password" CssClass="auto-style17"></asp:Label>
                    </strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" BorderColor="Gray" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" CssClass="auto-style18" ErrorMessage="Password length must be between 7 to 10 characters" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                        </strong></td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="This field is required." Display="Dynamic" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25"><strong>
                        <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Confirm Password" CssClass="auto-style17"></asp:Label>
                    </strong></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" BorderColor="Gray" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <strong>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="password do not matched" CssClass="auto-style18" ForeColor="#CC0000" ValidationGroup="Group1"></asp:CompareValidator>
                        </strong>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This field is required." Display="Dynamic" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style18" ForeColor="#006666" Text="Submit" OnClick="Button1_Click" ValidationGroup="Group1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label9" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>


        <tr>
            <td>&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

