<?php
namespace App\helperClasses;
use App\customerSurvey;
use Eloquent;

class customerSurveyCols extends Eloquent {

    public function getTableColumns() {
        $test = new customerSurvey();
        return $test->getConnection()->getSchemaBuilder()->getColumnListing($test->getTable());
    }
}
