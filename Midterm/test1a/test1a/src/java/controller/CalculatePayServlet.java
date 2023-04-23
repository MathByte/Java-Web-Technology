package controller;

import com.abc.Pay;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculatePayServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/enterPay.jsp";

          
        Pay payinfo = new Pay();
        String errorMessage = "";
        String hourString = "";
        String employeeName = "";
        double hours = 0;
        
        // process action input parameter 
        String action = request.getParameter("action");

        if (action == null) { // Add code here
            action = "calcPay";
        }

        if (action.equals("calcPay")) { // Add code here

            // get parameters of input form
            employeeName = request.getParameter("employeename");
            hourString = request.getParameter("hours");

            //  hours worked is null or blank, assign a default of zero.
            if (hourString == null || hourString =="") { // Add Code here
                hourString = "0";
            }

            // convert employee hours to numeric value
            hours = Double.parseDouble(hourString);

  

           
            // validate employee name 
            if (employeeName.isEmpty()) { // Add Code here

                errorMessage = "Employee naem is blanck. Please enter again!";                
                url = "/enterPay.jsp";
            } else {
                // validate hours worked 
                if (hours < 0) { // Add Code Here
                    // Add Code Here
                    errorMessage = "Hours cannot be negative. please enter again!";
                    url = "/enterPay.jsp";
                }

                // Check hours worked is less than 40 or overtime hours 
                if (hours >= 0 && hours <= 40) { // Add Code Here
                    url = "/regular.jsp";
                }
               

                if (hours > 40) { // Add Code Here
                    url = "/overtime.jsp";
                }
            payinfo.setEmployeename(employeeName);
            payinfo.setHours(hours);
            }

          
            request.setAttribute("pay", payinfo);
            request.setAttribute("message", errorMessage);
        }

                
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


}
