<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Calculator</title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet.css" /> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Salary Calculator</h2>
        <p>This web application can help you estimate your net pay.</p>
        <hr />
        <br />

         <table>
            <tr>
                <td align="right"><span class="fontstyle">Hourly Wage:</span></td><td align="left">&nbsp; <asp:TextBox ID="TBHourlyWage" runat="server" TabIndex="1" BackColor="Yellow" BorderColor="Red" BorderStyle="Dashed" Font-Bold="True" Font-Names="Chiller" Font-Size="Larger"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RFVHourlyWage" runat="server" ControlToValidate="TBHourlyWage" ErrorMessage="Please enter your hourly wage." Font-Bold="True" Font-Italic="True" Font-Names="Chiller" Font-Size="Larger"></asp:RequiredFieldValidator>
                </td>
            </tr>
       
            <tr>
                <td align="right"><span class="fontstyle">Number of Hours:</span></td><td align="left">&nbsp; <asp:TextBox ID="TBNumOfHrs" runat="server" TabIndex="2" BackColor="Yellow" BorderColor="Red" BorderStyle="Dashed" Font-Bold="True" Font-Names="Chiller" Font-Size="Larger"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RFVNumOfHrs" runat="server" ControlToValidate="TBNumOfHrs" ErrorMessage="Please enter the number of hours you work." Font-Bold="True" Font-Names="Chiller" Font-Size="Larger"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td align="right"><span class="fontstyle">Pre-tax Deduction:</span></td><td align="left">&nbsp; <asp:TextBox ID="TBPreTax" runat="server" TabIndex="3" BackColor="Yellow" BorderColor="Red" BorderStyle="Dashed" Font-Bold="True" Font-Names="Chiller" Font-Size="Larger"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RFVPreTax" runat="server" ControlToValidate="TBPreTax" ErrorMessage="Please enter the amount of all your pre-tax deductions." Font-Bold="True" Font-Names="Chiller" Font-Size="Larger"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td align="right"><span class="fontstyle">After Tax Deduction:</span></td><td align="left">&nbsp; <asp:TextBox ID="TBAfterTax" runat="server" TabIndex="4" BackColor="Yellow" BorderColor="Red" BorderStyle="Dashed" Font-Bold="True" Font-Names="Chiller" Font-Size="Larger"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RFVAfterTax" runat="server" ControlToValidate="TBAfterTax" ErrorMessage="Please enter the amount of all your after tax deductions." Font-Bold="True" Font-Names="Chiller" Font-Size="Larger"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>

        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="BtnCalcSalary" runat="server" Text="Calculate" Font-Bold="True" Font-Italic="False" Font-Names="Chiller" Font-Size="Larger" BackColor="Yellow" BorderColor="Red" BorderStyle="Dotted" ForeColor="Red" TabIndex="5" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnClear" runat="server" Text="Clear" Font-Bold="True" Font-Names="Chiller" Font-Size="Larger" BackColor="Yellow" BorderColor="Red" BorderStyle="Dotted" ForeColor="Red" TabIndex="6" />
        <br />
        <br />
        <span class="fontstyle">Your Salary is</span>&nbsp; <asp:Label ID="LblSalary" runat="server" Font-Bold="True" Font-Names="Chiller" Font-Size="Larger"></asp:Label>
    
    </div>
    </form>
</body>
</html>
