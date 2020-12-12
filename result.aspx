<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="Students.result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>النتيجة</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body onload="window.alert('تمت عملية حفظ بيانات الطالب')">
    <form id="form1" runat="server">
        <br />
    <br />
    <a href="add_student.aspx" class="btn btn-main">تسجيل طالب جديد</a>
    <br />
    <br />
    <a href="home.html" class="btn btn-main">العودة للصفحة الرئيسية</a>
    </form>
</body>
</html>
