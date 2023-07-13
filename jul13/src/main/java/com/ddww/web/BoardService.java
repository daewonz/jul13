package com.ddww.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//비지니스 로직

@Service
public class BoardService {
//DAO와 연결합니다
	@Autowired
	private BoardDAO boardDAO;

	public List<BoardDTO> boardList() {
		return boardDAO.boardList();
	}
}
