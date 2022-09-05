<?php

namespace App\Http\Controllers\Client\products;

use App\Http\Controllers\Controller;
use App\Models\client\products\ProductsModel;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    //
    public $productsModel;

    public function __construct()
    {
        $this->productsModel = new ProductsModel();
    }


    public function getNewArrival(){
        $result = $this->productsModel->getNewArrial();
        return $result;
    }

    public function getFeatured(){
        $result = $this->productsModel->getFeatured();
        return $result;
    }


    public function detail($id, $alias){
        $detail = $this->productsModel->getDetail($id);
        $compact = [
            'detail',
        ];

        return view("client.products.detail", compact($compact));
    }
}
