package com.sxf.movie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sxf.movie.dao.MovieMapper;
import com.sxf.movie.domain.Movie;
import com.sxf.movie.service.MovieService;
import com.sxf.movie.vo.MovieVo;
@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieMapper mapper;

	public List<Movie> selects(MovieVo movieVo) {
		return mapper.selects(movieVo);
	}

	public void delAll(int[] ids) {
		mapper.delAll(ids);
	}

	public void update(String stutas,int id) {
		int x=1/0;
		if(x==1) {
			mapper.update(stutas,id);
		}
	}
}
