package com.organzation.mvcproject.mgltask.api.model;

public interface Review {
	
	public static final String REVIEWBODY = "";
	public static final String AUTHOR = "";
	public static final Integer RATING = null;

	public String getAuthor();

	public void setAuthor(String author);

	public Integer getRating();

	public void setRating(Integer rating);

	public String getReviewBody();

	public void setReviewBody(String reviewBody);

}
