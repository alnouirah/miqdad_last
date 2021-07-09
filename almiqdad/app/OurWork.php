<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class OurWork extends Model
{
    protected $table = 'our_works';
    use Translatable;
    protected $translatable = ['paragraph'];
}
