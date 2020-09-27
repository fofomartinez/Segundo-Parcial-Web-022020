<link rel="stylesheet" href="{{asset('css/app.css')}}">

<div class="form-group">
    <label for="Codigo" class="control-label">{{'Codigo'}}</label>
    <input  type="text" name="Codigo" id="Codigo" value="{{ isset( $producto->Codigo)?$producto->Codigo:'' }}" 
        class="form-control {{$errors->has('Codigo')? 'is-invalid' : ''}} "
    >

    {!! $errors->first('Codigo','
            <div class="invalid-feedback"> :message </div>
    ') !!} 


</div>

<div class="form-group">
    <label for="Descripcion" class="control-label">{{'Descripcion'}}</label>
    <input  type="text" name="Descripcion" id="Descripcion" 
        value="{{ isset( $producto->Descripcion)?$producto->Descripcion:'' }}"
        class="form-control {{$errors->has('Descripcion')? 'is-invalid' : ''}} "
    >

    {!! $errors->first('Descripcion','
            <div class="invalid-feedback"> :message </div>
    ') !!} 
</div>

<div class="form-group">
    <label for="Marca" class="control-label">{{'Marca'}}</label>
    <input  type="text" name="Marca" id="Marca" value="{{ isset( $producto->Marca)?$producto->Marca:'' }}"
    class="form-control {{$errors->has('Marca')? 'is-invalid' : ''}} "
    >

    {!! $errors->first('Marca','
            <div class="invalid-feedback"> :message </div>
    ') !!} 

</div>

<div class="form-group">
    <label for="Foto" class="control-label">{{'Foto'}}</label>
    @if(isset($producto->Foto))
        
        <img src="{{ asset('storage').'/'.$producto->Foto}}" alt="" width="100" class="img-thumbnail img-fluid">
        
    @endif
    <input class="form-control {{$errors->has('Foto')?'is-invalid':''}}"  type="file" name="Foto" id="Foto" value="">
    {!! $errors->first('Foto','
            <div class="invalid-feedback"> :message </div>
        ') !!}   
    
</div>

    <input class="btn btn-success" type="submit" value="{{ $Modo == 'crear' ? 'Agregar Producto':'Modificar Producto' }}">
    <a href="{{url('productos')}}" class="btn btn-primary">Regresar</a>
