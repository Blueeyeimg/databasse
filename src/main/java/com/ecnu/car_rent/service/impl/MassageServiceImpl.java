package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.model.Massage;
import com.ecnu.car_rent.service.MassageService;

import java.util.List;

public class MassageServiceImpl implements MassageService {

    public boolean addMassage(Massage massage) {
        return true;
    }

    public boolean deleteMassageById(int id) {
        return true;
    }

    public Massage getMassagesById(int id) {
        return null;
    }
//    boolean deleteAllMassages();

    public List<Massage> getAllMassagesByCarOrderId(int id) {
        return null;
    }

    public List<Massage> getAllMassages() {
        return null;
    }
}
