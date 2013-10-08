
'Programmer: Zhaoyang Dai
'Student ID: 00719596

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub BtnCalcSalary_Click(sender As Object, e As EventArgs) Handles BtnCalcSalary.Click

        'declare variables
        Dim hourlyWage As Double
        Dim numOfHrs As Double
        Dim preTax As Double
        Dim afterTax As Double
        Dim taxRate As Double
        Dim preTaxSalary As Double
        Dim afterTaxSalary As Double

        hourlyWage = CDbl(TBHourlyWage.Text)
        numOfHrs = CDbl(TBNumOfHrs.Text)
        preTax = CDbl(TBPreTax.Text)
        afterTax = CDbl(TBAfterTax.Text)

        'calculate pre-tax salary
        preTaxSalary = hourlyWage * numOfHrs + preTax

        'test if pre-tax salary is greater than $500
        If preTaxSalary < 500 Then
            taxRate = 0.18
        ElseIf preTaxSalary >= 500 Then
            taxRate = 0.22
        End If

        'calculate after tax salary
        afterTaxSalary = preTaxSalary * (1 - taxRate) + afterTax

        LblSalary.Text = FormatCurrency(afterTaxSalary)

    End Sub

    Protected Sub BtnClear_Click(sender As Object, e As EventArgs) Handles BtnClear.Click

        'clear all values
        TBHourlyWage.Text = String.Empty
        TBNumOfHrs.Text = String.Empty
        TBPreTax.Text = String.Empty
        TBAfterTax.Text = String.Empty
        LblSalary.Text = String.Empty
        TBHourlyWage.Focus()

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        'focus on TBHourlyWage textbox when page is load
        TBHourlyWage.Focus()

    End Sub
End Class
