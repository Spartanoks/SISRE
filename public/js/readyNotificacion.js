    
    function multiplicar() {
        m1 = document.getElementById("tipoCambio").value;
        if (m1.indexOf(",") != -1)
            m1 = m1.replace(".","").replace(",",".");
        
        m2 = document.getElementById("montoBase").value;
        if (m2.indexOf(",") != -1) 
            m2 = m2.replace(".","").replace(",",".");
        
        r = m1*m2; 
        document.getElementById("montoBolivares").value = r.toFixed(2);
    }
    
    var codigoSwiftFuncion = function (CodigoSwift) {
             
        $.ajax({    
          type: 'GET',
          url: "/sicambcv/seguro/verificaCodigoSwift",
          dataType: 'text json',
          data:{
              CodigoSwift: $(CodigoSwift).val()
          },
             success: function (result) {
                                 
                var banco= '';
                
                if (result.valido) {
                    var localizacion = result.respuesta.split("~");
              
                    banco+='<div id="popoverGlobal">'; 
                    banco+='<div class="text-left"><b>Nombre: </b>'+localizacion[0]+'</div>'; 
                    banco+='<div class="text-left"><b>País: </b>'+localizacion[1]+'</div>'; 
                    banco+='<div class="text-left"><b>Ciudad: </b>'+localizacion[2]+'</div>';  
                    banco+='</div>';
                }
                else {
                    banco+='<div id="popoverGlobal">'; 
                    banco+='<div class="text-left"><b>Nombre: </b> No definido </div>'; 
                    banco+='<div class="text-left"><b>País: </b> No definido </div>'; 
                    banco+='<div class="text-left"><b>Ciudad: </b> No definido </div>';
                    banco+='</div>';
                }
                
                //$(".popovers").popover('destroy');
                //$(".popovers").popover({
                
                $(CodigoSwift).popover({
                //$(".popovers").tooltip({
                    html: true, 
                    trigger: "hover",
                    container: 'body', 
                    placement: "top",
                    title:'C&oacute;digo Swift',
                    track: true,
                    //show: true,
                    content: function() { 
                        return banco; 
                    }
                });
                
                ocultaModalEspera();
                    
             },
             error: function (data, status) {

                 }
        });
    }
    
    function sumarDias(fecha, dias){
        fecha.setDate(fecha.getDate() + dias);
        return fecha;
    }
    
    function convertDate(d){
        
        var date = new Date(d);
        var mes=(date.getMonth()+1);
        var fecha=(date.getDate() + '-' + mes + '-' + date.getFullYear());
        return '['+fecha+']';
        
    }
    
    function cierraInput(elm) {
        var td = elm.parentNode;
        var value = elm.value;
        td.removeChild(elm);
        td.innerHTML = value;
    }

    //******************PARA QUE FUNCIONE EL CALENDARIO**************************// 

    var fechaOperacion = function() {

        var startDate = new Date();

        var FromEndDate = new Date();
        var ToEndDate = new Date();
        var datesDisabled='';

        ToEndDate.setDate(ToEndDate.getDate()+365);
    
        $('#fechaOperacion').datepicker({

                beforeShowDay: deshabilitaFechas,
                format: "dd-mm-yyyy",
                forceParse: true,
                calendarWeeks: false, // numeros de las semanas
                language: "es",
                todayBtn: "linked",
                endDate:sumarDias(startDate, -1),
                autoclose: true,
                todayHighlight: true
        })
        .on('changeDate', function(selected){
    
            startDate = new Date(selected.date.valueOf());
            startDate.setDate(startDate.getDate(new Date(selected.date.valueOf())));
            datesDisabled= convertDate(new Date(selected.date.valueOf()));

            // Deshabilita en 'fechaValor' la fecha seleccionada
            $('#fechaValor').datepicker('setDatesDisabled', datesDisabled);
            
            // Indica la fecha inicial de 'fechaValor'
            $('#fechaValor').datepicker('setStartDate', startDate);
            
        })
        .inputmask('dd-mm-yyyy');
        
        $('#fechaValor').datepicker({
        
            beforeShowDay: deshabilitaFechas,
            format: "dd-mm-yyyy",
            forceParse: true,
            calendarWeeks: false, // numeros de las semanas
            language: "es",
            todayBtn: "linked",
            //endDate:sumarDias(startDate, +1),
            //StartDate:startDate,
            autoclose: true,
            todayHighlight: true
        })
        .on('changeDate', function(selected){
            FromEndDate = new Date(selected.date.valueOf());
            FromEndDate.setDate(FromEndDate.getDate(new Date(selected.date.valueOf())));
            datesDisabled= convertDate(new Date(selected.date.valueOf()));

            // Deshabilita en 'fechaValor' la fecha seleccionada
            $('#fechaEfectiva').datepicker('setDatesDisabled', sumarDias(FromEndDate, -1));
            
            // Indica la fecha inicial de 'fechaValor'
            $('#fechaEfectiva').datepicker('setStartDate', FromEndDate);
            
            //$('#fechaEfectiva').datepicker('setEndDate', FromEndDate); // Para que la fecha fin no sea mayor a la fecha seleccionada
            //$('#fechaEfectiva').datepicker('setDatesDisabled', datesDisabled); // para que la fecha seleccionada no sea igual
        })
        .inputmask('dd-mm-yyyy');

        $('#fechaEfectiva').datepicker({
            beforeShowDay: deshabilitaFechas,
            format: "dd-mm-yyyy",
            forceParse: true,
            calendarWeeks: false, // numeros de las semanas
            language: "es",
            todayBtn: "linked",
            //startDate:startDate,
            autoclose: true,
            todayHighlight: true
        })
        .inputmask('dd-mm-yyyy');
    
    };

