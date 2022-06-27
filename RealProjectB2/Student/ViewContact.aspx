<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout/admin.Master" AutoEventWireup="true" CodeBehind="ViewContact.aspx.cs" Inherits="RealProjectB2.Student.ViewContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">User Contact info</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i></a>
    </div>
    <div class="card">
        
      
        <div class="card-header bg-gradient-primary text-light">
            User Contact info
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                   
                    <asp:GridView ID="gvcontact" runat="server" CssClass="table table-striped" >

                    </asp:GridView>
                    
                </div>
            </div>

        </div>
    </div>
</asp:Content>
