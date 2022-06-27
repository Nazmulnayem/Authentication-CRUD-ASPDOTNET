<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RealProjectB2.Login" %>

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
        .input-group-text, form-control{
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
                            <img class="img-fluid w-50" src="Assets/img/logo1.png" alt="" />
                        </div>
                        <div id="divMsg" runat="server" class="alert alert-danger">
                            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="card mt-3">
                            <div class="card-body">
                                <div class="input-group flex-nowrap">
                                    <span class="input-group-text"><i class="fas fa-user-alt"></i></span>
                                    <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="input-group flex-nowrap mt-3 mb-2">
                                     <span class="input-group-text" ><i class="fas fa-paper-plane"></i></span>
                                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                 </div>
                                <asp:CheckBox ID="cbremember" runat="server" Text="Remember me"  />
                                <div class="input-group flex-nowrap mt-3">
                                    <span class="input-group-text"><i class="fas fa-paper-plane"></i></span>
                                   
                                    <asp:Button ID="btnlogin" CssClass="form-control btn btn-success" runat="server" Text="Login" OnClick="btnlogin_Click" />
                                </div>
                                <div class="login_links mt-3">
                                    <a href="#">Forgot Password</a>
                                    <a href="Auth/register.aspx" class="float-right">Register</a>

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
