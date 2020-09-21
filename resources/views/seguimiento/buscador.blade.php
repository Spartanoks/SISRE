<script>
    $(document).ready(function() {


        $('#regForm').submit(function(event) {

                //
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });

                $.ajax({
                        type: 'POST',
                        url: "{{ route('seguimiento_especifico') }}",
                        data: $("#regForm").serialize(),
                        dataType: 'html',

                        beforeSend: function() {
                            $("#inner").remove();
                        },
                        success: function(response) {
                           
                            if(response == 3){
                                swal("Error!",
                            "No se encuentra este reclamo.",
                            "error").then((value) => {
                                $.ajaxSetup({
                                    headers: {
                                        'X-CSRF-TOKEN': $(
                                            'meta[name="csrf-token"]').attr(
                                            'content')
                                    }
                                });
                                $.ajax({
                                    type: 'GET',
                                    url: "{{ route('/') }}",
                                    dataType: 'html',
                                    beforeSend: function() {
                                        $("#wrapper").remove();
                                    },
                                    success: function(response) {
                                        $("#body").html('<div id="wrapper"></div>');
                                        $("#wrapper").append(response);
                                    }
                                });
                            });
                            }
                            else {
                            $("#main").html('<div id="inner"></div>');
                            $("#inner").append(response);
                            }



                    },

                    error: function(data, status) {

                    }

                });
            //

            event.preventDefault();

        });



    });

</script>

<style>
    * {
        box-sizing: border-box !important;
    }

    body {
        background-color: #f1f1f1;
    }

    #regForm {
        background-color: #ffffff;
        margin: 100px auto;
        font-family: Raleway;
        padding: 40px;
        width: 70%;
        min-width: 300px;
    }

    h1 {
        text-align: center;
    }

    input {
        padding: 10px;
        width: 100%;
        font-size: 17px;
        font-family: Raleway;
        border: 1px solid #aaaaaa;
    }


    input[type=number]::-webkit-outer-spin-button,

    input[type=number]::-webkit-inner-spin-button {

        -webkit-appearance: none !important;

        margin: 0 !important;

    }



    input[type=number] {

        -moz-appearance: textfield !important;

    }

</style>
<div id="inner" class="inner">

    <form id="regForm" action="">
        <h1>Buscar reclamo</h1>

        <!-- One "tab" for each step in the form: -->
        <div class="tab">
            Ingrese numero del reclamo:
            <p><input type="number" class="name required" name="reclamo" autocomplete="off">
                <br>


        </div>
    </form>
</div>
