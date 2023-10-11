<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Disciplina
 * 
 * @property int $id_disciplina
 * @property int $id_linea
 * @property string $nombre
 * 
 * @property LineasInvestigacion $lineas_investigacion
 *
 * @package App\Models
 */
class Disciplina extends Model
{
	protected $table = 'disciplinas';
	protected $primaryKey = 'id_disciplina';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id_disciplina' => 'int',
		'id_linea' => 'int'
	];

	protected $fillable = [
		'id_linea',
		'nombre'
	];

	public function lineas_investigacion()
	{
		return $this->belongsTo(LineasInvestigacion::class, 'id_linea');
	}
}
