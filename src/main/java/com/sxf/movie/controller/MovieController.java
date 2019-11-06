package com.sxf.movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sxf.movie.domain.Movie;
import com.sxf.movie.service.MovieService;
import com.sxf.movie.vo.MovieVo;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	//列表 分页
	@RequestMapping("/selects")
	public String selects(@RequestParam(defaultValue = "1")int pageNum,MovieVo movieVo,HttpServletRequest request) {
		//分页
		PageHelper.startPage(pageNum, 3);
		List<Movie> list = service.selects(movieVo);
		PageInfo<Movie> pageInfo = new PageInfo<Movie>(list);
		request.setAttribute("pg", pageInfo);
		request.setAttribute("movieVo", movieVo);
		return "list";
	}
	//批量删除
	@RequestMapping("/delAll")
	public String delAll(@RequestParam("ids")int[] ids){
		service.delAll(ids);
		return "redirect:selects";
	}
	//上架下架
	@RequestMapping("/update")
	public String update(@RequestParam("stutas")String stutas,@RequestParam("id")int id) {
		service.update(stutas,id);
		return "redirect:selects";
	}
}
