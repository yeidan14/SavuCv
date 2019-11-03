<%-- 
    Document   : index
    Created on : 12-oct-2019, 9:47:33
    Author     : Daniel
--%>
<%if (session.getAttribute("usuario") != null) {
        response.sendRedirect("datosper.jsp");
    }%>

<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>HOJA DE VIDA </title>

    <link href="build/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="build/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="build/nprogress/nprogress.css" rel="stylesheet">
    <!-- jQuery custom content scroller -->
    <link href="build/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">

    
     <script>
			$(document).ready(function(){
	    		$('#signup').click(function(){
	       		$("#contenido").load("registro.jsp");
	    									 });

	    		
										});
		</script>
  </head>

  <body class="login">
     
    <div>
         
      

      <div class="login_wrapper">
          
        <div  id="contenido" class="animate form login_form">
          <section class="login_content">
             
              <form action="Login.do">
                <img class="" src="images/index.png" width="100%" />

         
                          
                    
   
        
                   <%String prueba=(String)request.getAttribute("nombre");
                   String usuariocreado="Usuariocreado";
                    String contraerror="Contraerror";
                    String noexsiste="NoExiste";
                                        if(prueba==usuariocreado){
                                            %>
                                            <div class="alert alert-success alert-dismissible fade in" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                    <Strong>Felicidades! Creaste el usuario ahora inicia session.</Strong>
                  </div>
                                            <%
                                        } else if (prueba==contraerror){%>
                      <div class="alert alert-danger alert-dismissible fade in" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                      La Contraseña no coincide con el usuario!
                  </div>
                                       <% } else if (prueba==noexsiste){%>
                                           <div class="alert alert-danger  fade in" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                                               El Usuario no existe,puede crealo!
                  </div>
                                            
                                      <%  }
                                    %>


                
                
            <div class="separator"></div>
                <div>
                    <input name="user" type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                  <input name="pass" type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                    <button id="send"  type="submit" class="btn btn-round btn-success col-md-12">INGRESAR</button>
               
               
              </div>

             <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">No tienes Cuenta?
                    <a href="registro.jsp" > Crea tu cuenta </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>                  
                  <p>©2019 All Rights Reserved. SAVU CV! is a Ingenieria de Sistemas UFPS.</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>

  </body>
  
   <script src="build/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="build/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="build/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="build/nprogress/nprogress.js"></script>
    <!-- jQuery custom content scroller -->
    <script src="build/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    
       <script src="buid/pnotify/dist/pnotify.js"></script>
    <script src="build/pnotify/dist/pnotify.buttons.js"></script>
    <script src="build/pnotify/dist/pnotify.nonblock.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="js/custom.min.js"></script>
</html>
