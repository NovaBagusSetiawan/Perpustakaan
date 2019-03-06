
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ asset('img/avatar5.png')}}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>{{ Auth::user()->name }}</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active"><a href="/dashboard"><i class="fa fa-home"></i> <span>Home</span></a></li>
        <li class="treeview">
          <a href="#"><i class="fa fa-book"></i> <span>Buku</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href='{{ url("buku") }}'>Data Buku</a></li>
            <li><a href='{{ url("koleksi") }}'>Data Koleksi Buku</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#"><i class="fa fa-user"></i> <span>Anggota</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href='{{ url("anggota") }}'>Data Anggota</a></li>
            <li><a href='{{ url("penerbit") }}'>Data Anggota Penerbit</a></li>
            <li><a href='{{ url("pengarang") }}'>Data Anggota Pengarang</a></li>
          </ul>
        </li>
        </li>
        <!--<li class="treeview">
            <a href="#"><i class="fa fa-industry"></i> <span>Penerbit</span>
              <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
            <li><a href='{{ url("penerbit") }}'>Data Penerbit</a></li>
            <li><a href='{{ url("penerbit/add") }}'>Tambah Penerbit</a></li>
            
          </ul>
        </li>
        <li class="treeview">
            <a href="#"><i class="fa fa-user"></i> <span>Pengarang</span>
              <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
            <li><a href='{{ url("pengarang") }}'>Data Pengarang</a></li>
            <li><a href='{{ url("pengarang/add") }}'>Tambah Pengarang</a></li>
            
          </ul>
        </li>-->
        <li class="treeview">
            <a href="#"><i class="fa fa-tasks"></i> <span>Rak</span>
              <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
            <li><a href='{{ url("rak") }}'>Data Rak</a></li>           
          </ul>
        </li>
        <li class="treeview">
            <a href="#"><i class="fa fa-shopping-cart"></i> <span>Pinjam Buku</span>
              <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
            </a>
            <ul class="treeview-menu">
            <li><a href='{{ url("trans/data_pinjam") }}'>Data Pinjam</a></li>
            <li><a href='{{ url("trans/peminjaman") }}'>Pinjam</a></li>
            <li><a href='{{ url("trans/pengembalian") }}'>Pengembalian</a></li>
            
          </ul>
        </li>
        <li class="treeview">
      <a href="#"><i class="fa fa-book"></i> <span>Laporan</span>
        <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="{{ url('rpt/anggota') }}" target="blank">Laporan Anggota</a></li>
      </ul>
    </li>
    <li class="treeview">
      <a href="#"><i class="fa fa-user"></i> <span>Users</span>
        <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="{{ url('user/add') }}" target="blank">Add New</a></li>
        <li><a href="{{ url('user') }}">Data User</a></li>
      </ul>
    </li>  


       
      </ul>
     
      
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>