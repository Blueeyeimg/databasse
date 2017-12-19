package com.ecnu.car_rent.service;

import com.ecnu.car_rent.model.Massage;

import java.util.List;

public interface MassageService {

    boolean addMassage(Massage massage);

    boolean deleteMassageById(int id);
//    boolean deleteAllMassages();

    Massage getMassagesById(int id);

    List<Massage> getAllMassagesByCarOrderId(int id);//按massage_id正序

    List<Massage> getAllMassages();//按massage_id正序

}
