package murach.email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import murach.business.User;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String url = "/index.jsp";

        if (action == null) {
            action = "join";
        }

        if (action.equals("join")) {
            url = "/index.jsp";
        } else if (action.equals("add")) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String heardFrom = request.getParameter("heardFrom");

            // xử lý checkbox và radio
            String wantsUpdates = request.getParameter("wantsUpdates");
            if (wantsUpdates == null) {
                wantsUpdates = "No";
            } else {
                wantsUpdates = "Yes";
            }

            String emailOK = request.getParameter("emailOK");
            if (emailOK == null) {
                emailOK = "No";
            } else {
                emailOK = "Yes";
            }

            String contactVia = request.getParameter("contactVia");

            // kiểm tra dữ liệu
            if (firstName == null || firstName.isEmpty() ||
                lastName == null || lastName.isEmpty() ||
                email == null || email.isEmpty()) {

                request.setAttribute("message", "Please fill out all required fields.");
                url = "/index.jsp";
            } else {
                User user = new User(firstName, lastName, email, dob,
                                     heardFrom, wantsUpdates, emailOK, contactVia);

                request.setAttribute("user", user);
                // forward sang thanks.jsp (ngang hàng với index.jsp)
                url = "/thanks.jsp";
            }
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
