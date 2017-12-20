package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.dao.NewsMapper;
import com.ecnu.car_rent.model.News;
import com.ecnu.car_rent.service.NewsService;

import javax.annotation.Resource;
import java.util.List;

public class NewsServiceImpl implements NewsService {
    @Resource
    private NewsMapper newsMapper;

    public boolean addNews(News news) {
        return true;
    }

    public boolean deleteNewsById(int id) {
        return true;
    }

    public boolean updateNews(News news) {
        return true;
    }

    public News getNewsById(int id) {
        return new News();
    }

    public List<News> getAllNews() {
        return null;
    }


}
