<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Project Oblio Distribution</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="{{ URL::asset('https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext') }}" rel="stylesheet" type="text/css">
    <link href="{{ URL::asset('https://fonts.googleapis.com/icon?family=Material+Icons') }}" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="{{ URL::asset('plugins/bootstrap/css/bootstrap.css') }}" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="{{ URL::asset('plugins/node-waves/waves.css') }}" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="{{ URL::asset('plugins/animate-css/animate.css') }}" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="{{ URL::asset('css/style.css') }}" rel="stylesheet">
</head>

<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);">Project Oblio Distribution</a>
            <small></small>
        </div>
        <div class="card">
            <div class="body">


            <div class="row">
                <h4 class="text-center">Choose Avatar.</h4>
                <br>
                <hr>
                <div class="col-xs-12 col-md-12">
                    <form id="avatar-form" action="{{ url('/save-avatar') }}" method="post" role="form" enctype="multipart/form-data">

                        {{ csrf_field() }}
                        <center>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 col-sm-offset-3">
                            <input type="file" name="avatar" id="avatar" tabindex="1" class="form-control" onChange="AjaxUploadImage(this)" />
                         @if ($errors->has('avatar'))
                            <span class="invalid-feedback text-red" role="alert">
                                <strong>{{ $errors->first('avatar') }}</strong>
                            </span>
                        @endif
                                </div>
                            </div>
                        </div>
                                
                        <div class="form-group">
                             <div class="row">
                                <div class="col-sm-6 col-sm-offset-3">
                        <?php
                        if (!empty($user->avatar) && $user->avatar != "") {
                        ?>
                        <br><img id="DisplayImage" src="{{ $user->avatar }}" name="img" id="img" width="150" style="padding-bottom:5px" >
                        <?php
                        }
                        else{
                            echo '<br><img id="DisplayImage" src="" width="150" style="display: none;"/>';
                        } 
                        ?>
                         </div>
                       </div>
                                
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6 col-sm-offset-3">
                                    <input type="submit"  style="background-color:#39BCD5;color:#ffffff" id="avatar-submit" tabindex="4" class="form-control btn btn-login" value="Update Now">
                                </div>
                            </div>
                        </div>
                    </center>
                   </form>
                </div>
                
            </div>
          </div>

        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="{{ URL::asset('plugins/jquery/jquery.min.js') }}"></script>

    <!-- Bootstrap Core Js -->
    <script src="{{ URL::asset('plugins/bootstrap/js/bootstrap.js') }}"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="{{ URL::asset('plugins/node-waves/waves.js') }}"></script>

    <!-- Validation Plugin Js -->
    <script src="{{ URL::asset('plugins/jquery-validation/jquery.validate.js') }}"></script>

    <!-- Custom Js -->
    <script src="{{ URL::asset('js/admin.js') }}"></script>
    <script src="{{ URL::asset('js/pages/examples/sign-in.js') }}"></script>
    
    <script>
       
        function AjaxUploadImage(obj,id){

        var file = obj.files[0];
        var imagefile = file.type;
        var match = ["image/jpeg", "image/png", "image/jpg"];
        if (!((imagefile == match[0]) || (imagefile == match[1]) || (imagefile == match[2])))
        {
           // $('#previewing'+URL).attr('src', 'noimage.png');
            //alert("Please Select A valid Image File.Only jpeg, jpg and png Images type allowed");
            //$("#message").html("<p id='error'>Please Select A valid Image File</p>" + "<h4>Note</h4>" + "<span id='error_message'>Only jpeg, jpg and png Images type allowed</span>");
            $('#DisplayImage').attr('src',"");
            alert('Invalid file type.Please select image only');
            return false;
        } else{
            var reader = new FileReader();
            reader.onload = imageIsLoaded;
            reader.readAsDataURL(obj.files[0]);
        }
    }

    function imageIsLoaded(e) {

        $('#DisplayImage').css("display", "block");
        $('#DisplayImage').attr('src', e.target.result);
        $('#DisplayImage').attr('width', '150');
    }
    
 </script>
    
</body>

</html>
