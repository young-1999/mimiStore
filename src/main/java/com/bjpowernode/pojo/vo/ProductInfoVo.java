package com.bjpowernode.pojo.vo;
/**
 * @Author yao
 * @Description
 * @Date 9:28 2022/11/3
 * @Param null
 * @Return
**/
public class ProductInfoVo {
    //商品名称
    private String pName;
    //商品类别
    private Integer typeId;
    //最低价格
    private Double lprice;
    //最高价格
    private Double hprice;
    //设置页码
    private Integer page = 1;

    public ProductInfoVo() {
    }

    public ProductInfoVo(String pName, Integer typeId, Double lprice, Double hprice, Integer page) {
        this.pName = pName;
        this.typeId = typeId;
        this.lprice = lprice;
        this.hprice = hprice;
        this.page = page;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Double getLprice() {
        return lprice;
    }

    public void setLprice(Double lprice) {
        this.lprice = lprice;
    }

    public Double getHprice() {
        return hprice;
    }

    public void setHprice(Double hprice) {
        this.hprice = hprice;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    @Override
    public String toString() {
        return "ProductInfoVo{" +
                "pName='" + pName + '\'' +
                ", typeId=" + typeId +
                ", lprice=" + lprice +
                ", hprice=" + hprice +
                ", page=" + page +
                '}';
    }
}