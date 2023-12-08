package org.example.service;

import org.example.model.Block;
import org.springframework.stereotype.Service;

import java.util.List;
public interface BlockInterface {
    List<Block> findAllBlocks();
    Block saveBlock(Block block);
    int getTotalExpense(Long userId);
    int getTotalIncome(Long userId);
    void deleteBlock(Long id);
}
