package com.eval.coronakit.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.eval.coronakit.entity.KitDetail;

@Repository
public interface KitDetailRepository extends JpaRepository<KitDetail, Integer>{

	@Query("select k from KitDetail k where k.coronaKitId = :kidID")	
	List<KitDetail> getAllKitItemsOfAKit(@Param("kidID")int kitId);
}
