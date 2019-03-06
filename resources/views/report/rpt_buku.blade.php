<style>
    table{
        position: relative;
        border-collapse:collapse;
        width:100%;
    }
    table td{
        border: 1px solid #000;
        padding: 5px;
    }
    h1,h2,p{
        margin:0;
        text-align: center;
    }
    p{
        padding-bottom:15px;
        margin-bottom: 10px ;
        border-bottom: 5px double #000;
    }

    .title{
        background-color:#cf6815;
    }

    .judul{
 
        width:5%;
        margin-bottom: 5px;
        margin-top:0;
        text-align: center;
    }

    .judul h3{
        border:2px solid ;
        width:5%;
        margin-bottom: 5px;
        margin-left: 5px;
        margin-top:0;
        text-align: center;
    }

</style>

<h1>PEPRUSTAKAAN NBS</h1>
<h2>WEARNES EDUCATION CENTER MADIUN</h2>
<p>Jl Thamrin 35 A Madiun, Telp : (0351) 456789 , www.wecmdn.com, perpus@wecmdn.com</p>

<div class="judul">
 <h3>Buku</h3>
</div>

<table>
    <tr class="title">
        <td>#</td>
        <td>Judul</td>
        <td>Tempat Terbit</td>
        <td>Tahun Terbit</td>
        <td>Halaman</td>
        <td>Edisi</td>
        <td>ISBN</td>
    </tr>
    @foreach($buku as $rsBuku)
    <tr>
        <td>{{ $rsBuku->kd_buku  }}</td>
        <td>{{ $rsBuku->judul }}</td>
        <td>{{ $rsBuku->tempat_terbit }}</td>
        <td>{{ $rsBuku->tahun_terbit }}</td>
        <td>{{ $rsBuku->halaman }}</td>
        <td>{{ $rsBuku->edisi }}</td>
        <td>{{ $rsBuku->ISBN }}</td>
    </tr>
    @endforeach

</table>