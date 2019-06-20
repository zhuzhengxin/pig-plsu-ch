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
package com.pig4cloud.pig.admin.api.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 *
 *
 * @author zzx
 * @date 2019-06-18 12:33:05
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("bill")
public class Bill extends Model<Bill> {
private static final long serialVersionUID = 1L;

    /**
   * 主键id
   */
    @TableId
    private Integer id;
    /**
   * 所属公司
   */
    private String company;
    /**
   * 经手人
   */
    private String person;
    /**
   * 买主
   */
    private String buyer;
    /**
   * 车牌号
   */
    private String busNumber;
    /**
   * 日期
   */
    private String time;
    /**
   * 0: 进货 1：出货
   */
    private String type;
    /**
   * 0:结算 1：未结算
   */
    private String moneyType;
    /**
   * 金额
   */
    private Double money;
    /**
   * 容量
   */
    private Double ah;
    /**
   * 单价
   */
    private Double unitPrice;
	/**
	 * 出油总容量(已结算)
	 */
	private Double cyahAll;
	/**
	 * 出油总容量(未结算)
	 */
	private Double cnahAll;
	/**
	 * 出油总金额(已结算)
	 */
	private Double cymoney;
	/**
	 * 出油总金额(未结算)
	 */
	private Double cnmoney;
	/**
	 * 进油总容量(结算)
	 */
	private Double jyahAll;
	/**
	 * 进油总金额(结算)
	 */
	private Double jymoney;
	/**
	 * 开始时间
	 */
	private String time1;
	/**
	 * 结束时间
	 */
	private String time2;
	/**
	 * 下拉框数组
	 */
	private String rowData [];



}
