/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package club.admin;

import club.business.Book;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import club.data.BookIO;

/**
 *
 * @author PrograMath
 */
public class AddBookServlet extends HttpServlet {

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
                ServletContext context = getServletContext();
                String path = context.getRealPath("/WEB-INF/books.txt");
                String bookCode = request.getParameter("code");
                String bookDescription = request.getParameter("description");
                String quantityStr = request.getParameter("quantity");
                if (quantityStr == null || quantityStr.isEmpty()) {
                    quantityStr = "0";
                }
                int bookQuantity = Integer.parseInt(quantityStr);
                // store data in User object
                Book newBook = new Book(bookCode, bookDescription, bookQuantity);
                request.setAttribute("book", newBook);
                // validate the inputs
                String message = "";
                String url = "";
                if (bookCode == null || bookCode == "")
                {
                    message += "Code is reguired. <br />";
                }
                if (bookDescription == null || bookDescription == "" || bookDescription.length() < 3)
                {
                    message += "Discription is eguired, and must be at least 3 letters long. <br />";
                }
                if (bookQuantity <= 0)
                {
                    message += "Quantity must be greater than zero. <br />";
                }
                if (message == "") {
                    // Call the insert() method of BookIO class.
                    url = "/DisplayBooks";
                    BookIO.insert(newBook, path);
                    
                }
                else{
                    request.setAttribute("message", message);
                    url = "/AddBook.jsp";
                }
                RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher(url);
                dispatcher.forward(request,response);
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
