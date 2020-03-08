<?php
/**
 * User: xiebing
 * Date: 2019-6-20
 * Time: 10:54
 */

namespace app\www_api\controller\oauth;

use app\www_api\controller\user\User;
use app\www_api\common\controller\eWwwApi;
use think\exception\ValidateException;

class Auth extends eWwwApi {

    public function initialize() {
        parent::_init();
    }

    public function index() {
        $param = input('get.');
        $this->dataValidate($param);
    }

    public function refresh() {
        parent::_refreshToken(function ($token_data) {
            $token = User::set_token($token_data, $token_data['uniqid']);
            $this->ajaxReturn(200, array('access_token' => $token));
        });
    }
}
























