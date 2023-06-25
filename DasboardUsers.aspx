<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="DasboardUsers.aspx.cs" Inherits="licenta_test.DasboardUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Dashboard Users</title>
    <link href="dashboard/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="dashboard/css/sb-admin-2.min.css" rel="stylesheet">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link href="dashboard/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"> 
    <link rel="stylesheet" href="auth/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="Index.aspx?username=<%= Request.QueryString["username"] %>">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Home</div>
            </a>
            <li class="nav-item active">
                <a class="nav-link" href="DashboardIndex.aspx?username=<%= Request.QueryString["username"] %>">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <hr class="sidebar-divider">

            <li class="nav-item">
                <a class="nav-link" href="DashboardQuizzes.aspx?username=<%= Request.QueryString["username"] %>">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Quizzes</span></a>
            </li>
         
            <li class="nav-item">
                <a class="nav-link" href="DashboardAppointments.aspx?username=<%= Request.QueryString["username"] %>">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Appointments</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="DashboardMessages.aspx?username=<%= Request.QueryString["username"] %>">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Messages</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="DashboardDiary.aspx?username=<%= Request.QueryString["username"] %>">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Journal Entries</span></a>
            </li>
             <li class="nav-item">
                <a class="nav-link" href="DasboardUsers.aspx?username=<%= Request.QueryString["username"] %>">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Users</span></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="DashboardPsychologists.aspx?username=<%= Request.QueryString["username"] %>">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Psychologists</span></a>
            </li>
            
            <hr class="sidebar-divider d-none d-md-block">
        </ul>
        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                        </li>
                        <div class="topbar-divider d-none d-sm-block"></div>
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  <asp:Literal runat="server" ID="nameLiteral" Text='<%# "<span class=\"mr-2 d-none d-lg-inline text-gray-600 small\">" + Eval("Name") + "</span>" %>'></asp:Literal>
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="container-fluid">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Messages</h6>
                        </div>
                         <div style="text-align: center; margin-top:30px;">
                                  <hr class="main-hr" />
                                  <asp:Button ID="removeButton" CssClass="icon-btn add-btn" runat="server" Text="Remove" OnClick="removeButton_Click" />
                              <asp:Button ID="editButton" CssClass="icon-btn add-btn" runat="server" Text="Edit" OnClick="editButton_Click" />
                                  <asp:Button ID="addButton" CssClass="icon-btn add-btn" runat="server" Text="Add" OnClick="addButton_Click" />
                                <div class="input-field">
                <asp:TextBox id="Name" runat="server" type="text"  aria-describedby="usernameHelp"
                                                placeholder="Name"/>
            </div>
            <div class="input-field">
             
              <asp:TextBox id="Email" runat="server" type="text" placeholder="Email"/>
            </div>
                                         <div class="input-field">
             
              <asp:TextBox id="Username" runat="server" type="text" placeholder="Username"/>
            </div>
                             <div class="input-field">
             
              <asp:TextBox id="Password" runat="server" type="text" placeholder="Password"/>
            </div>
                             <div class="input-field">
             
              <asp:TextBox id="Role" runat="server" type="text" placeholder="Role"/>
            </div>
                                                     
            <asp:Button href="Index.aspx" id="b_login" Text="Save" runat="server" type="submit" value="Save" class="btn solid" OnClick="b_save_Click" />
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <asp:Table ID="usersTable" runat="server" CssClass="table table-bordered">
                                <asp:TableHeaderRow>
                                    <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                                     <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Username</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Password</asp:TableHeaderCell>
                                     <asp:TableHeaderCell>Role</asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                            </asp:Table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
         <script src="auth/app.js"></script>
    <script src="dashboard/vendor/jquery/jquery.min.js"></script>
    <script src="dashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="dashboard/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="dashboard/js/sb-admin-2.min.js"></script>
    <script src="dashboard/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="dashboard/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="dashboard/js/demo/datatables-demo.js"></script>
    </form>
</body>
</html>
