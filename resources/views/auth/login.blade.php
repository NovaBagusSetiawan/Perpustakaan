<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Log in</title>
    @include('sc_head')
</head>
<body class="hold-transition login-page" style="background-color:info; !important;">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>NBS'</b>Library</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body" style="background-color:white; !important;">
    <p class="login-box-msg">SIGN IN</p>
    <!-- Pesan Error -->
    @if ($errors->has('email'))
        <span class="invalid-feedback" role="alert">
            <strong>Email yang Anda masukkan Salah</strong>
        </span>
    @endif

    @if ($errors->has('password'))
        <span class="invalid-feedback" role="alert">
            <strong>Password yang Anda masukkan Salah</strong>
        </span>
    @endif  
     <!-- End Pesan Error -->  
    <form action="{{ route('login') }}" method="post">
        @csrf
      <div class="form-group has-feedback">
        <input type="email" class="form-control" name="email" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8"></div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-success btn-block btn-flat">Masuk</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <a href="#">Lupa Password</a><br>
    <a href="register" class="text-center">Buat Akun</a>

  </div>
  <!-- /.login-box-body -->
</div>
@include('sc_footer')
</body>
</html>
