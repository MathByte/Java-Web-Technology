/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package club.admin;

import club.business.Book;
import club.business.Member;
import club.data.BookIO;
import club.data.DBUtil;
import club.data.MemberDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PREDATOR
 */
public class MemberAdminController extends HttpServlet {

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

        String message = "";
        String path = "";
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");

        ArrayList<Member> m;

        if (action.equals("displayMembers")) {

            m = MemberDB.selectMembers();
            request.setAttribute("members", m);
            path = "/DisplayMember.jsp";
        }

        if (action.equals("addMember")) {

            path = "/AddMember.jsp";
        }

        if (action.equals("editMember")) {
            String emaill = request.getParameter("email");

            Member mem = MemberDB.selectMember(emaill);
            request.setAttribute("member", mem);
            path = "/EditMember.jsp";
        }

        if (action.equals("removeMember")) {
            String emaill = request.getParameter("email");
              Member mem = MemberDB.selectMember(emaill);
            request.setAttribute("member", mem);
            path = "/RemoveMember.jsp";
        }
        if (action.equals("deleteMember")) {
            String emaill = request.getParameter("email");
              Member mem = MemberDB.selectMember(emaill);
            MemberDB.delete(mem);
            path = "/MemberAdmin?action=displayMembers";
        }

        if (action.equals("saveMember")) {

            String db_operation = request.getParameter("db_operation");
            String email = request.getParameter("email");
            String fname = request.getParameter("Fname");
            String phone = request.getParameter("phone");
            String prog = request.getParameter("prog");
            String year = request.getParameter("year");
            Member member = new Member(fname, email);
            member.setPhoneNumber(phone);
            member.setProgramName(prog);
            member.setYearLevel(Integer.parseInt(year));

            if (db_operation != (null)) {
                if (db_operation.equals("update")) {
                    if (member.isValid()) {
                        MemberDB.update(member);
                        path = "/MemberAdmin?action=displayMembers";
                    } else {
                        message = "Cannot update record, Please provide valid name.";
                        request.setAttribute("message", message);
                        request.setAttribute("member", member);
                        path = "/EditMember.jsp";
                    }

                }

            } else {

                if (member.isValid()) {
                    MemberDB.insert(member);
                    path = "/MemberAdmin?action=displayMembers";
                } else {
                    message = "Cannot insert a new record, Please provide valid name and/or email.";
                    request.setAttribute("message", message);
                    path = "/AddMember.jsp";
                }
            }
        }
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher(path);
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
