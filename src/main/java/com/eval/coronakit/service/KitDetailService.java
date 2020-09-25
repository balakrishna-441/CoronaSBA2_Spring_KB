package com.eval.coronakit.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.eval.coronakit.entity.KitDetail;

public interface KitDetailService {
	public KitDetail addKitItem(KitDetail kitItem);
	public KitDetail getKitItemById(int itemId);
	
	@Query("select * from KitDetail where coronaKitId= ?1")
	public List<KitDetail> getAllKitItemsOfAKit(int kitId);
}
