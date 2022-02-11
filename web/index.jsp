<%-- 
    Document   : index
    Created on : 7 feb 2022, 21:08:30
    Author     : PC
--%>

<%@page import="java.awt.JobAttributes"%>
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
            //JOptionPane.showMessageDialog(null, "hola");
            HttpSession sesion = request.getSession();
        %>
            <nav class="barra"></nav>
            <h1 class="title">Examen de prueba basica</h1>
            <form>
                <div class="container">
                    <h3>Los bunkers son una banda de nacionalidad:</h3>
                    <div class="form-floating">
                        <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" name="respuesta1" style="height: 100px"></textarea>
                        <label for="floatingTextarea2">Comments</label>
                    </div>
                </div>
                    <div class="container">
                    <h3>¿Que significa NFT?</h3>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="respuesta2"></textarea>
                            <label for="floatingTextarea2">Comments</label>
                        </div>
                    </div>
                    <div class="container">
                    <h3>¿Quien creo "The man who sold the world"?</h3>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px" name="respuesta3"></textarea>
                          <label for="floatingTextarea2">Comments</label>
                        </div>
                    </div>
                    <div class="d-grid gap-2">
                    <input class="btn btn-success" type="submit" name="next" ></button>
                    </div>
                </form>
                <%
                    if(request.getParameter("next")!=null){
                        int puntaje=0, desaciertos=0;
                        String valor = request.getParameter("respuesta1");

                        if(valor.equalsIgnoreCase("chilena")){
                            JOptionPane.showMessageDialog(null, "Respuesta 1 correcta");
                            puntaje++;
                        }
                        String valor2 = request.getParameter("respuesta2");
                        //System.out.println(valor);
                        if(valor2.equalsIgnoreCase("non fungible token")){
                            JOptionPane.showMessageDialog(null, "Respuesta 2 correcta");
                            puntaje++;
                        }
                        String valor3 = request.getParameter("respuesta3");
                            if(valor3.equalsIgnoreCase("David Bowie")){
                                JOptionPane.showMessageDialog(null, "Respuesta 3 correcta");
                                puntaje++;
                            }
                        desaciertos=puntaje-3;
                        sesion.setAttribute("aciertos", puntaje);
                        sesion.setAttribute("desaciertos", desaciertos);
                        response.sendRedirect("pagina2.jsp");
                    }
                %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
