package com.sxf.movie.service;

import java.util.List;

import com.sxf.movie.domain.Movie;
import com.sxf.movie.vo.MovieVo;

public interface MovieService {

	List<Movie> selects(MovieVo movieVo);

	void delAll(int[] ids);

	void update(String stutas,int id);

}
