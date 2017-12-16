package com.ds.vo;

public final class PhotoVO {
    private String uid;
    private String did;
    private String tid;
    private int countInPage;
    private int page;// 第几页
    private static final int DEFAULT_COUNT = 10;

    public PhotoVO() {
        this(DEFAULT_COUNT, 1);
    }

    /** 返回10个最新的照片，第page页 */
    public PhotoVO(int page) {
        this(null, null, DEFAULT_COUNT, page, null);
    }

    /** 返回countInPage个最新的照片，第page页 */
    public PhotoVO(int countInPage, int page) {
        this(null, null, countInPage, page, null);
    }

    /** 返回countInPage个最新的照片，第page页，带有搜索值tid */
    public PhotoVO(int countInPage, int page, String tid) {
        this(null, null, countInPage, page, tid);
    }

    public PhotoVO(String uid, String did,
                     int countInPage, int page, String tid) {
        this.uid = uid;
        this.did = did;
        this.countInPage = countInPage;
        this.page = page;
        this.tid = tid;
    }

    public boolean isFilterUser() {
        return uid != null;
    }

    public boolean isFilterDoctor() {
        return did != null;
    }

    public  boolean isFilterSymptom() {
        return tid != null;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
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

}
