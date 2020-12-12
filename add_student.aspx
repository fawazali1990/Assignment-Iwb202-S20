<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_student.aspx.cs" Inherits="Students.add_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="ar">
<head runat="server">
    <title>تسجيل طالب جديد</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
    <link href="Content/style.css" rel="stylesheet" />  
</head>
<body onload="document.getElementById('txt_first_name').focus();">
    <form id="form1" runat="server" action="result.aspx">
        <h1>تسجيل طالب جديد :</h1>
        <br />
        <h4 class="display">الاسم :</h4>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" CssClass="error" ValidationGroup="sss" ControlToValidate="txt_first_name" ErrorMessage="حقل اجباري"></asp:RequiredFieldValidator>
        <asp:TextBox runat="server" ID="txt_first_name" CssClass="form-control"></asp:TextBox>

        <h4 class="display">الشهرة :</h4>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" CssClass="error" ValidationGroup="sss" ControlToValidate="txt_last_name" ErrorMessage="حقل اجباري"></asp:RequiredFieldValidator>
        <asp:TextBox runat="server" ID="txt_last_name" CssClass="form-control"></asp:TextBox>

        <h4 class="display">العمر :</h4>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="يجب أن يكون العمر بين 19 وَ 49" CssClass="error" ValidationGroup="sss" Display="Dynamic" MinimumValue="19" MaximumValue="49" ControlToValidate="txt_age"></asp:RangeValidator>
        <asp:TextBox runat="server" ID="txt_age" CssClass="form-control"></asp:TextBox>

        <h4 class="display">الرقم الوطني :</h4>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="الرقم يجب أن يبدأ ب 0 أو 1" ValidationGroup="sss" CssClass="error" Display="Dynamic" ValidationExpression="^[0-1][0-9]*" ControlToValidate="txt_social_number"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="الرقم يجب أن يكون مؤلف من 11 خانة" ValidationGroup="sss" CssClass="error" Display="Dynamic" ValidationExpression="^[0-9]{11}$" ControlToValidate="txt_social_number"></asp:RegularExpressionValidator>
        <asp:TextBox runat="server" ID="txt_social_number" CssClass="form-control"></asp:TextBox>

        <h4 class="display">العنوان :</h4>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ValidationGroup="sss" CssClass="error" ValidationExpression="^[\u0621-\u064Aa-zA-Z]+$" ErrorMessage="العنوان يجب أن يحوي محارف فقط" ControlToValidate="txt_address"></asp:RegularExpressionValidator>
        <asp:TextBox runat="server" ID="txt_address" CssClass="form-control"></asp:TextBox>

        <h4 class="display">شهر التخرج :</h4>
        <asp:DropDownList runat="server" ID="Ddl_month" Font-Size="Smaller" Font-Bold="true" CssClass="form-control">
            <asp:ListItem Value="" Selected="True">--اختر الشهر--</asp:ListItem>
            <asp:ListItem Value="1">كانون الثاني</asp:ListItem>
            <asp:ListItem Value="2">شباط</asp:ListItem>
            <asp:ListItem Value="3">آذار</asp:ListItem>
            <asp:ListItem Value="4">نيسان</asp:ListItem>
            <asp:ListItem Value="5">أيار</asp:ListItem>
            <asp:ListItem Value="6">حزيران</asp:ListItem>
            <asp:ListItem Value="7">تموز</asp:ListItem>
            <asp:ListItem Value="8">آب</asp:ListItem>
            <asp:ListItem Value="9">أيلول</asp:ListItem>
            <asp:ListItem Value="10">تشرين الأول</asp:ListItem>
            <asp:ListItem Value="11">تشرين الثاني</asp:ListItem>
            <asp:ListItem Value="12">كانون الأول</asp:ListItem>
        </asp:DropDownList>


        <h4 class="display">سنة التخرج :</h4>
        <asp:DropDownList runat="server" ID="Ddl_year" Font-Size="Smaller" Font-Bold="true" CssClass="form-control">
            <asp:ListItem Value="" Selected="True">--اختر السنة--</asp:ListItem>
            <asp:ListItem Value="2000">2000</asp:ListItem>
            <asp:ListItem Value="2001">2001</asp:ListItem>
            <asp:ListItem Value="2002">2002</asp:ListItem>
            <asp:ListItem Value="2003">2003</asp:ListItem>
            <asp:ListItem Value="2004">2004</asp:ListItem>
            <asp:ListItem Value="2005">2005</asp:ListItem>
            <asp:ListItem Value="2006">2006</asp:ListItem>
            <asp:ListItem Value="2007">2007</asp:ListItem>
            <asp:ListItem Value="2008">2008</asp:ListItem>
            <asp:ListItem Value="2009">2009</asp:ListItem>
            <asp:ListItem Value="2010">2010</asp:ListItem>
            <asp:ListItem Value="2011">2011</asp:ListItem>
            <asp:ListItem Value="2012">2012</asp:ListItem>
            <asp:ListItem Value="2013">2013</asp:ListItem>
            <asp:ListItem Value="2014">2014</asp:ListItem>
            <asp:ListItem Value="2015">2015</asp:ListItem>
            <asp:ListItem Value="2016">2016</asp:ListItem>
            <asp:ListItem Value="2017">2017</asp:ListItem>
            <asp:ListItem Value="2018">2018</asp:ListItem>
            <asp:ListItem Value="2019">2019</asp:ListItem>
            <asp:ListItem Value="2020">2020</asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />

        <asp:Button runat="server" ID="btn_Add" CssClass="btn btn-main" ValidationGroup="sss" Width="100%" Text="تسجيل" />

        <br />
        <br />
        <a href="home.html" class="btn btn-main">العودة للصفحة الرئيسية</a>
    </form>
</body>
</html>
