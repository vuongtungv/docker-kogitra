<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Client\news\NewsController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Client\banners\BannersController;

class HomeController extends Controller
{
    //
    public $bannersController;
    public $newsController;

    public function __construct()
    {
        $this->bannersController = new BannersController();

        $this->newsController = new NewsController();
    }


    public function index(){

        $listBanners = $this->bannersController->getBanners(1);

        $oneBanner = $this->bannersController->getBanners(2);

        $newsHome = $this->newsController->getNewsHome();

        $compact = [
            'listBanners',
            'oneBanner',
            'newsHome',
        ];

        return view('client.index', compact($compact));
    }
}
