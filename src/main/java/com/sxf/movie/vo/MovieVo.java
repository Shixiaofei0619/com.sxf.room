package com.sxf.movie.vo;

import com.sxf.movie.domain.Movie;

public class MovieVo extends Movie{

	//开始日期和结束日期
	private String startTime;
	private String endTime;
	//最低价和最高价
	private Integer startPrice;
	private Integer endPrice;
	//电影时长
	private Integer startMit;
	private Integer endMit;
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public Integer getStartPrice() {
		return startPrice;
	}
	public void setStartPrice(Integer startPrice) {
		this.startPrice = startPrice;
	}
	public Integer getEndPrice() {
		return endPrice;
	}
	public void setEndPrice(Integer endPrice) {
		this.endPrice = endPrice;
	}
	public Integer getStartMit() {
		return startMit;
	}
	public void setStartMit(Integer startMit) {
		this.startMit = startMit;
	}
	public Integer getEndMit() {
		return endMit;
	}
	public void setEndMit(Integer endMit) {
		this.endMit = endMit;
	}
	
	
}
