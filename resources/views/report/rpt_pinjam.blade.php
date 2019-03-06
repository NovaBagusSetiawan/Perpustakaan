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
 
        width:7%;
        margin-bottom: 5px;
        margin-top:0;
        text-align: center;
    }

    .judul h3{
        border:2px solid ;
        width:7%;
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
 <h3>Pinjam</h3>
</div>

<table>
    <tr class="title">
        <th>No Pinjam</th>
        <th>Tanggal Buku Kembali</th>
        <th>Judul</th>
        <th>Nama Peminjam</th>
    </tr>
    @foreach($pinjam as $rsPin)
                <tr>
                    <td>{{ $rsPin->no_pinjam }}</td>
                    <td>{{ $rsPin->tgl_kembali }}</td>   
                    <td>{{ $rsPin->judul }}</td>
                    <td>{{ $rsPin->nama }}</td>
                </tr>
     @endforeach

</table>