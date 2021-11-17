<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/png" href="img/logop.png">
        <link rel="apple-touch-icon" sizes="180x180" href="img/logop.png">
        <link rel="icon" type="image/png" href="img/logop.png" sizes="32x32">

        <title>Pixel Brant</title>


        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <!-- Custom styles for this template -->
        <style>
            @font-face {
                font-family: 'caviardreamsregular';
                src: url('vendor/CaviarDreams-webfont.woff') format('woff')
            }
        </style>
        <link href="css/style.css" rel="stylesheet">



    </head>

    <body>

        <!-- Navigation -->

        <section style="padding-top: 120px; padding-bottom:40px">
            <div class="container section-header">
                <div class="pull-right" style="margin-top: -20px">
                    <a data-toggle="collapse" href="#collapseCreate" role="button" aria-expanded="false" aria-controls="collapseCreate"
                       class="btn btn-primary btn-lg mt-5" style="margin-right: 6px; width: 155px"><i class="fa fa-plus"></i> CREAR</a>
                </div>
                <h3 class="display-4 section-title">Actividades</h3>
                <br>
            </div>
        </section>

        <section class="collapse" id="collapseCreate" style="padding-bottom:40px">
            <div class="container">
                <div class="card card-body">
                    <form name="form1" action="ServletActividades" method="post" name="Actividades">
                        <div class="row">
                            <div class="col-lg-3">
                            </div>
                            <div class="col-lg-8">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Nombre Actividad</span>
                                    </div>
                                    <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Nombre" aria-label="Nombre" aria-describedby="basic-addon1" required>
                                </div>
                                <div class="form-group">
                                    <span class="input-group-text" id="basic-addon1">Descripción</span>
                                    <textarea class="form-control" rows="3" id="txtDescripcion" name="txtDescripcion"></textarea>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">Estado*</span>
                                    </div>
                                    <select class="custom-select" id="estado" name="estado">
                                        <option value="<%=rse.getString(1)%>">Activo</option>
                                    </select>
                                </div>
                                <div class="pull-right">
                                    <input type="submit" class="btn btn-primary" style="color:#ffffff" value="GUARDAR" name="opc" id="GUARDAR">
                                    <a data-toggle="collapse" href="#collapseCreate" class="btn btn-info" style="color:#ffffff" id="btnCancel" onclick="return cancel()"><i class="fa fa-times"></i> CANCELAR</a>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </section>

        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">Buscar</span>
                    </div>
                    <input type="text" class="form-control" id="Buscar" name="Buscar" placeholder="Buscar" aria-label="Direccion" aria-describedby="basic-addon1" onkeypress="return doSearch()">
                </div>

            </div>
        </div>

        <div class="container">
            <center>
                <table id="info">
                    <tr>
                        <th>NOMBRE</th>
                        <th>DESCRIPCION</th>
                        <th>ESTADO</th>
                        <th>EDITAR</th>
                    </tr>
                </table>
            </center>
        </div>



        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Editar Actividad</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form name="form1" action="ServletActividades" method="get" name="Actividades">
                            <div class="row">
                                <div class="col-lg-3">
                                </div>
                                <div class="col-lg-8">
                                    <input style="display:none" type="text" class="form-control" id="txtide" name="txtide" placeholder="Código" aria-label="Codigo" aria-describedby="basic-addon1" onkeypress="return soloNumero(event)" required>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">Nombre Actividad</span>
                                        </div>
                                        <input type="text" class="form-control" id="txtNombree" name="txtNombree" placeholder="Nombre" aria-label="Nombre" aria-describedby="basic-addon1" required>
                                    </div>
                                    <div class="form-group">
                                        <span class="input-group-text" id="basic-addon1">Descripción</span>
                                        <textarea class="form-control" rows="5" id="txtDescripcione" name="txtDescripcione"></textarea>
                                    </div>

                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">Estado*</span>
                                        </div>
                                        <select class="custom-select" id="estadoe" name="estadoe">
                                            <option value="">Activo</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-primary" value="EDITAR" name="opc" id="EDITAR">
                                <button type="button" class="btn btn-info" data-dismiss="modal">CANCELAR</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->


        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/bootstrap/js/angular.min.js" type="text/javascript"></script>
        <script>
                                        $(document).ready(function () {
                                            $("#info").on('click', '#ed', function () {
                                                // get the current row
                                                var currentRow = $(this).closest("tr");

                                                var col1 = currentRow.find("td:eq(0)").text(); // get current row 1st TD value
                                                var col2 = currentRow.find("td:eq(1)").text(); // get current row 2nd TD
                                                var col3 = currentRow.find("td:eq(2)").text(); // get current row 3rd TD
                                                var col4 = currentRow.find("td:eq(3)").text();

                                                $('#txtide').val(col1);
                                                $('#txtNombree').val(col2);
                                                $('#txtDescripcione').val(col3);
                                                $('select[name=estadoe]').val(col4);
                                                $('select[name=estadoe]').change();
                                            });
                                        });
        </script>
        <script language="javascript" type="text/javascript">
            function soloNumero(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = "1234567890-',";
                especiales = "8-37-39-46";

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (letras.indexOf(tecla) == -1 && !tecla_especial) {
                    return false;
                }
            }

            function validar() {
                nit = document.Empresa.txtID.value;
                nombre = document.Empresa.txtNombre.value;

                if (nit.length == 0) {
                    alert("Digite el NIT de la empresa");
                    return false;
                }
                if (nombre.length == 0) {
                    alert("Digite el nombre de la empresa");
                    return false;
                }
                return true;
            }

            function doSearch() {
                var tableReg = document.getElementById('info');
                var searchText = document.getElementById('Buscar').value.toLowerCase();
                var cellsOfRow = "";
                var found = false;
                var compareWith = "";

                // Recorremos todas las filas con contenido de la tabla
                for (var i = 1; i < tableReg.rows.length; i++)
                {
                    cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
                    found = false;
                    // Recorremos todas las celdas
                    for (var j = 0; j < cellsOfRow.length && !found; j++)
                    {
                        compareWith = cellsOfRow[j].innerHTML.toLowerCase();
                        // Buscamos el texto en el contenido de la celda
                        if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
                        {
                            found = true;
                        }
                    }
                    if (found)
                    {
                        tableReg.rows[i].style.display = '';
                    } else {
                        // si no ha encontrado ninguna coincidencia, esconde la
                        // fila de la tabla
                        tableReg.rows[i].style.display = 'none';
                    }
                }
            }

        </script>
    </body>
</html>