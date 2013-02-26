<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wage Calculator</title>
    <link rel="stylesheet" type="text/css" href="Wage Calculator.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div id="Welcome_Header">Wage Calculator</div><br />
        <br />
        <div class="footnote">Please follow the steps and enter the infromation</div><br />
        <br />
        <h1>Step1: Gross Wage</h1>
        <br />
        Hourly Wage (Example:23.99):<asp:TextBox ID="TB_HrWage" runat="server"></asp:TextBox>
        <br />
        Hours Worked (Example: 8.50):<asp:TextBox ID="TB_Hours" runat="server"></asp:TextBox>
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="BTN_Submit" runat="server" Text="Submit" />
        <br />
        <br />
        <div class="result">Gross Pay/Taxable Income:&nbsp; <asp:Label ID="LBL_Wage" runat="server"></asp:Label>
        </div>
        <br />
        <br />
        <br />
        <h1>Step 2: Pretax Deduction</h1><br />
        <br />
        Pretax Deduction:<asp:TextBox ID="TB_Pretax" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BTN_Submit0" runat="server" Text="Submit" />
        <br />
        <br />
        <div class="result">Temporary Taxable Income:&nbsp; <asp:Label ID="lbl_Temp1" runat="server"></asp:Label></div>
        <br />
        <div class="result">Temporary Tax Expense:&nbsp; <asp:Label ID="lbl_temptax" runat="server"></asp:Label></div>
        <br />
        <br />
        <br />
        <h1>Final Step: Aftertax Deduction</h1><br />
        <br />
        Aftertax Deduction:<asp:TextBox 
            ID="TB_AfTax" runat="server" Height="22px" Width="128px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BTN_Cal" runat="server" Text="Calculate" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="BTN_Clear" runat="server" Text="Clear All" />
        <br />
        <br />
        <br />
        <div class= "result">Final Tax Payable:&nbsp; <asp:Label ID="lbl_finaltp" runat="server"></asp:Label>
        </div>
        <br />
        <div class= "result">Final Net Pay:&nbsp; <asp:Label ID="lbl_finalti" runat="server"></asp:Label>
        </div>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
