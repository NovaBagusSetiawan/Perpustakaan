<style>
  
   .judul h3,h4,p{
        margin:0;
        text-align: center;
    }
    p{
        padding-bottom:15px;
        margin-bottom: 10px;
        border-bottom: 5px;
        border-bottom: 5px double #000;
    }

    .title{
        background-color: #ccc;
    }

    .text{
        background-color: #e1e5ed;
        width:54%;
        height: 149px;
        border:1px solid #ccc;
        position: absolute;
        top:43.55%;
        left: 200px;   
    }

   h5{  
       margin:5px 15px 10px 10px;
        padding-top:10px;
        font-size:15;
    
  
    }
    
    img{
        border: 1px solid #ccc;
    }
    
</style>
<div class="judul">
<h1>PEPRUSTAKAAN NBS</h1>
<h2>WEARNES EDUCATION CENTER MADIUN</h2>
<p>Jl Thamrin 35 A Madiun, Telp : (0351) 456789 , www.wecmdn.com, perpus@wecmdn.com</p>

<div class="text">
<h5>No. Anggota   : {{ $anggota->no_anggota }} </h5>
<h5>Nama          : {{ $anggota->nama }} </h5>
<h5>Alamat        : {{ $anggota->alamat }} </h5>
<h5>E-mail        : {{ $anggota->email }} </h5>
</div>

<img src="data:image/png;base64,{{ base64_encode(QrCode::format('png')->size(150)->color(31, 42, 66)->generate($anggota->no_anggota) ) }}">