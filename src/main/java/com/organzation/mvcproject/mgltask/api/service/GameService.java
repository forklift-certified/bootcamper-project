package com.organzation.mvcproject.mgltask.api.service;

import java.util.List;


import com.organzation.mvcproject.mgltask.api.model.Game;


public interface GameService{

	List<Game> retrieveAllGames();

	Game saveGame(Game game);

	boolean delete(Game input);

}
