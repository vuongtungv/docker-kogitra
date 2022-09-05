<?php

namespace App\Models\client\products;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class ProductsModel extends Model
{
    //
    protected $limit;
    protected $table = 'tv_product';

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->limitArrial = 8;
    }

    public function getNewArrial(){
        $list = DB::table($this->table)
            ->select('id','name', 'alias', 'price_range_1', 'price_range_2', 'image', 'category_id', 'category_name', 'published')
            ->where([
                ['published','=' , 1],
                ['show_home','=', '1']
            ])
            ->limit($this->limitArrial)
            ->orderBy('created_at', 'asc')
            ->get();
        return $list;
    }
    public function getFeatured(){
        $list = DB::table($this->table)
            ->select('id','name', 'alias', 'price_range_1', 'price_range_2', 'image', 'category_id', 'category_name', 'published')
            ->where([
                ['published','=' , 1],
            ])
            ->limit($this->limitArrial)
            ->orderBy('created_at', 'asc')
            ->get();
        return $list;
    }


    public function getDetail($id){
        $detail = DB::table($this->table)
            ->select('id','name','alias', 'brief','description', 'category_id','category_name', 'image', 'created_at')
            ->where([
                ['id','=' , $id],
                ['published', '=', 1],
            ])
            ->first();
        return $detail;
    }

}
