<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


    
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 32%;
        }
        .auto-style2 {
            width: 199px;
        }
        .auto-style3 {
            width: 578px;
        }
        .auto-style5 {
            width: 119px;
        }
        .auto-style6 {
            width: 119px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style10 {
            width: 247px;
        }
        .auto-style11 {
            width: 108px;
        }
        .auto-style14 {
            width: 233px;
        }
        .auto-style15 {
            width: 113px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">

                <caption>
                    INSERTION</caption>
                <tr>
                    <td class="auto-style2">FIRSTNAME</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">LASTNAME</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">AGE</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Insert" Width="75px" Onclick="Submit_click" ForeColor="Green" />
            </td>
            <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <caption>
                DELETION</caption>
            <tr>
                <td class="auto-style6">Id</td>
                <td class="auto-style7">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Text="Delete" Width="75px" OnClick="Button2_Click" ForeColor="Red" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <caption>
                UPDATION</caption>
            <tr>
                <td class="auto-style11">ID</td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">FIRSTNAME</td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">LASTNAME</td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">AGE</td>
                <td class="auto-style10">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" Text="UPDATE" OnClick="Button3_Click" ForeColor="Orange" Width="107px" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" Text="CLEAR" OnClick="Button4_Click" Width="96px" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <caption>
                DETAILS</caption>
            <tr>
                <td class="auto-style15">Id</td>
                <td class="auto-style14">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Button ID="Button5" runat="server" Text="GET" OnClick="Button5_Click" Width="95px" />
                </td>
                <td class="auto-style14"></td>
                    &nbsp;</tr>
        </table>
       
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="FirstName" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("FirstName") %>' />
            </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
        </asp:TemplateField>
         

         <asp:TemplateField HeaderText="LastName" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:TextBox ID="txtlName" runat="server" Text='<%# Eval("LastName") %>' />
            </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
        </asp:TemplateField>



         <asp:TemplateField HeaderText="Age" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:TextBox ID="Age" runat="server" Text='<%# Eval("Age") %>' />
            </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Id" ItemStyle-Width="150">
            <ItemTemplate>
                <asp:TextBox ID="Id" runat="server" Text='<%# Eval("Auto_id") %>' />
            </ItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
        </asp:TemplateField>




       
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button Text="Update" runat="server" CommandName="Select" CommandArgument="<%# Container.DataItemIndex %>" />
            </ItemTemplate>
        </asp:TemplateField>

         
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button Text="Delete" runat="server" CommandName="Select1" CommandArgument="<%# Container.DataItemIndex %>" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

       

    
        
      
              
   
     
    
        
      
              
   
     
</form>  
          
</body>
</html>
