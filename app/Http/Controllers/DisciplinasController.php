<?php

namespace App\Http\Controllers;

use App\Models\Disciplina;
use Illuminate\Http\Request;

class DisciplinasController extends Controller
{
    public function inicio() {
        return Disciplina::select('id_disciplina as id', 'nombre')->get();
    }
}
