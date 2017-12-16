package com.ds.vo;

public final class SymptomVO {
    private String uperId;
    private int countInPage;
    private int page;// 第几页
    private boolean isFilterParent;
    private static final int DEFAULT_COUNT = 10;

    /** 返回10个最新的分类，第page页 */
    public SymptomVO(int page) {
        this(DEFAULT_COUNT, page, null, false);
    }

    /** 返回countInPage个最新的分类，第page页 */
    public SymptomVO(int countInPage, int page) {
        this(countInPage, page, null, false);
    }

    public SymptomVO(int countInPage, int page, String uperId){
        this(countInPage, page, uperId, true);
    }

    /** 返回countInPage个最新的分类，第page页，带有搜索值uperid */
    public SymptomVO(int countInPage, int page, String uperId, boolean isFilterParent) {
        this.uperId = uperId;
        this.countInPage = countInPage;
        this.page = page;
        this.isFilterParent = isFilterParent;
    }

    public boolean isFilterParent() {
        return isFilterParent;
    }

    public String getUperId() {
        return uperId;
    }

    public void setUperId(String uperId) {
        this.uperId = uperId;
    }

    public int getCountInPage() {
        return countInPage;
    }

    public void setCountInPage(int countInPage) {
        this.countInPage = countInPage;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setFilterParent(boolean filterParent) {
        isFilterParent = filterParent;
    }

}
