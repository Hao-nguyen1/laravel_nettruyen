<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chapter extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $fillable = [
    	'truyen_id', 'tieude', 'tomtat', 'noidung', 'slug_chapter', 'kichhoat'
    ];
    protected $primaryKey = 'id';
    protected $table = 'chapter';


    public function truyen()
    {
        return $this->belongsTo('App\Models\Truyen');
    }

}
