<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Candidato;
use App\Models\Vacante;
use Illuminate\Support\Facades\Auth;

class MostrarVacante extends Component
{
    public $vacante;
   
    

    public function render()
    {
       if(Auth::check()){ //si esta autentificado....
        $postulado=$this->vacante->checkpostulacion(auth()->user()); 
        //buscamos si existe en candidato un user_id igual al id del usuario autentificado
       }
        
    
        
        return view('livewire.mostrar-vacante',[
            'postulado'=>$postulado ?? '' //si la postulado es indefinido mandar vacío
        ]);
    }
}
