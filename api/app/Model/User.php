<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $table = 'tbl_user';
    protected $primaryKey = 'ID_USER';
    protected $guarded = ['ID_USER'];
    public $timestamps = false;
    protected $fillable = ['USERNAME','PASSWORD','ID_ROLE','ID_KOTA'];
}
