package com.ds.common.model;

import com.ds.common.model.base.BasePhoto;
import com.ds.vo.PhotoVO;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Sqls;

/**
 * 本 ds 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * Blog model.
 * 数据库字段名建议使用驼峰命名规则，便于与 java 代码保持一致，如字段名： userId
 */
@SuppressWarnings("serial")
public class Photo extends BasePhoto<Photo> {
    public static final Photo dao = new Photo();

    public Page<Photo> filterPhoto(PhotoVO photoVO) {
        String[] sqlPart = Sqls.get("searchPhotos").trim().split(" from", 2);
        String select = sqlPart[0];

        sqlPart = sqlPart[1].split("where|and|order");
        String except = "from"+sqlPart[0];
        String order = "order"+ sqlPart[sqlPart.length-1];

        int k = 0;
        if(photoVO.isFilterUser()){
            sqlPart[0].replaceFirst("\\?", photoVO.getUid());
            k++;
        }
        else{
            sqlPart[0] = null;
        }

        if(photoVO.isFilterDoctor()){
            sqlPart[1].replaceFirst("\\?", photoVO.getDid());
            k++;
        }
        else{
            sqlPart[1] = null;
        }

        if(photoVO.isFilterSymptom()){
            sqlPart[2].replaceFirst("\\?", photoVO.getTid());
            k++;
        }
        else{
            sqlPart[2] = null;
        }

        if(k>0)
            except += "where";

        for(int i=0; i<3; i++) {
            if(sqlPart[i] != null) {
                except += sqlPart + ((--k==0)?"":"and");
            }
        }

        except += order;

        Page<Photo> page = dao.paginate(photoVO.getPage(), photoVO.getCountInPage(),
                select, except);
        return page;
    }

    public boolean modifyTIdByPId(String pid, String tid) {
        Photo photo = new Photo().findById(pid);
        if (photo==null) {
            try {
                throw new Exception("更新失败");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        photo.setTid(tid);
        return photo.update();
    }
}


