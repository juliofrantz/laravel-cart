<?php
#App\Plugins\Payment\PaypalExpress\Admin\AdminController.php

namespace App\Plugins\Payment\PaypalExpress\Admin;

use App\Http\Controllers\Controller;
use App\Plugins\Payment\PaypalExpress\AppConfig;

class AdminController extends Controller
{
    public $plugin;

    public function __construct()
    {
        $this->plugin = new AppConfig;
    }
    public function index()
    {
        return view($this->plugin->pathPlugin.'::Admin',
            [
                
            ]
        );
    }
}
