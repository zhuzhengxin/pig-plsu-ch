
package com.pig4cloud.pig.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pig4cloud.pig.admin.api.entity.Bill;
import org.apache.ibatis.annotations.Param;

/**
 *
 *
 * @author zzx
 * @date 2019-06-18 12:33:05
 */
public interface BillMapper extends BaseMapper<Bill> {
  /**
    * 简单分页查询
    * @param bill
    * @return
    */
  IPage<Bill> getBillPage(Page page, @Param("bill") Bill bill);


	Bill  getCMoneyAndCah(@Param("bill") Bill bill);




}
