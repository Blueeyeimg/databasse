package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.dao.MassageMapper;
import com.ecnu.car_rent.model.Massage;
import com.ecnu.car_rent.service.MassageService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class MassageServiceImpl implements MassageService {
    @Resource
    private MassageMapper massageMapper;

    public boolean addMassage(Massage massage) {
        if (massage.getMassageId() != null || massage.getCarOrderId() == null || massage.getSenderName() == null
                || massage.getText() == null || massage.getDate() == null)
            return false;
        else {
            if (massageMapper.insertSelective(massage) != 0) {
                return true;
            } else
                return false;

        }
    }

    public boolean deleteMassageById(int id) {
        if (massageMapper.deleteByPrimaryKey(id) != 0) {
            return true;
        } else
            return false;

    }

    public Massage getMassagesById(int id) {
        return massageMapper.selectByPrimaryKey(id);
    }
//    boolean deleteAllMassages();

    public List<Massage> getAllMassagesByCarOrderId(int id) {
        return massageMapper.selectAllMassagesByCarOrderId(id);
    }

    public List<Massage> getAllMassages() {
        return massageMapper.selectAllMassages();
    }
}
