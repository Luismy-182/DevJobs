<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vacante extends Model
{
    use HasFactory;

    protected $dates = ['ultimo_dia'];
    
    protected $fillable=[
        'titulo',
        'salario_id',
        'categoria_id',
        'empresa',
        'ultimo_dia',
        'descripcion',
        'imagen',
        'user_id'
    ];

    //relacionando tablas como si fuera un join con el ORM
    public function categoria(){
        return $this->belongsTo(Categoria::class);
    }
    //relacionando tablas como si fuera un join con el ORM
    //uno a uno
    public function salario(){
        return $this->belongsTo(Salario::class);
    }

    public function candidatos(){
        return $this->hasMany(Candidato::class)->orderBy('created_at', 'DESC');
    }

    public function reclutador(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function checkpostulacion(User $user){
        return $this->candidatos->contains('user_id', $user->id);
    }

 
}
