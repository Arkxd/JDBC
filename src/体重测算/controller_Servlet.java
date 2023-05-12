package 体重测算;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "controller_Servlet", value = "/controller_Servlet")
public class controller_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String weight = request.getParameter("weight");
        String height = request.getParameter("height");
        model_Bean modelBean = new model_Bean();
        modelBean.setBmi(weight, height);
        String BMI = modelBean.getBmi();
        modelBean.setResult(BMI);
        String result = modelBean.getResult();

        response.setContentType("text/html; charset=utf-8");
        request.setAttribute("result", request);
        request.setAttribute("BMI", BMI);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view_Result.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
