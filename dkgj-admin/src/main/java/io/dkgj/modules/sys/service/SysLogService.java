/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.demo.com
 *
 * 版权所有，侵权必究！
 */

package io.dkgj.modules.sys.service;


import com.baomidou.mybatisplus.extension.service.IService;
import io.dkgj.common.utils.PageUtils;
import io.dkgj.modules.sys.entity.SysLogEntity;

import java.util.Map;


/**
 * 系统日志
 *
 * @author Mark sunlightcs@gmail.com
 */
public interface SysLogService extends IService<SysLogEntity> {

    PageUtils queryPage(Map<String, Object> params);

}
