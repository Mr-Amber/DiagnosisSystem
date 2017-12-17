package com.ds.controller;

import com.ds.common.model.Photo;
import com.ds.service.PhotoService;
import com.ds.service.impl.PhotoServiceImpl;
import com.jfinal.core.Controller;

import java.util.List;

public class PhotoController extends Controller{

    private PhotoService photoService = PhotoServiceImpl.getInstance();

    public void index(){
    }
}
