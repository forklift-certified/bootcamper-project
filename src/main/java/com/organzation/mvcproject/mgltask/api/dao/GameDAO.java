package com.organzation.mvcproject.mgltask.api.dao;


import java.util.List;

import com.organzation.mvcproject.mgltask.api.model.Game;


public interface GameDAO {
	
	public List<Game> retrieveAllGames();

	public Game saveGame(Game input);

	public Game getGameById(Long id);
	
	public boolean delete(Game input);

}
