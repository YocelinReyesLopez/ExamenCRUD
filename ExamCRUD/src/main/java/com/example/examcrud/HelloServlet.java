package com.example.examcrud;

import java.io.*;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ServletPersona",
        urlPatterns = {
                "/get-personas",
                "/add-persona",
                "/create-persona",
                "/save-persona",
                "/get-persona",
                "/delete-persona"
        })

public class HelloServlet extends HttpServlet {
    Logger logger = Logger.getLogger("ServletPersona");
    String action;
    String urlRedirect = "/get-personas";
    ServicePersona servicePersona = new ServicePersona();

    //Yocelin Reyes L.

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        action = request.getServletPath();
        logger.log(Level.INFO, "Path-> " + action);
        switch (action) {
            case "/get-personas":
                List<BeanPersona> personas = servicePersona.getAll();
                System.out.println(personas.size());
                System.out.println(personas);
                request.setAttribute("personas", personas);
                urlRedirect = "/consulta.jsp";
                break;
            case "/create-persona":
                urlRedirect = "/create.jsp";
                break;
            case "/get-persona":
                String id = request.getParameter("id");
                id = (id == null) ? "0" : id;
                try {
                    BeanPersona persona = servicePersona.getPersona(Long.parseLong(id));
                    request.setAttribute("persona", persona);
                    urlRedirect = "/update.jsp";
                } catch (Exception e) {
                    urlRedirect = "/get-personas";
                }
                break;
            default:
                request.setAttribute("personas", servicePersona.getAll());
                urlRedirect = "/get-personas";
                break;
        }
        request.getRequestDispatcher(urlRedirect).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        action = request.getServletPath();
        switch (action) {
            case "/add-persona":
                try{
                    String nombre = request.getParameter("nombre");
                    String surname = request.getParameter("surname");
                    String curp = request.getParameter("curp");
                    String birthday = request.getParameter("birthday");
                    BeanPersona persona = new BeanPersona();
                    persona.setNombre(nombre);
                    persona.setSurname(surname);
                    persona.setCurp(curp);
                    persona.setBirthday(birthday);
                    ResultAction result = servicePersona.save(persona);
                    urlRedirect = "/get-personas?result=" + result.isResult() + "&message=" + URLEncoder.encode(result.getMessage(), StandardCharsets.UTF_8.name()) + "&status=" + result.getStatus();
                }catch (Exception e){
                    System.out.println(e);
                    urlRedirect = "/get-personas?result=false&message="+URLEncoder.encode("Error al registrar persona", StandardCharsets.UTF_8.name())+"&status=400";

                }
                break;
            case "/save-persona":
                try{
                    String nombre = request.getParameter("nombre");
                    String surname = request.getParameter("surname");
                    String curp = request.getParameter("curp");
                    String birthday = request.getParameter("birthday");
                    String id = request.getParameter("id");
                    BeanPersona persona = new BeanPersona();
                    persona.setId(Long.parseLong(id));
                    persona.setNombre(nombre);
                    persona.setSurname(surname);
                    persona.setCurp(curp);
                    persona.setBirthday(birthday);
                    ResultAction result = servicePersona.update(persona);
                    urlRedirect = "/get-personas?result=" + result.isResult() + "&message=" + URLEncoder.encode(result.getMessage(), StandardCharsets.UTF_8.name()) + "&status=" + result.getStatus();

                }catch (Exception e){
                    urlRedirect = "/get-personas?result=false&message="+URLEncoder.encode("Error al guardar persona", StandardCharsets.UTF_8.name())+"&status=400";
                }
                break;

            case "/delete-persona":
                try{
                    String idPersona = request.getParameter("id");
                    ResultAction deleteResult = servicePersona.delete(idPersona);
                    urlRedirect = "/get-personas?result=" +
                            deleteResult.isResult() + "&message=" +
                            URLEncoder.encode(deleteResult.getMessage(), StandardCharsets.UTF_8.name())
                            + "&status=" + deleteResult.getStatus();
                }catch (Exception e){
                    urlRedirect = "/get-personas?result=false&message="+URLEncoder.encode("Error al eliminar persona", StandardCharsets.UTF_8.name())+"&status=400";
                }
                break;
            default:
                urlRedirect = "/get-personas";
                break;
        }
        response.sendRedirect(request.getContextPath() + urlRedirect);
    }
}