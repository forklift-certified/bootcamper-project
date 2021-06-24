package com.organzation.mvcproject.mgltask.api.model;

public interface Game {
	
	public static final Long ID = null; 
	public static final String NAME = "";
	public static final String GENRE = "";

	public Long getId();

	public void setId(Long gameId);

	public String getName();

	public void setName(String gameName);

	public String getGenre();

	public void setGenre(String gameGenre);

}
