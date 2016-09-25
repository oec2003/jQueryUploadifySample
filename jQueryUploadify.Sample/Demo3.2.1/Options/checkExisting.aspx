<%@ Page Title="" Language="C#" MasterPageFile="~/Demo3.2.1.Master" AutoEventWireup="true" CodeBehind="checkExisting.aspx.cs" Inherits="jQueryUploadify.WebForm.Sample.Demo3._2._1.Options.checkExisting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <!-- BEGIN GENERAL PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-gift"></i>buttonExisting 示例
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <input type="file" name="uploadify" id="uploadify" />

                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="portlet box blue-hoki">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-gift"></i>说明
                            </div>
                            <div class="tools">
                                <a href="javascript:;" class="collapse" data-original-title="" title=""></a>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <ol>
                                <li>设置文件在上传目录中是否重复，默认为不做校验</li>
                                <li>校验方法返回1表示文件存在，返回0表示文件不存在</li>
                                <li>如果文件存在，会弹出提示框确认是否覆盖</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script type="text/javascript" src="../../scripts/uploadify/jquery.uploadify.js"></script>
    <script type="text/javascript">

        $(function () {
            $("#uploadify").uploadify({
                'checkExisting': '../../CheckExistHandler.ashx',
                'swf': '../../scripts/uploadify/uploadify.swf',
                'uploader': '../../UploadHandler.ashx'
            });
        });

    </script>
</asp:Content>
