<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeForm.aspx.cs" Inherits="EmployeeRecord.EmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            height: 26px;
        }
        .auto-style2
        {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <div>  
            <table width="50%">  
                <tr>  
                    <td colspan="2" style="background-color: Green; height: 30px;color: White;" align="center">  
                        Employee Records  
                    </td>  
                  </tr>
                <tr>  
                    <td class="auto-style2"> ID </td>  
                    <td class="auto-style2">  
           <asp:TextBox ID="txtId" Width="150px" runat="server" OnTextChanged="txtId_TextChanged"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required " ValidationGroup="valForm1" ControlToValidate="txtId" ForeColor="Red"  ></asp:RequiredFieldValidator>  
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="must be whole number higer than 0" MaximumValue="9999" MinimumValue="0" Type="Integer" ControlToValidate="txtId" ValidationGroup="valForm1" ForeColor="Red"></asp:RangeValidator>
                    
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style1">  
                        Last Name </td>  
                    <td class="auto-style1">  
            <asp:TextBox ID="txtLastName" Width="150px" runat="server"></asp:TextBox>  
                         </td>
                </tr>  
                <tr>  
                    <td> First Name </td>  
             <td>  
            <asp:TextBox ID="txtFirstName" Width="150px" runat="server"></asp:TextBox>  
             </td>  
                </tr>  
                <tr>  
                    <td> Telephone Number </td>  
                    <td>  
            <asp:TextBox ID="txtPhone" Width="150px" runat="server"></asp:TextBox>  
                    </td>
                </tr>
                 <tr>  
                    <td> Zip </td>  
                    <td>  
           <asp:TextBox ID="txtZip" Width="150px" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        Hire Date </td>  
                    <td>  
            <asp:label ID="lblHireDate" Width="150px" runat="server"></asp:label>  
                    </td>  
                </tr> 
                <tr>  
                    <td align="center" colspan="2">  
         <asp:Button ID="BtnSave" runat="server" Width="100px" Text="Save" OnClick="BtnSave_Click" style="margin-left: 0px" ValidationGroup="valForm1" />  
         <asp:Button ID="BtnSave0" runat="server" Width="100px" Text="Delete" OnClick="BtnDelete_Click" ValidationGroup="valForm1" />  
                    </td>  
                </tr>  
                                <tr>  
                    <td align="center" colspan="2">  
         <asp:Button ID="Button3" runat="server" Width="203px" Text="Search by Last Name/ Phone" OnClick="BtnFind_Click" Height="19px" style="margin-right: 15px; margin-top: 0px" ValidationGroup="valForm2" />  
                    </td>  
                </tr>  
                    
            </table>  
        </div> 
    </div>
       <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="820px">
        
    </asp:GridView>  
    </form>
   
</body>
</html>
