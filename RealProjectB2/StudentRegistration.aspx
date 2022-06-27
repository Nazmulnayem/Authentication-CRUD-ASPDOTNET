<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout/admin.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="RealProjectB2.StudentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <%--<div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Student Register</h1>
            
        </div>--%>
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <div>
                    <div class="text-center">
                        <h1 class="h4 text-gray-900 mb-4">Student Register!</h1>
                    </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="exampleFirstName"
                                    placeholder="First Name">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" class="form-control form-control-user" id="exampleLastName"
                                    placeholder="Last Name">
                            </div>
                        </div>
                    <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                placeholder="Email Address">
                            </div>
                            <div class="col-sm-6">
                              <input type="text" class="form-control form-control-user" id="exampleInputRoll"
                                placeholder="Roll">
                            </div>
                        </div>
                    <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="text" class="form-control form-control-user" id="exampleInputClass"
                                placeholder="Class">
                            </div>
                            <div class="col-sm-6">
                               <select class="form-control form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option selected>Section</option>
                                <option value="1">A</option>
                                <option value="2">B</option>
                                <option value="3">C</option>
                            </select>
                            </div>
                        </div>
                       
                 
                        <div class="form-group">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                <label class="form-check-label" for="inlineCheckbox1">Shift(Morning)</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option2">
                                <label class="form-check-label" for="inlineCheckbox1">Shift(Day)</label>
                            </div>
                            
                        </div>
                    <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                               <input type="number" class="form-control form-control-user" id="exampleInputRoll"
                                placeholder="Parants phone number">
                            </div>
                            <div class="col-sm-6">
                              <input type="number" class="form-control form-control-user" id="exampleInputRoll"
                                placeholder="Student phone number">
                            </div>
                        </div>

                        
                    
                    <div class="form-group">

                        <label for="exampleFormControlTextarea1" class="form-label">Present Address</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>

                    </div>
                    <div class="form-group">

                        <label for="exampleFormControlTextarea1" class="form-label">Permanent Address</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>

                    </div>
                        <div class="form-group row">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                <input type="password" class="form-control form-control-user"
                                    id="exampleInputPassword" placeholder="Password">
                            </div>
                            <div class="col-sm-6">
                                <input type="password" class="form-control form-control-user"
                                    id="exampleRepeatPassword" placeholder="Repeat Password">
                            </div>
                        </div>
                        <a href="login.html" class="btn btn-primary btn-user btn-block">Register Account
                                </a>
                        <hr>
                        <%--<a href="index.html" class="btn btn-google btn-user btn-block">
                            <i class="fab fa-google fa-fw"></i>Register with Google
                                </a>
                        <a href="index.html" class="btn btn-facebook btn-user btn-block">
                            <i class="fab fa-facebook-f fa-fw"></i>Register with Facebook
                                </a>--%>
                    <hr>
                    <%--<div class="text-center">
                        <a class="small" href="forgot-password.html">Forgot Password?</a>
                    </div>
                    <div class="text-center">
                        <a class="small" href="login.html">Already have an account? Login!</a>
                    </div>--%>
                </div>
            </div>
            <div class="col-md-3">
            </div>

        </div>

    </div>
</asp:Content>
