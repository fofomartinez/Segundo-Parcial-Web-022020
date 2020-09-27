<?php

namespace App\Http\Controllers;

use App\Producto;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $nombre = $request ->get('buscar') ; 
        //dd($nombre);
        $productos['productos']=Producto::where('Descripcion','like',"%$nombre%")->paginate(5);
      // $productos['productos']=Producto::paginate(4);
       
        return view('productos.index',$productos);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('productos.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $campos=[
            'Codigo'=> 'required|string|max:100',
            'Descripcion'=> 'required|string|max:100',
            'Marca'=> 'required|string|max:100',
            'Foto'=> 'required|max:1000|mimes:jpeg,png,jpg',

        ];

        $mensaje=[
            "required"=>'El campo :attribute es requerido'
        ];

        $this->validate($request,$campos,$mensaje);
        
        $datosProducto = request()->except('_token');
        //return response()->json($datosProducto) ;

        if($request->hasfile('Foto')){
            $datosProducto['Foto']=$request->file('Foto')->store('uploads','public');
        }

        Producto::insert($datosProducto);

      
       return redirect('productos')->with('Mensaje','Producto agregado con éxito');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Producto  $producto
     * @return \Illuminate\Http\Response
     */
    public function show(Producto $producto)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Producto  $producto
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $producto = Producto::findOrFail($id);
        return view('productos.edit',compact('producto'));//producto es la misma bariable de ar arriba
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Producto  $producto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $campos=[
            'Codigo'=> 'required|string|max:100',
            'Descripcion'=> 'required|string|max:100',
            'Marca'=> 'required|string|max:100',
            

        ];

        

       

        if($request->hasfile('Foto')){
            $campos+=['Foto'=> 'required|max:1000|mimes:jpeg,png,jpg'];
        }

        $mensaje=[
            "required"=>'El campo :attribute es requerido'
        ];

        

        $this->validate($request,$campos,$mensaje);
        $datosProducto = request()->except(['_token','_method']);

        if($request->hasfile('Foto')){
            $producto = Producto::findOrFail($id);
            Storage::delete('public/'.$producto->Foto);
            $datosProducto['Foto']=$request->file('Foto')->store('uploads','public');
        }

        Producto::where('id','=',$id)->update($datosProducto);

        $producto = Producto::findOrFail($id);
        //return view('productos.edit',compact('producto'));
        return redirect('productos')->with('Mensaje','Producto modificado con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Producto  $producto
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $producto = Producto::findOrFail($id);
            
        if(Storage::delete('public/'.$producto->Foto)){
            Producto::destroy($id);
        }

        
               return redirect('productos')->with('Mensaje','Producto Eliminado con éxito');
    

        
    }
}
