
Partial Class _Default
    Inherits System.Web.UI.Page

    Public wage As Decimal = 0
  
    Protected Sub BTN_Submit_Click(sender As Object, e As System.EventArgs) Handles BTN_Submit.Click

        'Create variables for calculation
        Dim HrWage As Decimal = TB_HrWage.Text
        Dim Hours As Decimal = TB_Hours.Text

        'Calculate hours wage
        wage = HrWage * Hours

        'Display final wage in the label
        LBL_Wage.Text = String.Format("{0:C}", wage)

        'Clear out textbox content
        TB_Hours.Text = ""
        TB_HrWage.Text = ""


    End Sub

    Protected Sub BTN_Submit0_Click(sender As Object, e As System.EventArgs) Handles BTN_Submit0.Click
       

        'Dim Varianles for calculation
        Dim PretaxDeduct As Decimal = TB_Pretax.Text
        Dim TempWage As Decimal = 0
        Dim Tax1 As Decimal = 0

        'Calculate tempwage after pretax deduction
        TempWage = LBL_Wage.Text - PretaxDeduct

        'Display tempwage in label
        lbl_Temp1.Text = String.Format("{0:C}", TempWage)

        'Calculate tempwage tax expense
        Tax1 = TempWage * 0.18
        lbl_temptax.Text = String.Format("{0:C}", Tax1)

        'Clear our textbox content
        TB_Pretax.Text = ""
    End Sub

   
    Protected Sub BTN_Cal_Click(sender As Object, e As System.EventArgs) Handles BTN_Cal.Click

        'Dim variables for calculation

        Dim TaxExp As Decimal = 0
        Dim Netpay As Decimal = 0

        'calculate tax expense with aftertax deduction
        TaxExp = lbl_temptax.Text - TB_AfTax.Text

        'Display tax expense in label
        lbl_finaltp.Text = String.Format("{0:C}", TaxExp)

        'Calculate final net pay and display
        Netpay = lbl_Temp1.Text.ToString - lbl_finaltp.Text.ToString
        lbl_finalti.Text = String.Format("{0:C}", Netpay)

        'Relcate focus
        lbl_finalti.Focus()

        'Clear out textbox content
        TB_AfTax.Text = ""


    End Sub

    Protected Sub BTN_Clear_Click(sender As Object, e As System.EventArgs) Handles BTN_Clear.Click

   
        'Clear all entered information and results
        TB_Hours.Text = ""
        TB_HrWage.Text = ""
        LBL_Wage.Text = ""
        TB_Pretax.Text = ""
        lbl_Temp1.Text = ""
        lbl_temptax.Text = ""
        TB_AfTax.Text = ""
        lbl_finalti.Text = ""
        lbl_finaltp.Text = ""

    End Sub

    Private Sub C(Optional p1 As Object = Nothing, Optional wage As Decimal = Nothing)
        Throw New NotImplementedException
    End Sub

End Class
