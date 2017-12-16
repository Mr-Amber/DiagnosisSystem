package com.ds.vo;

public final class MessageVO {
    private String sender_id;
    private String receiver_id;
    private String pid;
    private int countInPage;
    private int page;// 第几页
    private static final int DEFAULT_COUNT = 10;

    public MessageVO() {
        this(DEFAULT_COUNT, 1);
    }

    /** 返回10个最新的照片，第page页 */
    public MessageVO(int page) {
        this(null, null, DEFAULT_COUNT, page, null);
    }

    /** 返回countInPage个最新的消息，第page页 */
    public MessageVO(int countInPage, int page) {
        this(null, null, countInPage, page, null);
    }

    /** 返回countInPage个最新的消息，第page页，带有搜索值pid */
    public MessageVO(int countInPage, int page, String pid) {
        this(null, null, countInPage, page, pid);
    }

    public MessageVO(String sender_id, String receiver_id,
                     int countInPage, int page, String pid) {
        this.sender_id = sender_id;
        this.receiver_id = receiver_id;
        this.countInPage = countInPage;
        this.page = page;
        this.pid = pid;
    }

    public boolean isFilterSender() {
        return sender_id != null;
    }

    public boolean isFilterReceiver() {
        return receiver_id != null;
    }

    public  boolean isFilterPhoto() {
        return pid != null;
    }

    public String getSender_id() {
        return sender_id;
    }

    public void setSender_id(String sender_id) {
        this.sender_id = sender_id;
    }

    public String getReceiver_id() {
        return receiver_id;
    }

    public void setReceiver_id(String receiver_id) {
        this.receiver_id = receiver_id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
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
