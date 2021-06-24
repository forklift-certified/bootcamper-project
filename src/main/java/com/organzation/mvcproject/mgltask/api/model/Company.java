package com.organzation.mvcproject.mgltask.api.model;

import java.util.ArrayList;
import java.util.List;



public interface Company {
	
	public static final Long ID = null;
	public static final String NAME = "";
	List<Game> gamesMade = new ArrayList<>();

	public Long getId();

	public void setId(Long id);

	public String getName();

	public void setName(String name);

	public List<Game> getGamesMade();

	public void setGamesMade(List<Game> gamesMade);

}