function listo() {
    
    fechaOperacion();

    $('#codigoRecurso').change( function () {
    
        /*
         Si el valor escogido del campo Codigo Recurso es RE0001, se procede a
         deshabilitar al campo Codigo Cuenta Operador, de lo contrario se mantiene
         activo
        */
        
        if ($(this).val() == 'RE0001')
            $('#codigoCuentaOperador').prop("readonly", true);
        else
            $('#codigoCuentaOperador').removeProp("readonly");
    });
    
    $('#fechaOperacion').on('click', function(e) {
        
        $('#fechaOperacion').val(null);
        $('#fechaValor').val(null);
        $('#fechaValor').prop('readonly', true);
        $('#fechaEfectiva').val(null);
        $('#fechaEfectiva').prop('readonly', true);
        
    });
    
    $('#fechaOperacion').on('keyup keypress blur changeDate', function(e) {
        
        if ($(this).val() === '' || $(this).val() === null) {
            $('#fechaValor').val(null);
            $('#fechaValor').prop('readonly', true);
            $('#fechaEfectiva').val(null);
            $('#fechaEfectiva').prop('readonly', true);
        }
        else {
            $('#fechaValor').prop('readonly', false);
        }
        
    });
    
    $('#fechaValor').on('click', function(e) {
        
        if (!$(this).prop("readonly")) {
            $('#fechaValor').val(null);
            $('#fechaEfectiva').val(null);
            $('#fechaEfectiva').prop('readonly', true);
        }
        
    });
    
    $('#fechaValor').on('keyup keypress blur changeDate', function(e) {
        
        if (!$(this).prop("readonly")) {
            if ($(this).val() === '' || $(this).val() === null) {
                $('#fechaEfectiva').val(null);
                $('#fechaEfectiva').prop('readonly', true);
            }
            else
                $('#fechaEfectiva').prop('readonly', false);
        }
        else
            $(this).val(null);
        
    });
    
    $('#fechaEfectiva').on('keyup keypress blur changeDate', function(e) {
        
        if ($(this).prop("readonly")) {
            $(this).val(null);
        }
        
    });
    
    $('#tipoCambio').on('blur', function(e) {
        multiplicar();
    });
    
    $('#montoBase').on('blur', function(e) {
        multiplicar();
    });
    
    
    $('#btnCodigoSwiftIntermediario').on("click", function (e) {
         
        muestraModalEspera();
        $('#codigoSwiftIntermediario').popover('destroy');
        codigoSwiftFuncion( $('#codigoSwiftIntermediario') );
      
    });
    
    $('#codigoSwiftIntermediario').keyup(function () {
         
        $('#codigoSwiftIntermediario').popover('destroy');
      
    });
    
    $('#btnCodigoSwiftBeneficiario').on("click", function (e) {
         
        muestraModalEspera();
        $('#codigoSwiftBeneficiario').popover('destroy');
        codigoSwiftFuncion( $('#codigoSwiftBeneficiario') );
      
   
    });
    
    $('#codigoSwiftBeneficiario').keyup(function () {
         
        $('#codigoSwiftBeneficiario').popover('destroy');      
   
    });
    
    $('body').on('dblclick', '.seleccion-tr', function(e) {
        
        var tagTR = $(this);
        var tagTD = $(tagTR).find("td#unico" + tagTR.attr('id'));
        
        var id = tagTD.attr('id');
        var value = document.getElementById(id).innerHTML;
        document.getElementById(id).innerHTML = '';

        var input = document.createElement('input');
        input.setAttribute('type', 'text');
        input.setAttribute('value', value);
        input.setAttribute('onlur', 'cierraInput(this)');
        document.getElementById(id).appendChild(input);
        input.focus();
        
    });
    
    $('body').on('click', '.seleccion-tr', function(e) {
    
       var elemento = $(this).parent();
       var elemMontoNotificar = $(elemento).find("input#unico" + elemento.attr('id'));
       var elemSaldoLinea = $(elemento).find("td#saldo" + elemento.attr('id'));
       
       var montoNotificado = parseFloat($(elemMontoNotificar).val()).toFixed(2);
       var saldoLinea = parseFloat($(elemSaldoLinea).html()).toFixed(2);
       
       if ((parseFloat(montoNotificado) > parseFloat(saldoLinea)) || (0 > parseFloat(montoNotificado))) montoNotificado = saldoLinea;
       
       $(elemMontoNotificar).val(montoNotificado);
       
       var montoInicial = $('#montoTransaccion').val();
       
        if ($('#montoTransaccion').val() === '') {
            montoInicial = 0;
        }
       
       /*
       ** Dentro del elemento SELECT ID="lineaCronograma", busca todos los elementos OPTION 
       ** cuyo valor del atributo clase, sea igual al valor del ID de la variable "elemento"
       */
       
       var opcion = $('#lineaCronograma').find( 'option.' + elemento.attr('id') );
       if ( opcion.attr('class') === elemento.attr('id') ) {
        elemento.removeClass('selected');
        opcion.remove();
        elemMontoNotificar.prop('disabled', false);
        
        montoNotificado = parseFloat(montoNotificado) * -1;
       }
       else { 
        elemento.addClass('selected');
        //$('#lineaCronograma').append('<option class="' + elemento.attr('id') + '" value="' + elemento.attr('marginwidth') + '" selected="selected" >' + elemento.attr('marginwidth') + '</option>');
        $('#lineaCronograma').append('<option class="' + elemento.attr('id') + '" value="' + elemento.attr('id') + '~' + montoNotificado + '" selected="selected" >' + elemento.attr('id') + '~' + montoNotificado + '</option>');
        elemMontoNotificar.prop('disabled', true);
       }
           
        var suma = parseFloat(montoInicial) + parseFloat(montoNotificado);
        $('#montoTransaccion').val(suma.toFixed(2));
        multiplicar();
        
    });
    
       
    $('#example1').DataTable( {
        columnDefs: [ {
            orderable: false,
            className: 'select-checkbox',
            targets:   0
        } ],
        select: {
            style:    'multi',
            selector: 'td:first-child'
        },
        order: [[ 1, 'asc' ]]
    } );
    
}

