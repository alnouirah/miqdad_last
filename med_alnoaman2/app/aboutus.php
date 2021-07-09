<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class aboutus extends Model
{
    protected $table = 'aboutus';
    use Translatable;
    protected $translatable = ['intro','vision','mission','goals','history'];   
}
