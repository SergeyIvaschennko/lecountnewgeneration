//package org.example;
//
//import org.example.controllers.Block;
//import org.example.controllers.BlockService;
//import org.assertj.core.api.Assertions;
//import org.example.controllers.BlockService;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
//import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
//import org.springframework.test.annotation.Rollback;
//
//@DataJpaTest
//@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
//@Rollback(false)
//public class BlockRepositoryTests {
//    @Autowired
//    private BlockService blockService;
//    @Test
//    public void testAddNew() {
//        Block block = new Block();
//        block.setId(1);
//        block.setType("прибыль");
//        block.setAmount(20000);
//        blockService.create(block);
//    }
//}
