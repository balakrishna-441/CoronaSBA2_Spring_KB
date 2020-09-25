package com.eval.coronakit.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.KitDetailRepository;
import com.eval.coronakit.entity.KitDetail;

@Service
public class KitDetailServiceImpl implements KitDetailService {

	@Autowired
	KitDetailRepository repository;
	
	@Override
	public KitDetail addKitItem(KitDetail kitItem) {
		KitDetail kit = repository.save(kitItem);
		return kit;
	}

	@Override
	public KitDetail getKitItemById(int itemId) {
		Optional<KitDetail> kitItem = repository.findById(itemId);
			return kitItem.orElse(null);
	}

	@Override
	public List<KitDetail> getAllKitItemsOfAKit(int kitId) {
		List<KitDetail> kitDetails = repository.getAllKitItemsOfAKit(kitId);
		return kitDetails;
	}

}
