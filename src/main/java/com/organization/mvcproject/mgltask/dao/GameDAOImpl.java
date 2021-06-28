package com.organization.mvcproject.mgltask.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.organization.mvcproject.mgltask.model.*;
import com.organzation.mvcproject.mgltask.api.dao.GameDAO;
import com.organzation.mvcproject.mgltask.api.model.Game;
import com.organzation.mvcproject.mgltask.api.service.GameService;

@Repository

public class GameDAOImpl implements GameDAO{

	private static Long gameId = Long.valueOf(0);
	private static Long companyId = Long.valueOf(0);
	private static List<Game> games = new ArrayList<>();

	static {
		games = populateGames();
	}

	private static List<Game> populateGames() {

		Game game1 = new GameImpl();
		game1.setId(++gameId);
		game1.setGenre("Sport");
		game1.setName("Rocket League");

		Game game2 = new GameImpl();
		game2.setId(++gameId);
		game2.setGenre("Shooter");
		game2.setName("Halo 3");

		Game game3 = new GameImpl();
		game3.setId(++gameId);
		game3.setGenre("MMORPG");
		game3.setName("Runescape");

		games.add(game1);
		games.add(game2);
		games.add(game3);

		return games;
	}

	@Override
	public List<Game> retrieveAllGames() {
		return games;
	}


	@Override
	public Game saveGame(Game input) 
	{
		
		if (input.getId() != null)
		{
			Game foundGame = getGameById(input.getId());
			if(foundGame != null)
			{
				for(Game g: games)
				{
					if(g.getId().equals(input.getId()))
					{
						
						g.setName(input.getName());
						g.setGenre(input.getGenre() );
						return g;
					}
				}
			}
		}
		else
		{
			games.add(input);
			return input;
		}
		return null;
	}

	public Game getGameById(Long id)
	{
		for(Game g: games)
		{
			if(id.equals(g.getId()))
			{
				return g;
			}
		}
		return null;
	}
	
	@Override
	public boolean delete(Game input) {
		
		for(Game g: games)
		{
			if (g.getId().equals(input.getId()))
			{

				return games.remove(g);
			}
		}
		
		
		return false;
	}

}
