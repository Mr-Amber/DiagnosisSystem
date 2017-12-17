package com.ds.service.impl;

import com.ds.common.model.Photo;
import com.ds.service.PhotoService;
import com.ds.vo.PhotoVO;
import com.jfinal.plugin.activerecord.Page;

public class PhotoServiceImpl implements PhotoService {
    private static PhotoServiceImpl instance = new PhotoServiceImpl();
    private PhotoServiceImpl() {}
    public static PhotoServiceImpl getInstance() {
        return instance;
    }

    @Override
    public Page<Photo> getPhotos(PhotoVO searchVO) {
        return Photo.dao.filterPhoto(searchVO);
    }

    @Override
    public boolean modifyTIdByPId(String pid, String tid) {
        return Photo.dao.modifyTIdByPId(pid,tid);
    }

    @Override
    public Photo getPhotoByPId(String pid) {
        return Photo.dao.getPhotoByPId(pid);
    }
}
