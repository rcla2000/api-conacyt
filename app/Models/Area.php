<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Area
 * 
 * @property int $id_area
 * @property string $nombre
 * 
 * @property Collection|LineasInvestigacion[] $lineas_investigacions
 *
 * @package App\Models
 */
class Area extends Model
{
	protected $table = 'areas';
	protected $primaryKey = 'id_area';
	public $timestamps = false;

	protected $fillable = [
		'nombre'
	];

	public function lineas_investigacions()
	{
		return $this->hasMany(LineasInvestigacion::class, 'id_area');
	}
}
