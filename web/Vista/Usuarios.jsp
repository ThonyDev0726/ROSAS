<%-- 
    Document   : Principal
    Created on : 23 ene 2023, 11:14:17
    Author     : perez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
    </head>
    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="#" class="logo d-flex align-items-center">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block">ROSAS</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div><!-- End Logo -->

            <div class="search-bar">
                <form class="search-form d-flex align-items-center" method="POST" action="#">
                    <input type="text" name="query" placeholder="Buscar" title="Buscar">
                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </form>
            </div><!-- End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">

                    <li class="nav-item d-block d-lg-none">
                        <a class="nav-link nav-icon search-bar-toggle " href="#">
                            <i class="bi bi-search"></i>
                        </a>
                    </li><!-- End Search Icon-->


                    <li class="nav-item dropdown pe-3">

                        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                        </a><!-- End Profile Iamge Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6>Pepito Perez</h6>
                                <span>Web Designer</span>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                                    <i class="bi bi-person"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                                    <i class="bi bi-gear"></i>
                                    <span>Account Settings</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                                    <i class="bi bi-question-circle"></i>
                                    <span>Need Help?</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-box-arrow-right"></i>
                                    <span>Sign Out</span>
                                </a>
                            </li>

                        </ul><!-- End Profile Dropdown Items -->
                    </li><!-- End Profile Nav -->

                </ul>
            </nav><!-- End Icons Navigation -->

        </header><!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item">
                    <a class="nav-link collapsed" href="Controller?accion=productos">
                        <i class="bi bi-grid"></i>
                        <span>PRODUCTOS</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="Controller?accion=proveedores">
                        <i class="bi bi-grid"></i>
                        <span>PROVEEDORES</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="Controller?accion=principal">
                        <i class="bi bi-grid"></i>
                        <span>USUARIOS</span>
                    </a>
                </li>

            </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModal">
                NUEVO REGISTRO
            </button>
            <div class="modal fade" id="basicModal" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Nuevo registro</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form action="action">
                            <div class="modal-body">
                                <div class="col-12">
                                    <label for="yourPassword" class="form-label">Usuario</label>
                                    <input type="text" name="password" class="form-control" id="yourPassword" required>                                    
                                </div>
                                <div class="col-12">
                                    <label for="yourPassword" class="form-label">Clave</label>
                                    <input type="password" name="password" class="form-control" id="yourPassword" required>                                    
                                </div>
                                <div class="col-12">
                                    <label for="yourPassword" class="form-label">Email</label>
                                    <input type="email" name="password" class="form-control" id="yourPassword" required>                                    
                                </div>                              
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                <input type="submit" name="name" class="btn btn-primary" value="Registrar">
                            </div>
                        </form>
                    </div>
                </div>
            </div><!-- End Basic Modal-->

            <br>
            <br>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="example3" class="display table header-border table-hover verticle-middle" style="min-width: 845px">
                                    <thead>
                                        <tr>
                                            <th class="text-primary text-center">Usuario</th>
                                            <th class="text-primary text-center">Clave</th>
                                            <th class="text-primary text-center">Email</th>
                                            <th class="text-primary text-center">Creacion</th>
                                            <th class="text-primary text-center">Accion</th>                                                    
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-center">Usuario</td>    
                                            <td class="text-center">Clave</td>  
                                            <td class="text-center">Email</td>  
                                            <td class="text-center">Creacion</td>  
                                            <td class="text-center">										
                                                <div class="dropdown">
                                                    <div class="btn btn-warning light sharp" data-bs-toggle="dropdown">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <circle cx="12.4999" cy="3.5" r="2.5" fill="#A5A5A5"></circle>
                                                        <circle cx="12.4999" cy="11.5" r="2.5" fill="#A5A5A5"></circle>
                                                        <circle cx="12.4999" cy="19.5" r="2.5" fill="#A5A5A5"></circle>
                                                        </svg>
                                                    </div>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a href="Organizaciones?accion=editar-a&idOrganizacion=" class="dropdown-item text-warning">Actualizar</a>
                                                        <a href="Organizaciones?accion=eliminar&idOrganizacion="class="dropdown-item text-danger">Eliminar</a>
                                                    </div>
                                                </div>
                                            </td>	
                                        </tr>
                                    </tbody>
                                </table>


                            </div>
                        </div>
                    </div>
                </div>    
            </div>
        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>ROSAS</span></strong>. Todos los derechos reservados
            </div>

        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.umd.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
    </body>
</html>
