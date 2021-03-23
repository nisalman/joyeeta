<!DOCTYPE html>
<html lang="en">
<head>
    <title>Joyeeta</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="{{asset('login_asset/images/icons/joyeeta_foundation.jpg')}}"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('login_asset/vendor/bootstrap/css/bootstrap.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="{{asset('login_asset/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{asset('login_asset/css/util.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('login_asset/css/main.css')}}">
    <style>
        footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            color: white;
            text-align: center;
        }
    </style>
    <!--===============================================================================================-->
</head>

<body>

@include('layouts.partial.validationMessage')
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form class="login100-form validate-form" method="POST" action="{{ route('login') }}">
                @csrf
                <span class="login100-form-title p-b-26">
                        						<img src="{{asset('login_asset/images/icons/joyeeta_foundation.jpg')}}"
                                                     height="100px" width="100px"/>
					</span>
                <span class="login100-form-title p-b-48" style="color: #ffb700">
                    Joyeeta POS
					</span>

                <div class="wrap-input100 validate-input" data-validate="Valid email is: a@b.c">
                    <input class="input100" type="text" name="email" id="email" value="{{old('email')}}">
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                    <input class="input100" type="password" name="password" value="{{old('password')}}">
                    <span class="focus-input100"></span>
                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">
                            Login
                        </button>
                    </div>
                </div>
            </form>

        </div>
        <br>
    </div>


</div>

<div id="dropDownSelect1"></div>

</body>
<footer>
    <div class="logoSet">
        <span style="color: black">Developed by &nbsp: <a href="https://ekshop.gov.bd"> &nbsp ekShop - <img src="{{asset('admin/img/ekshop.jpg')}}"
                                                                                 height="25px" width="40px"></a>
        </span>
    </div>
</footer>
</html>
