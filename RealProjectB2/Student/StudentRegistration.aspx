<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout/admin.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="RealProjectB2.Student.StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .form-control {
            border-radius: 0px !important;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Student Registration Info</h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i>Generate Report</a>
    </div>
    <div class="card">
        <div class="card-header bg-gradient-primary text-light">
            Personal details
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <label class="col-form-label">First Name</label>
                    <asp:TextBox ID="txtfirstName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label class="col-form-label">Last Name</label>
                    <asp:TextBox ID="txtlastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

            </div>
            <div class="row">
            </div>
            <div class="row">
                <div class="col-md-3">

                    <label class="col-form-label">Contact Number</label>
                    <asp:TextBox ID="ContactNumber" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="col-md-3">

                    <label class="col-form-label">Alternative Contact Number</label>
                    <asp:TextBox ID="AlternativeContactNumber" runat="server" CssClass="form-control"></asp:TextBox>


                </div>
                <div class="col-md-6">
                    <label class="col-form-label">Email</label>
                    <asp:TextBox ID="Email" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                </div>


            </div>
            <div class="row">

                <div class="col-md-3">
                    <label class="col-form-label">Gender</label>
                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem>Select..</asp:ListItem>
                        <asp:ListItem Value="1">Male</asp:ListItem>
                        <asp:ListItem Value="2">Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <label class="col-form-label">Student Type</label>
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                        <asp:ListItem>Select..</asp:ListItem>
                        <asp:ListItem Value="1">Day</asp:ListItem>
                        <asp:ListItem Value="2">Morning</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <label class="col-form-label">Date of Birth</label>
                    <asp:TextBox ID="DOB" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-md-3">
                    <label class="col-form-label">Post Code</label>
                    <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control"></asp:TextBox>
                </div>


            </div>
            <div class="row">


                <div class="col-md-6">
                    <label class="col-form-label">Address</label>
                    <asp:TextBox ID="Address" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                </div>



            </div>

        </div>

    </div>
    <div class="card">
        <div class="card-header bg-gradient-primary text-light">
            Educational details
        </div>
        <div class="card-body">

            <div class="row">

                <div class="col-md-3">
                    <label class="col-form-label">Level Certificate</label>
                    <asp:DropDownList ID="LevelCertificate" CssClass="form-control" runat="server">
                        <asp:ListItem>Select..</asp:ListItem>
                        <asp:ListItem Value="1">Graduation</asp:ListItem>
                        <asp:ListItem Value="2">Post Graduations</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <label class="col-form-label">Result</label>
                    <asp:TextBox ID="txtresult" runat="server" CssClass="form-control"></asp:TextBox>
                </div>


                <div class="col-md-3">
                    <label class="col-form-label">Board</label>
                    <asp:DropDownList ID="ddlboard" CssClass="form-control" runat="server">
                        <asp:ListItem>Select..</asp:ListItem>
                        <asp:ListItem Value="1">Dhaka</asp:ListItem>
                        <asp:ListItem Value="2">Chattogram</asp:ListItem>
                        <asp:ListItem Value="1">Cumilla</asp:ListItem>
                        <asp:ListItem Value="2">khulna</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <label class="col-form-label">Passing Year</label>
                    <asp:TextBox ID="txtPassingYear" runat="server" CssClass="form-control"></asp:TextBox>
                </div>




            </div>

            <div class="row">
                <div class="col-md-6">
                    <label class="col-form-label">Photo</label>
                    <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />
                </div>
                <div class="col-md-6 mt-2">
                    <br />
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary form-control" />
                </div>
            </div>
        </div>

    </div>
    <div class="card">
        <div class="card-header bg-gradient-primary text-light">
            Gurdian details
        </div>
        <div class="card-body">

            <div class="row">
                <div class="col-md-6">
                    <label class="col-form-label">Fathers Name</label>
                    <asp:TextBox ID="txtfathersName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label class="col-form-label">Fathers Occupation</label>

                    <asp:RadioButtonList ID="radiobutton" CssClass="mr-5" runat="server" RepeatDirection="Horizontal" CellPadding="5">
                        <asp:ListItem>Select..</asp:ListItem>
                        <asp:ListItem Value="1">Service worker</asp:ListItem>
                        <asp:ListItem Value="2">Businessman</asp:ListItem>
                        <asp:ListItem Value="3">Farmers</asp:ListItem>
                        <asp:ListItem Value="4">others</asp:ListItem>

                    </asp:RadioButtonList>
                </div>



            </div>
            <div class="row">

                <div class="col-md-6">
                    <label class="col-form-label">Fathers email</label>
                    <asp:TextBox ID="Fathersemail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label class="col-form-label">Fathers Contact Number</label>
                    <asp:TextBox ID="txtfatherContactNumber" runat="server" CssClass="form-control"></asp:TextBox>
                </div>


            </div>

        </div>

    </div>
</asp:Content>
