
<link rel="stylesheet" href="{{asset('css/app.css')}}">

<style type="text/css">
  h1{
      text-align: center;
  }

</style>  
@section('content')



<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Tienda</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-link " href="{{url('productos')}}">Listar productos <span class="sr-only">(current)</span></a>
          <a class="nav-link active" href="{{url('productos/create')}}">Ingresar Producto </a>
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Editar producto</a>

        </div>
      </div>
    </nav>


    
            <h1 class="display-5">Crear un nuevo producto</h1>
           
    
</div>

<div class="container">

    <form action="{{url('/productos')}}" method="post" enctype="multipart/form-data" class="form-horizontal">
    {{ csrf_field() }}   
    @include('productos.form', ['Modo'=>'crear']);
    
    </form>

</div>