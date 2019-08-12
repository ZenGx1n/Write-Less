package com.writeless.entity;

/**
 * 分页工具类
 */
public class Pager {

    // 1.当前页码
    private int pageIndex;
    // 2.一页需要展示多少条数据
    private int pageSize = 3 ;
    // 3.当前条件下总的数据量
    private int totalCount ;
    // 4.总共可以分多少页
    private int totalPages ;
    //5.从第几个开始
    private int pageParam;

    public int getPageParam() {
        return pageParam;
    }

    public void setPageParam(int pageParam) {
        this.pageParam = pageParam;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }
}
