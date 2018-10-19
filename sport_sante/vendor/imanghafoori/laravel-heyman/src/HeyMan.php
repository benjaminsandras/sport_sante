<?php

namespace Imanghafoori\HeyMan;

use Imanghafoori\HeyMan\MakeSure\HttpClient;
use Imanghafoori\HeyMan\Situations\SituationsProxy;
use Imanghafoori\HeyMan\Switching\Turn;

class HeyMan
{
    use Turn;

    public function forget(): Forget
    {
        return new Forget();
    }

    public function __call($method, $args)
    {
        resolve(Chain::class)->writeDebugInfo(debug_backtrace(DEBUG_BACKTRACE_PROVIDE_OBJECT, 2));

        return  SituationsProxy::call($method, $args);
    }

    public function makeSure($app): HttpClient
    {
        return new HttpClient($app);
    }

    public function checkPoint($pointName)
    {
        event('heyman_checkpoint_'.$pointName);
    }
}
