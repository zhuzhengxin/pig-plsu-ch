/*
 *    Copyright (c) 2018-2025, lengleng All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * Neither the name of the pig4cloud.com developer nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 * Author: lengleng (wangiegie@gmail.com)
 */
package com.pig4cloud.pig.admin.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.pig4cloud.pig.admin.api.entity.Bill;
import com.pig4cloud.pig.admin.mapper.BillMapper;
import com.pig4cloud.pig.admin.service.BillService;
import org.springframework.stereotype.Service;

/**
 *
 *
 * @author zzx
 * @date 2019-06-18 12:33:05
 */
@Service("billService")
public class BillServiceImpl extends ServiceImpl<BillMapper, Bill> implements BillService {

  /**
   * 简单分页查询
   * @param bill
   * @return
   */
  @Override
  public IPage<Bill> getBillPage(Page<Bill> page, Bill bill){
      return baseMapper.getBillPage(page,bill);
  }

	@Override
	public Bill getCMoneyAndCah(Bill bill) {
		return baseMapper.getCMoneyAndCah(bill);
	}

}
