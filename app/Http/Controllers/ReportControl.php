<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// https://mpdf.github.io/installation-setup/installation-v7-x.html 
// https://www.simplesoftware.io/docs/simple-qrcode QR COde Library
use Illuminate\Support\Facades\DB;
use Mpdf\Mpdf;
use App\MAnggota;
use App\MKoleksi;

class ReportControl extends Controller
{
    //

    function rpt_anggota(){
        $anggota = MAnggota::all();
        $content = view('report.rpt_anggota',compact('anggota'));

        $pdf = new MPdf([
            'orientation'=>"L",
            'format'=>"Folio"
        ]);

        $pdf->WriteHTML($content);
        $pdf->Output(public_path().'/Laporan Anggota.pdf','I');
    }

    function rpt_qrcode_anggota(){
        $anggota = MAnggota::all();

        $content = view('report.rpt_qrcode_anggota',compact('anggota'));

        $pdf = new MPdf([
            'orientation'=>"P",
            'format'=>"Folio"
        ]);

        $pdf->WriteHTML($content);
        $pdf->Output(public_path().'/Laporan QR Code Anggota.pdf','I');
    }
    
    function rpt_buku(){
        $buku = DB::select('SELECT tb_buku.kd_buku , tb_buku.judul ,  tb_buku.tempat_terbit , tb_buku.tahun_terbit , tb_buku.halaman , tb_buku.edisi , tb_buku.ISBN FROM tb_buku LEFT JOIN tb_pengarang ON tb_buku.kd_pengarang=tb_pengarang.kd_pengarang LEFT JOIN tb_penerbit ON tb_buku.kd_penerbit=tb_penerbit.kd_penerbit LEFT JOIN tb_kategori ON tb_buku.kd_kategori=tb_kategori.kd_kategori');
        //$buku = MKoleksi::all();
        //jadi kalau pakai query builder itu manggilnya satu kali aja
        $pdf = new Mpdf([
            'orientation' => "L",
            'format'      => "Folio"
        ]);
        $content = view('report.rpt_buku',compact('buku'));

        $pdf->WriteHTML($content);
        $pdf->Output(public_path()."/Laporan Buku.pdf","I");
    }

    function rpt_QRCode_Buku(){
        $buku = MKoleksi::all();

        $content = view('report.rpt_qrcode_buku',compact('buku'));

        $pdf = new MPdf([
            'orientation'=>"P",
            'format'=>"Folio"
        ]);

        $pdf->WriteHTML($content);
        $pdf->Output(public_path().'/Laporan QR Code Buku.pdf','I');

    }
}