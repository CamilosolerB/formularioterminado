<%-- 
    Document   : pagina3
    Created on : 9 feb 2022, 21:44:43
    Author     : PC
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/style.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Formulario con java web</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            int progreso = 66;
            int puntaje = (Integer)sesion.getAttribute("aciertos");
            int fallas = (Integer)sesion.getAttribute("desaciertos");
        %>
            <nav class="barra">
                <p>Progreso del examen</p>
                
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: <%=progreso%>%;" aria-valuenow="<%=progreso%>" aria-valuemin="0" aria-valuemax="100"><%=progreso%></div>
                </div>
                    <p class="valorpunt">Mi puntaje:<%=puntaje%></p>
            </nav>
            <h1 class="title">Examen de prueba basica</h1>
            <form>
                <div class="container">
                    <h3>¿Cuanto es el valor 2X+9=31</h3>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="respuesta1"></textarea>
                          <label for="floatingTextarea2">Comments</label>
                        </div>
                </div>
                <div class="container">
                        <h3>FIFA es a PES como Pokemon es a:</h3>
                            <div class="form-floating">
                              <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="respuesta2"></textarea>
                              <label for="floatingTextarea2">Comments</label>
                            </div>
                </div>
                <div class="container">
                    <h3>¿Es HTML un lenguaje de programacion?</h3>
                        <div class="form-floating">
                          <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="respuesta3"></textarea>
                          <label for="floatingTextarea2">Comments</label>
                        </div>
                </div>
                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-success" name="next">Subir respuesta</button>
                </div>
            </form>
                <%
                    if(request.getParameter("next")!=null){
                        int desaciertos=0;
                        String valor = request.getParameter("respuesta1");

                        if(valor.equals("11")){
                            JOptionPane.showMessageDialog(null, "Respuesta 1 correcta");
                            puntaje++;
                        }
                        String valor2 = request.getParameter("respuesta2");
                        if(valor2.equalsIgnoreCase("Digimon")){
                            JOptionPane.showMessageDialog(null, "Respuesta 2 correcta");
                            puntaje++;
                        }
                        String valor3 = request.getParameter("respuesta3");
                            if(valor3.equalsIgnoreCase("no")){
                                JOptionPane.showMessageDialog(null, "Respuesta 3 correcta");
                                puntaje++;
                            }
                        desaciertos=9-puntaje;
                        sesion.setAttribute("aciertos", puntaje);
                        sesion.setAttribute("desaciertos", desaciertos);
                        response.sendRedirect("respuesta.jsp");
                    }
                %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>

