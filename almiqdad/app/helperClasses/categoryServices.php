<?php
namespace App\helperClasses;
use App\Categories;
use App\Services;

class categoryServices {
    public function getCategories(){
        $Categories = Categories::withTranslation(app('lang'))->get();
        return $Categories;
    }
    public function getServices(){
        $Service = Services::withTranslation(app('lang'))->get();
        return $Service;
    }
}
