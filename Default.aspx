<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size:10pt;
        }
    </style>
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
   <script type="text/javascript">
       $(function () {
           $("[id*=chkAll]").bind("click", function () {
               if ($(this).is(":checked")) {
                   $("[id*=chkFruits] input").attr("checked", "checked");
               } else {
                   $("[id*=chkFruits] input").removeAttr("checked");
               }
           });
           $("[id*=chkFruits] input").bind("click", function () {
               if ($("[id*=chkFruits] input:checked").length == $("[id*=chkFruits] input").length) {
                   $("[id*=chkAll]").attr("checked", "checked");
               } else {
                   $("[id*=chkAll]").removeAttr("checked");
               }
           });
       });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:CheckBox ID="chkAll" Text="Select All" runat="server" />
<asp:CheckBoxList ID="chkFruits" runat="server">
    <asp:ListItem Text="Mango" />
    <asp:ListItem Text="Apple" />
    <asp:ListItem Text="Banana" />
    <asp:ListItem Text="Pineapple" />
    <asp:ListItem Text="Guava" />
    <asp:ListItem Text="Grapes" />
    <asp:ListItem Text="Papaya" />
</asp:CheckBoxList>
    </form>
</body>
</html>
