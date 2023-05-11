package org.example.controllers;
import java.util.List;
import java.util.Optional;

//import com.anigna.api.model.Phone;
//import com.anigna.api.repository.PhoneRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BlockService {
    @Autowired
    private BlockRepository blockRepository;

    public Optional<Block> create(Block block){
        if (blockRepository.existsById(block.getId())){
            return Optional.empty();
        }else{
            return Optional.of(blockRepository.save(block));
        }
    }

    public List<Block> retrieve(){
        return blockRepository.findAll();
    }

    public Optional<Block> retrieveOne(int empid){
        return blockRepository.findById(empid);
    }

    public Optional<Block> update(Block block){
        if (blockRepository.existsById(block.getId())){
            return Optional.of(blockRepository.save(block));
        }else{
            return Optional.empty();
        }
    }

    public String delete(int empid){
        if (blockRepository.existsById(empid)){
            blockRepository.deleteById(empid);
            return empid + " deleted successfully!";
        }else{
            return "The employee data does not exist in records!";
        }

    }

}



