package org.example.controllers;
import java.util.List;
import java.util.Optional;

//import com.anigna.api.model.Phone;
//import com.anigna.api.repository.PhoneRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PhoneService {
    @Autowired
    private PhoneRepository phoneRepository;

    public Optional<Phone> create(Phone phone){
        if (phoneRepository.existsById(phone.getId())){
            return Optional.empty();
        }else{
            return Optional.of(phoneRepository.save(phone));
        }
    }

    public List<Phone> retrieve(){
        return phoneRepository.findAll();
    }

    public Optional<Phone> retrieveOne(int empid){
        return phoneRepository.findById(empid);
    }

    public Optional<Phone> update(Phone phone){
        if (phoneRepository.existsById(phone.getId())){
            return Optional.of(phoneRepository.save(phone));
        }else{
            return Optional.empty();
        }
    }

    public String delete(int empid){
        if (phoneRepository.existsById(empid)){
            phoneRepository.deleteById(empid);
            return empid + " deleted successfully!";
        }else{
            return "The employee data does not exist in records!";
        }

    }

}



