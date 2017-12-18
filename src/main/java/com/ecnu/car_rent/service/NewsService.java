package com.ecnu.car_rent.service;

import com.ecnu.car_rent.model.News;

public interface NewsService {

    boolean addNews(News news);

    boolean deleteNewsById(int id);

    boolean updateNews(News news);//news.id

    News getNewsById(int id);

    News[] getAllNews();
}
