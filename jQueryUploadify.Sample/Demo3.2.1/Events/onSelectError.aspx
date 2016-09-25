<%@ Page Title="" Language="C#" MasterPageFile="~/Demo3.2.1.Master" AutoEventWireup="true" CodeBehind="onSelectError.aspx.cs" Inherits="jQueryUploadify.WebForm.Sample.Demo3._2._1.Events.onSelectError" %>
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
                                <i class="fa fa-gift"></i>onSelectError 示例
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
                                <li>当选择文件不符合设置的时候触发，有下列四种情况：</li>
                                <ul>
                                    <li>QUEUE_LIMIT_EXCEEDED：文件数超过文件队列的最大设置</li>
                                    <li>FILE_EXCEEDS_SIZE_LIMIT：文件的大小超过列文件大小的最大设置</li>
                                    <li>ZERO_BYTE_FILE：空文件</li>
                                    <li>INVALID_FILETYPE：文件类型不符合文件类型的设置</li>
                                </ul>
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
                'fileSizeLimit': '50KB',
                'swf': '../../scripts/uploadify/uploadify.swf',
                'uploader': '../../UploadHandler.ashx',
                'onSelectError': function () {
                    alert('The file ' + file.name + ' returned an error and was not added to the queue.');
                }
            });
        });

    </script>
</asp:Content>