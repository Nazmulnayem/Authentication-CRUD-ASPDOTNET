<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RealProjectB2.Auth.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Custom fonts for this template-->
    <link href="../Assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../Assets/css/sb-admin-2.min.css" rel="stylesheet" />

    <%-- my css--%>
    <link href="../Assets/css/custom.css" rel="stylesheet" />
    <style>
        .input-group-text, form-control {
            border-radius: 0px !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid bg-gradient-success vh-100">
            <div class="contaniner">
                <div class="row justify-content-center">
                    <div class="col-md-4 mt-3">
                        <div class="site_logo text-center">
                            <img class="img-fluid w-50" src="../Assets/img/logo1.png" alt="" />
                        </div>
                        


                    </div>
                    <div class="col-md-10">
                        <div id="divMsg" runat="server" class="alert alert-danger">
                            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="card">
                            <div class="card-header bg-gradient-primary text-light">
                                Register
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label class="col-form-label">User Name</label>
                                        <asp:TextBox ID="txtuserName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label">First Name</label>
                                        <asp:TextBox ID="txtfirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label">Middle Name</label>
                                        <asp:TextBox ID="txtmiddleName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <label class="col-form-label">Last Name</label>
                                        <asp:TextBox ID="txtlastName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="row">
                                </div>
                                <div class="row">
                                    <div class="col-md-4">

                                        <label class="col-form-label">Contact Number</label>
                                        <asp:TextBox ID="ContactNumber" runat="server" CssClass="form-control"></asp:TextBox>

                                    </div>
                                    
                                    <div class="col-md-4">
                                        <label class="col-form-label">Email</label>
                                        <asp:TextBox ID="Email" TextMode="Email" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="col-form-label">Date of Birth</label>
                                        <asp:TextBox ID="DOB" runat="server"  CssClass="form-control"></asp:TextBox>
                                    </div>


                                </div>
                                <div class="row">

                                    <div class="col-md-4">
                                        <label class="col-form-label">Gender</label>
                                        <asp:DropDownList ID="gender" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="0">Select..</asp:ListItem>
                                            <asp:ListItem Value="1">Male</asp:ListItem>
                                            <asp:ListItem Value="2">Female</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-4">
                                        <label class="col-form-label">Religion</label>
                                        <asp:DropDownList ID="religion" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="0">Select..</asp:ListItem>
                                            <asp:ListItem Value="1">Islam</asp:ListItem>
                                            <asp:ListItem Value="2">Christian</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    

                                    <div class="col-md-4">
                                        <label class="col-form-label">Nationality</label>
                                        <asp:TextBox ID="txtnationality" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>


                                </div>
                                <div class="row">


                                    <div class="col-md-6">
                                        <label class="col-form-label">Address</label>
                                        <asp:TextBox ID="Address" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="col-form-label">Photo</label>
                                        <asp:FileUpload CssClass="form-control" ID="fluserimg" runat="server" />
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="input-group flex-nowrap mt-3">
                                    
                                   
                                    <asp:Button ID="btnreg" CssClass="form-control btn btn-success" runat="server" Text="Login" OnClick="btnreg_Click" />
                                </div>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </form>
    <!-- Bootstrap core JavaScript-->
    <script src="../Assets/vendor/jquery/jquery.min.js"></script>
    <script src="../Assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../Assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../Assets/js/sb-admin-2.min.js"></script>
    <!-- Page level plugins -->
    <script src="../Assets/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../Assets/js/demo/chart-area-demo.js"></script>
    <script src="../Assets/js/demo/chart-pie-demo.js"></script>
</body>
</html>
