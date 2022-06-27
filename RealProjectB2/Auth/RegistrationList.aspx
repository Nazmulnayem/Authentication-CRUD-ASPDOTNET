<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout/admin.Master" AutoEventWireup="true" CodeBehind="RegistrationList.aspx.cs" Inherits="RealProjectB2.Auth.RegistrationList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">User Registration Info</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i></a>
    </div>
    <div class="card">
        
        <div class="card-body">
             <div class="row">
                 <div class="col-md-5">
                   <label class="col-form-label">Religion</label>
                                        <asp:DropDownList ID="ddlreligion" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="0">Select..</asp:ListItem>
                                            <asp:ListItem Value="1">Islam</asp:ListItem>
                                            <asp:ListItem Value="2">Christian</asp:ListItem>
                                        </asp:DropDownList>
                 </div>
                 <div class="col-md-5">
                     <label class="col-form-label">Gender</label>
                                        <asp:DropDownList ID="ddlgender" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="0">Select..</asp:ListItem>
                                            <asp:ListItem Value="1">Male</asp:ListItem>
                                            <asp:ListItem Value="2">Female</asp:ListItem>
                                        </asp:DropDownList>
                 </div>
                 <div class="col-md-2" style="margin-top:35px;">
                     
                     <asp:Button runat="server" id="btnsearch" Text="Button" CssClass="btn btn-success " OnClick="btnsearch_Click" />
                 </div>

             </div>
        </div>
        <div class="card-header bg-gradient-primary text-light">
            User Registratin info
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="gvRegList" runat="server" CssClass="table table-striped">

                    </asp:GridView>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
