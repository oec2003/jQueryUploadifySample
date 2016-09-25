<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="jQueryUploadify.WebForm.Sample.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="scripts/uploadify/uploadify.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="scripts/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="scripts/uploadify/jquery.uploadify.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
       
            $(function () {
                $("#uploadify").uploadify({
                    height: 30,
                    swf: 'scripts/uploadify/uploadify.swf',
                    uploader: 'UploadHandler.ashx',
                    width: 120
                });
            });
        });
    </script>
</head>
<body>
  
    <input type="file" name="uploadify" id="uploadify" />
   
</body>
</html>
