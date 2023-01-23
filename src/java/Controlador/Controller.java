package Controlador;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Controller extends HttpServlet {

    String LOGIN = "index.jsp";
    String USUARIOS = "Vista/Usuarios.jsp";
    String PRODUCTOS = "Vista/Productos.jsp";
    String PROVEEDORES = "Vista/Proveedores.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        //========================================================================================== GLOBALES

        switch (action) {
            case "iniciar-sesion":
                acceso = LOGIN;
                break;
            case "principal":
                acceso = USUARIOS;
                break;
            case "productos":
                acceso = PRODUCTOS;
                break;
            case "proveedores":
                acceso = PROVEEDORES;
                break;
            default:
                acceso = LOGIN;
        }
        RequestDispatcher view = request.getRequestDispatcher(acceso);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
