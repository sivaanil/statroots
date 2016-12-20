<?php
/**
 * @link http://www.yee-soft.com/
 * @copyright Copyright (c) 2015 Taras Makitra
 * @license http://www.apache.org/licenses/LICENSE-2.0
 */

namespace yeesoft\training;

use Yii;

/**
 * Post Module For Yee CMS
 *
 * @author Taras Makitra <makitrataras@gmail.com>
 */
class TrainingModule extends \yii\base\Module
{
    /**
     * Version number of the module.
     */
    const VERSION = '0.1.0';

    public $controllerNamespace = 'yeesoft\training\controllers';


    public function init()
    {
        parent::init();
    }
}