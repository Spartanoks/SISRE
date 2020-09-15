<!DOCTYPE html>

<html>

    <head>

        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="csrf-token" content="{{ csrf_token() }}" />

        <title>SISRE.</title>

        <link rel="icon" type="image/png" href="img/logotipo_oficial_1.png" />

        <link href="css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"  />
        <link href="css/materialize.min.css" rel="stylesheet" type="text/css"  />
        <link href="css/animate.css" rel="stylesheet" type="text/css"  />

        <link href="css/rockon.css" rel="stylesheet" type="text/css"  />
        <link href="css/material_color_rockon.css" rel="stylesheet" type="text/css"  />
        <link href="css/nouislider.css" rel="stylesheet" type="text/css"  />
        
        <link href="css/bootstrap-select.css" rel="stylesheet" type="text/css"  />
        <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"  />
        <link href="css/select.min.css" rel="stylesheet" type="text/css"  />
        
        <link href="css/sweet-alert.min.css" rel="stylesheet" type="text/css"  />
        <link href="css/notificacion.css" rel="stylesheet" type="text/css"  />

        <script src="js/jquery.min.js"></script>
        <script src="js/moment.min.js"></script>
        <script src="js/inputMask.min.js"></script>

        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/materialize.min.js"></script>
        <script src="js/rockon.js"></script>
        <script src="js/miscelaneos.js"></script>
        
        <script src="js/nouislider.js"></script>
        <script src="js/validate.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        
        <script src="js/bootstrap-datetimepicker.min.js"></script>
        <script src="js/sweet-alert.min.js"></script>
        <script src="js/bootstrap-growl.min.js"></script>
        
        <script src="js/dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <script src="js/dataTables.responsive.js"></script>


        
        <script src="js/dataTables.select.min.js"></script>            
        <script src="js/jquery.dataTables.min.js"></script>  
        <script src="js/dataTables.buttons.min.js"></script>  
        <script src="js/buttons.flash.min.js"></script>  
        <script src="js/jszip.min.js"></script>  
        <script src="js/pdfmake.min.js"></script>  
        <script src="js/vfs_fonts.js"></script>  
        <script src="js/buttons.html5.min.js"></script>  
        <script src="js/buttons.print.min.js"></script>  
        


    </head>


    <style>

        .user {
            color: black !important;
        }
        .division {
            border-top: 1px solid #000000 !important;
            border-bottom: 0 !important;
            margin: 0 !important;
        }

        nav ul a {
            color: #000000 !important;
        }

    </style>
        @yield('contenido')
        
        @include('modal')

    </body>

</html>