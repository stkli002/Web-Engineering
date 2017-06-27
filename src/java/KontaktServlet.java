/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.FormularListe;
import Model.Kontaktformular;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ExaShox
 */
public class KontaktServlet extends HttpServlet {

    private final FormularListe formularListe = new FormularListe();
    private int counter = 0;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        switch (request.getParameter("action")) {
            case "all":
                all(request, response);
                break;

            case "form":
                form(request, response);
                break;

            case "details":
                details(request, response);
                break;
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    protected void all(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("FormularList", formularListe.getList());
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
    }

    private void form(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Kontaktformular kontaktformular = new Kontaktformular();
        kontaktformular.setId(++counter);
        kontaktformular.setFirstname(request.getParameter("firstname"));
        kontaktformular.setLastname(request.getParameter("lastname"));
        kontaktformular.setDate(request.getParameter("date"));
        kontaktformular.setDescription(request.getParameter("description"));
        kontaktformular.setMessage(request.getParameter("message"));
        formularListe.add(kontaktformular);
        
        RequestDispatcher rd = request.getRequestDispatcher("Details.jsp");
        rd.include(request, response);
    }

    private void details(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        for (Kontaktformular k : formularListe.getList()) {
            if (id == k.getId()) {
                request.setAttribute("FormularData", k);
                break;
            }
        }

        RequestDispatcher rd = request.getRequestDispatcher("Details.jsp");
        rd.include(request, response);
    }
}
