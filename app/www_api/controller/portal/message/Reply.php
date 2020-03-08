<?php


namespace app\www_api\controller\portal\message;

use app\www_api\validate\PortalMessage;
use think\exception\ValidateException;

class Reply extends Message {
    public function initialize() {
        parent::_init();
    }

    /**
     * 提交数据验证
     * @param array $data
     * @return array|string|true
     */
    protected function dataValidate($data = array()) {
        try {
            validate(PortalMessage::class)->scene('reply')->check($data);
        } catch (ValidateException $e) {
            $this->ajaxReturn(400, $e->getError());
        }
    }

    public function index() {
        $param = input('put.');
        $this->dataValidate($param);
        parent::reply($param['group'], $param['content']);
    }

}