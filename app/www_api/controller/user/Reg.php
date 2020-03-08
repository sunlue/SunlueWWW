<?php
/**
 * User: xieibing
 * Date: 2019-3-4
 * Time: 11:18
 */

namespace app\www_api\controller\user;

use app\www_api\validate\UserInfo;
use think\exception\ValidateException;

class Reg extends User {
    /**
     * 提交数据验证
     * @param array $data
     * @return array|string|true
     */
    protected function dataValidate($data = array()) {
        try {
            validate(\app\www_api\validate\UserAccount::class)->scene('create')->check($data);
            validate(UserInfo::class)->scene('create')->check($data);
        } catch (ValidateException $e) {
            $this->ajaxReturn(400, $e->getError());
        }
    }

    public function index() {
        $param = input('post.');
        $this->dataValidate($param);
        $checkAccount = \app\www_api\model\UserAccount::checkAccount(array(
            'account' => $param['account']
        ));
        if (!empty($checkAccount)) {
            $this->ajaxReturn(400, lang('USER_ACCOUNT_ALREADY_EXIST'));
        }
        if (!empty($param['mobile'])) {
            $checkMobile = \app\www_api\model\UserAccount::checkAccount(array(
                'mobile' => $param['mobile']
            ));
            if (!empty($checkMobile)) {
                $this->ajaxReturn(400, lang('USER_MOBILE_ALREADY_EXIST'));
            }
        }
        parent::create($param);
    }
}