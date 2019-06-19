package com.pig4cloud.pig.admin.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.pig4cloud.pig.admin.api.entity.Bill;
import com.pig4cloud.pig.admin.service.BillService;
import com.pig4cloud.pig.common.core.util.R;
import com.pig4cloud.pig.common.log.annotation.SysLog;
import lombok.AllArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;


/**
 *
 *
 * @author zzx
 * @date 2019-06-18 12:33:05
 */
@RestController
@AllArgsConstructor
@RequestMapping("/bill")
public class BillController {

  private final BillService billService;

  /**
   * 简单分页查询
   * @param page 分页对象
   * @param bill
   * @return
   */
  @GetMapping("/page")
  public R<IPage<Bill>> getBillPage(Page<Bill> page, Bill bill) {
	  IPage<Bill> data = billService.getBillPage(page,bill);
      //此处来一波data2,将汇总放入此处
	  //查询出油汇总金额+ 升数（已结算）
	  Bill billTotal = new Bill();
	  bill.setType("1");// 1代表 出油
	  bill.setMoneyType("0");// 0代表 已结算
	  Bill cyjs = billService.getCMoneyAndCah(bill);
	  billTotal.setCyahAll(cyjs.getCyahAll());
	  billTotal.setCymoney(cyjs.getCymoney());

	// 查询出油汇总金额+ 升数（未结算）
	  bill.setType("1");// 1代表 出油
	  bill.setMoneyType("1");// 0代表 已结算
	  Bill cywjs = billService.getCMoneyAndCah(bill);
	  billTotal.setCnmoney(cywjs.getCymoney());
	  billTotal.setCnahAll(cywjs.getCyahAll());

	// 查询进油汇总金额+ 升数（已结算）
	  bill.setType("0");// 0代表 进油
	  bill.setMoneyType("0");// 0代表 已结算
	  Bill jyjs = billService.getCMoneyAndCah(bill);
	  billTotal.setJyahAll(jyjs.getCyahAll());
	  billTotal.setJymoney(jyjs.getCymoney());

  	return  new R(data,billTotal);

  }


  /**
   * 通过id查询单条记录
   * @param id
   * @return R
   */
  @GetMapping("/{id}")
  public R<Bill> getById(@PathVariable("id") Integer id){
    return new R<>(billService.getById(id));
  }

  /**
   * 新增记录
   * @param bill
   * @return R
   */
  //@SysLog("新增")
  @PostMapping
 // @PreAuthorize("@pms.hasPermission('bill_add')")
  public R save(@RequestBody Bill bill){
  	    if(bill.getType().equals("0")){
			bill.setMoneyType("0");
		}
		if(bill.getType().equals("1")){
			  bill.setMoneyType("1");
  	    }
	  bill.setMoney(bill.getAh()*bill.getUnitPrice());
    return new R<>(billService.save(bill));
  }

  /**
   * 修改记录
   * @param bill
   * @return R
   */
  //@SysLog("修改")
  @PutMapping
  //@PreAuthorize("@pms.hasPermission('bill_edit')")
  public R update(@RequestBody Bill bill){
	  if(bill.getType().equals("0")){
		  bill.setMoneyType("0");
	  }
	  if(bill.getType().equals("1")){
		  bill.setMoneyType("1");
	  }
	  bill.setMoney(bill.getAh()*bill.getUnitPrice());
    return new R<>(billService.updateById(bill));
  }

  /**
   * 通过id删除一条记录
   * @param id
   * @return R
   */
  //@SysLog("删除")
  @DeleteMapping("/{id}")
  //@PreAuthorize("@pms.hasPermission('bill_del')")
  public R removeById(@PathVariable Integer id){
    return new R<>(billService.removeById(id));
  }

}
