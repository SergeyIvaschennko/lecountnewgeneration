package org.example.repository;


import org.example.model.Block;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import java.util.List;

@Repository
public interface BlockRepository extends JpaRepository<Block, Long>{
    List<Block> findByType(String type);

    @Query("SELECT b FROM Block b WHERE b.type = :type AND b.createdBy.id = :userId")
    List<Block> findBlocksByTypeAndCreatedBy(@Param("type") String type, @Param("userId") Long userId);


}


