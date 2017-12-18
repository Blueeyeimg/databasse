package com.ecnu.car_rent.service;

import com.ecnu.car_rent.model.Massage;

public interface MassageService {

    boolean addMassage(Massage massage);

    boolean deleteMassageById(int id);
//    boolean deleteAllMassages();

    Massage[] getAllMassagesByCarOrderId(int id);

    Massage[] getAllMassages();

}
