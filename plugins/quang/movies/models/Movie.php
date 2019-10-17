<?php namespace Quang\Movies\Models;

use Model;

/**
 * Model
 */
class Movie extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;


    /**
     * @var string The database table used by the model.
     */
    public $table = 'quang_movies_';

    protected $jsonable=['images'];

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    /* Relations */

    public $attachOne=[
        'poster'=>'System\Models\File'
    ];
    public $attachMany=[
        'movie_gallery'=>'System\Models\File'
    ];

}
