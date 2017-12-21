package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.dao.NewsMapper;
import com.ecnu.car_rent.model.News;
import com.ecnu.car_rent.service.NewsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class NewsServiceImpl implements NewsService {
    @Resource
    private NewsMapper newsMapper;

    public boolean addNews(News news) {
        if (news.getNewsId() != null || news.getTitle() == null || news.getText() == null || news.getDate() == null)
            return false;
        else {
            if (newsMapper.insertSelective(news) != 0) {
                return true;
            } else
                return false;

        }
    }

    public boolean deleteNewsById(int id) {
        if (newsMapper.deleteByPrimaryKey(id) != 0) {
            return true;
        } else
            return false;
    }

    public boolean updateNews(News news) {
        if (newsMapper.updateByPrimaryKeySelective(news) != 0) {
            return true;
        } else
            return false;
    }

    public News getNewsById(int id) {
        return newsMapper.selectByPrimaryKey(id);
    }

    public List<News> getAllNews() {
        return newsMapper.selectAllNews();
    }


}
