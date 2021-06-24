package com.organization.mvcproject.mgltask.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.organzation.mvcproject.mgltask.api.dao.GameDAO;

import com.organzation.mvcproject.mgltask.api.model.Game;
import com.organzation.mvcproject.mgltask.api.service.GameService;

@Service("javaGameService")
public class GameServiceImpl implements GameService {
	
	@Autowired
	private GameDAO gameDao;

	public List<Game> retrieveAllGames() {
		return gameDao.retrieveAllGames();
	}

	@Override
	public Game saveGame(Game game) {
		return gameDao.saveGame(game);
	}
	
	@Override
	public boolean delete(Game input) {
		return gameDao.delete(input);
	}



}