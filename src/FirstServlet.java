import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class FirstServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        HttpSession session = request.getSession();
        Integer count = (Integer) session.getAttribute("count");

        if(count == null) {
            session.setAttribute("count", 1);
            count = 1;
        }
        else session.setAttribute("count", count + 1);

        String name = request.getParameter("name");

        long date = new Date().getTime();

        PrintWriter pw = response.getWriter();
        pw.println("<html>");
        pw.println("<h2>You enter is -  "+date+" time </h2>");
        pw.println("</html>");

        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/home.jsp");
        dispatcher.forward(request, response);
    }
}
