<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TOLLRATE.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Start WOWSlider.com HEAD section -->
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
    <script type="text/javascript" src="engine1/jquery.js"></script>
    <!-- End WOWSlider.com HEAD section -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td>

                            <asp:Panel ID="Panel1" runat="server" Width="240px">


                                <strong>
                                    <asp:LinkButton ID="LinkButton8" runat="server" CssClass="auto-style4" ForeColor="#006666" PostBackUrl="~/Login.aspx" OnClick="LinkButton8_Click1">Login</asp:LinkButton>
                                </strong>&nbsp;&nbsp;&nbsp;&nbsp;
                                 <strong>
                                     <asp:LinkButton ID="LinkButton9" runat="server" CssClass="auto-style4" ForeColor="#006666" OnClick="LinkButton9_Click" PostBackUrl="~/Signup.aspx">SignUp</asp:LinkButton>
                                 </strong>

                            </asp:Panel>
                            &nbsp;</td>
                        <td>&nbsp;&nbsp;<asp:Panel ID="Panel2" runat="server" Height="27px" Width="146px">


                            <strong>
                                <asp:LinkButton ID="LinkButton10" runat="server" CssClass="auto-style4" ForeColor="#006666" OnClick="LinkButton10_Click">Logout</asp:LinkButton>
                            </strong>

                        </asp:Panel>
                            &nbsp;&nbsp;&nbsp;  &nbsp;</td>
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
            <td>
                <div id="wowslider-container1">
                    <div class="ws_images">
                        <ul>
                            <li>
                                <img src="data1/images/tollrate1.jpg" alt="TollRate1" title="TollRate1" id="wows1_0" /></li>
                            <li><a href="http://wowslider.com/vi">
                                <img src="data1/images/tollrate2.jpg" alt="slider" title="TollRate2" id="wows1_1" /></a></li>
                            <li>
                                <img src="data1/images/tollrate.jpg" alt="TollRate" title="TollRate" id="wows1_2" /></li>
                        </ul>
                    </div>
                    <div class="ws_bullets">
                        <div>
                            <a href="#" title="TollRate1"><span>
                                <img src="data1/tooltips/tollrate1.jpg" alt="TollRate1" />1</span></a>
                            <a href="#" title="TollRate2"><span>
                                <img src="data1/tooltips/tollrate2.jpg" alt="TollRate2" />2</span></a>
                            <a href="#" title="TollRate"><span>
                                <img src="data1/tooltips/tollrate.jpg" alt="TollRate" />3</span></a>
                        </div>
                    </div>
                    <div class="ws_script" style="position: absolute; left: -99%"><a href="http://wowslider.com">http://wowslider.com/</a> by WOWSlider.com v8.7</div>
                    <div class="ws_shadow"></div>
                </div>
                <script type="text/javascript" src="engine1/wowslider.js"></script>
                <script type="text/javascript" src="engine1/script.js"></script>
                <!-- End WOWSlider.com BODY section -->
                &nbsp;</td>
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
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
