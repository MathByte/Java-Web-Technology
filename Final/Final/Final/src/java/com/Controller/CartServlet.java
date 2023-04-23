package com.Controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession mySession = request.getSession();
        ArrayList<String> cartArray = (ArrayList<String>) mySession.getAttribute("cartItems");

        if (cartArray == null) {
            cartArray = new ArrayList<String>();
        }

        // process action and code parameters and add item to cart 
        // Fill in the Blanks and put Bold Code as your Q-5 Answer in Quiz
        String action = request.getParameter("action");
        String code = request.getParameter("code");

        if (action != (null)) {
            if (code != (null)) {
                cartArray.add(code);
                mySession.setAttribute("cartItems", cartArray);
            }
        }else
{
 cartArray.add("empty");
                mySession.setAttribute("cartItems", cartArray);
}


      

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/cart.jsp");
        dispatcher.forward(request, response);

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

}
