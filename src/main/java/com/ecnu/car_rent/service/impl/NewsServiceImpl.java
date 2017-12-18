package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.model.News;
import com.ecnu.car_rent.service.NewsService;

public class NewsServiceImpl implements NewsService {
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

    public News[] getAllNews() {
        return new News[1];
    }

}
