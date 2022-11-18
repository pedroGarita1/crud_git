<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TPersona
 * 
 * @property int $id
 * @property string $nombre
 * @property string $paterno
 * @property string $materno
 * @property Carbon $fecha_nacimiento
 * @property string $genero
 * @property string $descripcion
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class TPersona extends Model
{
	protected $table = 't_personas';

	protected $dates = [
		'fecha_nacimiento'
	];

	protected $fillable = [
		'nombre',
		'paterno',
		'materno',
		'fecha_nacimiento',
		'genero',
		'descripcion'
	];
}
