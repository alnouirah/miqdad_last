<?php
namespace App\helperClasses;
use App\aboutUs;


class aboutUsHome {
    public function getaboutUsHome(){
        $aboutUs = aboutUs::withTranslation(app('lang'))->get();
        return $aboutUs;
    }
}
