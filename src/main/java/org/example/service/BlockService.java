package org.example.service;

import java.util.List;
import org.example.model.Block;
import org.example.model.UserEntity;
import org.example.repository.BlockRepository;
import org.example.repository.UserRepository;
import org.example.security.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class BlockService implements BlockInterface {
    private BlockRepository blockRepository;
    private UserRepository userRepository;

    @Autowired
    public BlockService(BlockRepository blockRepository, UserRepository userRepository) {
        this.blockRepository = blockRepository;
        this.userRepository = userRepository;
    }

    @Override
    public List<Block> findAllBlocks() {
        List<Block> blocks = blockRepository.findAll();
        return blocks;
    }

    @Override
    public Block saveBlock(Block block) {
        String username = SecurityUtil.getSessionUser();
        UserEntity user = userRepository.findByUsername(username);
        block.setCreatedBy(user);
        return blockRepository.save(block);
    }

    @Override
    public int getTotalIncome(Long userId) {
//        List<Block> incomeBlocks = blockRepository.findByType("доход");
        List<Block> incomeBlocks = blockRepository.findBlocksByTypeAndCreatedBy("доход", userId);
        return incomeBlocks.stream()
                .mapToInt(block -> Integer.parseInt(block.getAmount()))
                .sum();
    }

    @Override
    public int getTotalExpense(Long userId) {
//        List<Block> expenseBlocks = blockRepository.findByType("расход");
        List<Block> expenseBlocks = blockRepository.findBlocksByTypeAndCreatedBy("расход", userId);
        return expenseBlocks.stream()
                .mapToInt(block -> Integer.parseInt(block.getAmount()))
                .sum();
    }

    @Override
    public void deleteBlock(Long id) {
        blockRepository.deleteById(id);
    }

}




