import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class FontServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int fontSize = Integer.parseInt(request.getParameter("fontSize"));
        int numLines = Integer.parseInt(request.getParameter("numLines"));

        request.setAttribute("fontSize", fontSize);
        request.setAttribute("numLines", numLines);

        request.getRequestDispatcher("fontpage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect("index.jsp");
    }
}
