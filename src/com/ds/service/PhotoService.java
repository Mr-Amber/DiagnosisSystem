package com.ds.service;

import com.ds.common.model.Photo;
import com.ds.vo.PhotoVO;
import com.jfinal.plugin.activerecord.Page;

public interface PhotoService {

    /** 获取照片 */
    public Page<Photo> getPhotos(PhotoVO searchVO);
    /** 修改照片分类 */
    public boolean modifyTIdByPId(String pid, String tid);

    public Photo getPhotoByPId(String pid);
}
