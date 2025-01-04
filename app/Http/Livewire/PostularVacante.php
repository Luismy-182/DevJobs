<?php

namespace App\Http\Livewire;

use App\Models\Vacante;
use Livewire\Component;
use App\Models\Candidato;
use Livewire\WithFileUploads;
use App\Notifications\NuevoCandidato;

class PostularVacante extends Component
{
    use WithFileUploads;
    public $cv;
    public $vacante;
    
    protected $rules=[
        'cv'=>'required|mimes:pdf'
    ];

    public function mount(Vacante $vacante){
        $this->vacante=$vacante;
    }



    public function postularme(){
        
        $datos=$this->validate();

        //almacenar la CV
        $cv = $this->cv->store('public/cv');

        $datos['cv']=str_replace('public/cv/', '',$cv);

        //Crea el candidato a la vacante
        $this->vacante->candidatos()->create([
            'user_id'=>auth()->user()->id,
            'cv'=>$datos['cv']
        ]);


        //crear notificacion y enviar el email
        $this->vacante->reclutador->notify
        (new NuevoCandidato 
        ($this->vacante->id,
        $this->vacante->titulo, 
        auth()->user()->id));

        //mostrar el usuario un mensaje de ok
        session()->flash('mensaje','Se envió tu postulación, Mucha suerte');
        return redirect()->back();



     
    }

    public function render()
    {
        return view('livewire.postular-vacante');
    }
}
