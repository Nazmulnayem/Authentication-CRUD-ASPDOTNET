<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout/admin.Master" AutoEventWireup="true" CodeBehind="studentContact.aspx.cs" Inherits="RealProjectB2.Student.studentContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript"> 
        function chkNumber(cntId) {
            var val = document.getElementById(cntId).value;
            var mainC = document.getElementById(cntId);
            var chkDigit = /^\d*$/;
            if (chkDigit.test(val)) {
                mainC.style.backgroundColor="white";
            }
            else {
                alert('invalide number');
                mainC.value = "";
                mainC.style.backgroundColor = "red"
            }
        }
    </script>
     <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Contact Info</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i>Generate Report</a>
    </div>
    <div class="card">
        <div id="divMsg" runat="server" class="alert alert-danger">
                            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                        </div>
        <div class="card-header bg-gradient-primary text-light">
            Personal details
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-3">
                    <label class="col-form-label"> Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label class="col-form-label">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>


                     <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"  ErrorMessage="invalide mail formate" CssClass="text-danger"></asp:RegularExpressionValidator>
                </div>
              <div class="col-md-3">
                    <label class="col-form-label">ContactNumber</label>
                    <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="revNumber" runat="server" ControlToValidate="txtContactNumber" ValidationExpression="^(((\+|00)?880)|0)(\d){10}$" ErrorMessage="invalide number formate" CssClass="text-danger"></asp:RegularExpressionValidator>
                </div>
                </div>
               
               

            </div>
            
            <div class="row">
                 <div class="col-md-3">
                    <label class="col-form-label">Social</label>
                    <asp:TextBox ID="txtSocial" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
              
                <div class="col-md-3">

                    <label class="col-form-label">Entry by</label>
                    <asp:DropDownList ID="entryBy" CssClass="form-control" runat="server">
                        <asp:ListItem Value="0">Select..</asp:ListItem>
                        <asp:ListItem Value="1">Nazmul</asp:ListItem>
                        <asp:ListItem Value="2">Admin</asp:ListItem>
                    </asp:DropDownList>


                </div>
                <div class="col-md-3">
                    <label class="col-form-label">EntryDate</label>
                    <asp:TextBox ID="entryDate"  runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3" style="margin-top:35px; top: 0px; left: 0px;">
                    <asp:HiddenField ID="hdnEditCid" runat="server" />
                    <asp:Button ID="contactButton" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="contactButton_Click" />
                </div>
                

            </div>
            

        </div>
    <div class="card">
        
      
        <div class="card-header bg-gradient-primary text-light">
            User Contact info
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-12">
                   
                    <asp:GridView ID="gvcontact" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" OnRowCommand="gvcontact_RowCommand">
                        <Columns>
                            
                            <asp:BoundField HeaderText="Name" DataField="Name"/>
                            <asp:BoundField HeaderText="ContactEmail"  DataField="ContactEmail"/>
                            <asp:BoundField HeaderText="Social" DataField="Social"/>
                            <asp:BoundField HeaderText="cntContact" DataField="cntContact"/>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HiddenField ID="hdnCid" runat="server" Value='<%# Eval("Cid") %>' />
                                    <asp:ImageButton ID="ibEdit" runat="server" CommandName="editC" CommandArgument="<%# Container.DataItemIndex %>" AlternateText="Edit" ImageUrl="~/Assets/img/action.jpg" Width="30px" />
                                </ItemTemplate>
                                
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                    
                </div>
            </div>

        </div>
    </div>

    </div>
   
</asp:Content>
