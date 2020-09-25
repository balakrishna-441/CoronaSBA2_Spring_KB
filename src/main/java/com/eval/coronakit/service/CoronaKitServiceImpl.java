package com.eval.coronakit.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.CoronaKitRepository;
import com.eval.coronakit.entity.CoronaKit;

@Service
public class CoronaKitServiceImpl implements CoronaKitService {

	@Autowired
	CoronaKitRepository repository;

	@Override
	public CoronaKit saveKit(CoronaKit kit) {
		kit = repository.save(kit);
		return kit;
	}

	@Override
	public CoronaKit getKitById(int kitId) {
		Optional<CoronaKit> coronaKit = repository.findById(kitId);

		return coronaKit.orElse(null);
	}

}
