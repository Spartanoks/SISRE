

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
    <title>PDF</title>
</head>
<style>
    
body{
    font-family: 'Courier New', Courier, monospace;
    overflow-x: hidden;
}
table, td, th {  
    border: 2px solid #8E8E8E;
  }
  
  table {
    border-collapse: collapse;
    width: 100%;
  }
  
  th, td {
    padding: 2px;

 
  }
  .border{
    border: 3px solid black;
  }
  .titulo{
    vertical-align: top;
    text-align: left !important;
    margin-top: -5px !important;
    font-size: 13px;

  }
.align{
    text-align: center;
    justify-content: center;
    align-items: center;
    display: flex;
    
}
.contenido{
    vertical-align: top;
    margin-top: -5px;
    overflow-x: hidden;
}
.header{
    background-color: #B8B8B8;
}
.contenedor{
    width: 100%;
}
.font-min{
    font-size: 10px;
}
.font-min-detail{
    font-size: 11px;
    margin-top: -25px !important;
}
#orangeBox {
    border-style: solid;
    border-color: #8C8C8C;
    color: black;
    border-radius: 5px;
  }
  .font-min-detalles{
      font-size: 12px;
      text-align: left;
  }

</style>
<body>
    <!---->
    <div class="align">
        <div class="border">
            <table>
                <tr>
                    <th rowspan="2"><img src="{{ asset('mail-css/logo.jpg')}}"></th>
                    <th rowspan="2">RECLAMO POROPERACIONES EN SERVICIOS ELECTRÓNICOS</th>
                    <th>
                        <p class="titulo"> Fecha:</p>
                        <br>
                        {{ date('Y-m-d',$fecha)}}
                    </th>
                </tr>
                <tr>

                    <td>
                        <p class="titulo">Nº de reclamo</p>
                        <br>
                        {{ $reclamo->numero_reclamo }}
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <br>
    <div class="align">
        <div class="contenedor">
            <table>
                <tr>
                    <th class="header" colspan="3">TIPOS DE SERVICIOS PARA EL RECLAMO</th>
                </tr>
                <tr>
                    <td>Tipo de tarjeta</td>
                    <td>{{$reclamo->tarjeta->tipo_tarjeta->descripcion}}</td>
                    @foreach ($tarjetas as $tarjeta)
                     @if ($reclamo->tarjeta->id_tarjeta === $tarjeta->id) 
                     <td>{{ $tarjeta->descripcion }}</td>
                @endif
                
                @endforeach
                </tr>

                <tr>
                    <td>Tipo de servicio</td>
                    <td colspan="2">{{ $reclamo->servicio->descripcion }}</td>

                </tr>
            </table>
        </div>
    </div>
    
    <div class="align">
        <div class="contenedor">
            <table>
                <tr>
                    <th class="header" colspan="3">DATOS DEL CLIENTE</th>
                </tr>
                <tr>
                    <td>
                        <p class="titulo">Nombre del cliente:</p>

                        {{ $reclamo->nombre}} {{ $reclamo->apellido }}
                    </td>
                    <td>
                        <p class="titulo">Cedula de indentidad o RIF:</p>

                        {{ $reclamo->cedula }}
                    </td>
                    <td>
                        <p class="titulo">Telefono Nº:</p>

                        {{ $reclamo->telefono_cliente }}
                    </td>
                </tr>

                <tr>
                    <td>
                        <p class="titulo">Direccion de Habitacion:</p>
                        {{ $reclamo->direccion_cliente }}
                    </td>
                    <td colspan="2">
                        <p class="titulo">Correo electronico:</p>
                        {{ $reclamo->correo }}
                    </td>

                </tr>
                <tr>
                    <td colspan="3">
                        <p class="titulo">Nº de tarjeta:</p>
                        {{ $reclamo->tarjeta->numero_tarjeta }}
                    </td>
                </tr>





            </table>
            <table>
                <tr>
                    <th class="header " colspan="2">CODIGO CUENTA CLIENTE AFECTADA</th>
                </tr>
                <tr>
                    <td>
                        <p class="titulo">Codigo cuenta cliente N°1:</p>
                        {{ $reclamo->cuenta_afectada_1 }}
                    </td>
                    <td>
                        <p class="titulo">Codigo cuenta cliente N°2:</p>
                        {{$reclamo->cuenta_afectada_2}}
                    </td>

                </tr>
            </table>
        </div>
    </div>
    
    <div class="align">
        <div class="contenedor">
            <table>
                <tr>
                    <th class="header" colspan="6">TIPOS DE SERVICIOS PARA EL RECLAMO</th>
                </tr>
                <tr>
                    <td>
                        <p class="titulo">Fecha:</p>

                        {{ date('Y-m-d',$fecha_reclamo)}}
                    </td>
                    <td>
                        <p class="titulo">Hora:</p>

                        {{ date('H:m:s',$fecha_reclamo)}}
                    </td>
                    <td>
                        <p class="titulo">Monto:</p>

                        {{$reclamo->monto}}
                    </td>
                    <td>
                        <p class="titulo">Nº de transaccion:</p>

                        
                        {{$reclamo->numero_transaccion}}
                    </td>
                    <td>
                        <p class="titulo">Nº de atm:</p>

                        {{$reclamo->numero_atm}}
                    </td>
                    <td>
                        <p class="titulo">Nombre del banco u oficina donde se realizo la operación:</p>

                        {{$reclamo->institucion_recaudo}}
                    </td>
                </tr>
                
                <tr>
                    <td colspan="3">
                        <p class="titulo">Forma de pago:</p>

                        {{$reclamo->forma_pago}}
                    </td>
                    <td colspan="3">
                        <p class="titulo ">Nombre del establecimiento por donde se efectuo la operación (punto de
                            venta):</p>

                            {{$reclamo->establecimiento}}
                    </td>

                </tr>
                
                <tr>
                    <td colspan="6">
                        <p class="titulo">Documentos entregados:</p>
                        @php $array=
                    array('carta'=>'Carta','fotocopia_ci'=>'Fotocopia de la cedula','fotocopia_tarjeta'=>'Fotocopia de
                    la
                    Tarjeta','pasaporte'=>'Pasaporte','corte_cuenta'=>'Corte de cuenta','copia_libreta'=>'Copia de
                    Libreta','comprobante'=>'Comprobante de la Operacion','otro'=>'Otro') ; @endphp


                       
                   @foreach ($array as $arra => $valor)
                        @if (in_array($arra, $array_bd))
                        <span id="orangeBox">
                            {{ $valor }}
                         </span>
                         &nbsp;
                      
                        @endif


                    @endforeach
                       
                        <br>
                        <br>
                    </td>


                </tr>
                
                <tr>
                    <td colspan="6">
                        <p class="titulo">Tarjeta Bin perforar:</p>

                        @if($reclamo->tarjeta->tarjeta_bin_perforar == true)
                            SI
                         @endif
                         @if($reclamo->tarjeta->tarjeta_bin_perforar == false)
                            NO
                         @endif
                    </td>
                </tr>
                
                <tr>
                    <td>

                        <p class="titulo ">Nombre de la unidad u oficina bancaria receptora:</p>
                        {{ $reclamo->usuario->sucursal}}
                    </td>
                    <td>

                        <p class="titulo ">Recibido por: Nombre y Apellido:</p>
                        {{ $reclamo->usuario->nombre}} {{ $reclamo->usuario->apellido}}
                    </td>
                    <td rowspan="2" colspan="2">
                        <p class="titulo" style="margin-top: -60px !important;">AUTORIZADO POR:</p>

                    </td>
                    <td rowspan="2" colspan="2">
                        <p class="titulo" style="margin-top: -60px !important;">FIRMA DEL CLIENTE:</p>

                    </td>

                </tr>
                
                <tr>
                    <td>
                        <p class="titulo">CÓDIGO DE OFICINA:</p>
                        {{ $reclamo->usuario->numero_oficina}}
                    </td>
                    <td>
                        <p class="titulo font-min">HORA DE RECEPCIÓN DE RECLAMO:</p>
                        {{ date('H:m:s',$fecha)}}

                    </td>


                </tr>
                <!---->
            </table>
            <div class="font-min-detalles">
                El cliente deberá presentarse en la Oficina Bancaria receptora de este reclamo en un lapso de (20) días
                continuos, con la finalidadde recibir la respuesta del mismo. Igualmente, el Banco del Tesoro efectuará
                la localización del cliente en el mencionado lapso porlos números telefónicos señalados por éste, al
                momento de la apertura de su cuenta o entrega de la tarjeta de débito o crédito,para brindar la
                respuesta a su solicitud; de no ser localizado por los números telefónicos antes indicados, el Banco del
                Tesoro seexime de toda responsabilidad por la no recepción de la respuesta de su reclamo en los lapsos
                establecido por la Ley de Tarjeta de Crédito, Débito, Prepagada y Demás Tarjetas de Financiamiento o
                Pago
                Electrónico.
            </div>
            <br>
            <table>
                <tr>
                    <th class="header" colspan="6">SOLO PARA USO DE LA UNIDAD DE ATENCIÓN AL CLIENTE</th>
                </tr>
                <tr>
                    <td>
                        <p class="titulo">Nº de transaccion:</p>


                    </td>
                    <td>
                        <p class="titulo">Codigo banco u oficina:</p>


                    </td>
                    <td>
                        <p class="titulo">Fecha:</p>


                    </td>
                    <td>
                        <p class="titulo">Hora:</p>


                    </td>
                    <td>
                        <p class="titulo">Monto:</p>


                    </td>
                    <td>
                        <p class="titulo">Respuesta:</p>


                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <p class="titulo">Observaciones:</p>


                    </td>
                </tr>
            </table>
        </div>
    </div>

</body>

</html>