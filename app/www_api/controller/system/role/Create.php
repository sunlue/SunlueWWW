<?php
/**
 * User: xiebing
 * Date: 2019-6-14
 * Time: 15:31
 */

namespace app\www_api\controller\system\role;

use app\www_api\validate\UserRole;
use think\exception\ValidateException;

class Create extends Role {
    public function initialize() {
        parent::_init();
    }

    /**
     * 提交数据验证
     * @param array $data
     * @return array|string|true
     */
    protected function dataValidate($data = array()) {
        try{
            validate(UserRole::class)->scene('create')->check($data);
        }catch (ValidateException $e){
            $this->ajaxReturn(400,$e->getError());
        }
    }

    public function index() {
        $param = input('post.');
        $this->dataValidate($param);
        parent::create($param);
    }
}