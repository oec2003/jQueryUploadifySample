<%@ Page Title="" Language="C#" MasterPageFile="~/Demo3.2.1.Master" AutoEventWireup="true" CodeBehind="auto.aspx.cs" Inherits="jQueryUploadify.WebForm.Sample.Demo3._2._1.Options.auto" %>

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
                                <i class="fa fa-gift"></i>auto 示例 auto=true
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

                       <!-- BEGIN GENERAL PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-gift"></i>auto 示例 auto=false
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <input type="file" name="uploadify" id="uploadify1" />


                                    <a class="btn" href="javascript:$('#uploadify1').uploadify('upload')">Upload Files</a>
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
                                <li>auto属性控制当选择了文件后是否自动上传文件</li>
                                <li>不设置该属性，默认为true</li>
                                <li>如果设置auto='false'，则需要添加单独按钮来执行上传事件</li>
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
                height: 30,
                swf: '../../scripts/uploadify/uploadify.swf',
                uploader: '../../UploadHandler.ashx',
                width: 120
            });


            $("#uploadify1").uploadify({
                height: 30,
                auto: false,
                swf: '../../scripts/uploadify/uploadify.swf',
                uploader: '../../UploadHandler.ashx',
                width: 120
            });
        });

    </script>
</asp:Content>
