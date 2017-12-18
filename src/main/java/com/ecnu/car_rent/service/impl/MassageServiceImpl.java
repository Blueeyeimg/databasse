package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.model.Massage;
import com.ecnu.car_rent.service.MassageService;

public class MassageServiceImpl implements MassageService {

    public boolean addMassage(Massage massage) {
        return true;
    }

    public boolean deleteMassageById(int id) {
        return true;
    }
//    boolean deleteAllMassages();

    public Massage[] getAllMassagesByCarOrderId(int id) {
        return new Massage[1];
    }

    public Massage[] getAllMassages() {
        return new Massage[1];
    }
}
