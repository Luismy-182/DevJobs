<?php

namespace App\Http\Livewire;

use App\Models\Salario;
use Livewire\Component;
use App\Models\Categoria;

class FiltrarVacantes extends Component
{

    public $termino;
    public $categoria;
    public $salario;

    public function leerDatosFormulario(){
        $this->emit('terminosBusqueda', $this->termino, $this->categoria, $this->salario); //emitimos mandamos una señal con el nombre terminos Busqueda
    }

    public function render()
    {
        //consultar
        $salarios=Salario::all();
        $categorias= Categoria::all();

        return view('livewire.filtrar-vacantes',[
            'salarios'=>$salarios,
            'categorias'=>$categorias,
        ]);
    }
}
