<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class LineasInvestigacion
 * 
 * @property int $id_linea
 * @property int $id_area
 * @property string $nombre
 * 
 * @property Area $area
 * @property Collection|Disciplina[] $disciplinas
 *
 * @package App\Models
 */
class LineasInvestigacion extends Model
{
	protected $table = 'lineas_investigacion';
	protected $primaryKey = 'id_linea';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id_linea' => 'int',
		'id_area' => 'int'
	];

	protected $fillable = [
		'id_area',
		'nombre'
	];

	public function area()
	{
		return $this->belongsTo(Area::class, 'id_area');
	}

	public function disciplinas()
	{
		return $this->hasMany(Disciplina::class, 'id_linea');
	}
}
