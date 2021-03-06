package com.example.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.Criteria;
import com.example.domain.QuizVO;
import com.example.domain.SolveHistoryVO;
import com.example.domain.BunchVO;
import com.example.mapper.QuizMapper;

@Service
@Transactional
public class MemberService {

	private QuizMapper quizMapper;

	public MemberService(QuizMapper quizMapper) {
		super();
		this.quizMapper = quizMapper;
	}

	public List<BunchVO> getBunchesByCri(Criteria cri) {

		int startRow = (cri.getPageNum() - 1) * cri.getAmount();

		cri.setStartRow(startRow);

		return quizMapper.getBunchesByCri(cri);
	}

	public List<BunchVO> getBunchesAndQuizListByCri(Criteria cri) {

		int startRow = (cri.getPageNum() - 1) * cri.getAmount();

		cri.setStartRow(startRow);

		return quizMapper.getBunchesAndQuizListByCri(cri);
	}

	public int getBunchCountBySearch(Criteria cri) {
		return quizMapper.getBunchCountBySearch(cri);
	}

	public int getNextBunchNum() {
		return quizMapper.getNextBunchNum();
	}

	public int getNextSolveHistoryNum() {
		return quizMapper.getNextSolveHistoryNum();
	}

	public void addBunchAndQuizList(BunchVO bunchVO) {
		quizMapper.addBunch(bunchVO);
		quizMapper.addQuizList(bunchVO.getQuizList());
	}

	public void updateBunchAndQuizList(BunchVO bunchVO) {
		quizMapper.deleteQuizList(bunchVO.getNum());
		quizMapper.deleteBunch(bunchVO.getNum());
		addBunchAndQuizList(bunchVO);
	}

	public BunchVO getBunchAndQuizList(int bunchNum) {
		return quizMapper.getBunchAndQuizList(bunchNum);
	}

	public List<String> getAnswerListByBunchNum(int bunchNum) {
		return quizMapper.getAnswerListByBunchNum(bunchNum);
	}

	public void insertSolveHistory(SolveHistoryVO solveHistoryVO) {
		quizMapper.insertSolveHistory(solveHistoryVO);
	}

	public SolveHistoryVO getSolveHistoryByNum(int num) {
		return quizMapper.getSolveHistoryByNum(num);
	}

	public List<QuizVO> getQuizListByResult(Map<String, Object> map) {
		return quizMapper.getQuizListByResult(map);
	}

	public void deleteBunchAndQuizList(int bunchNum) {
		quizMapper.deleteQuizList(bunchNum);
		quizMapper.deleteBunch(bunchNum);
	}

	// id??? ???????????? bunch ?????????
	public List<BunchVO> getBunchesById(Criteria cri, String id) {
		return quizMapper.getBunchesById(cri, id);
	}

	// id??? ???????????? bunch ????????? ??????
	public int getCountBunchesById(String id) {
		return quizMapper.getCountBunchesById(id);
	}

	// id??? ???????????? (solveHistory + bunch) ?????????
	public List<SolveHistoryVO> getSolveHistoryAndBunch(Criteria cri, String id) {

		int startRow = (cri.getPageNum() - 1) * cri.getAmount();

		cri.setStartRow(startRow);
		return quizMapper.getSolveHistoryAndBunch(cri, id);
	}

	// id??? ???????????? solveHistory ??????
	public int getCountSolveHistory(String id) {
		return quizMapper.getCountSolveHistory(id);
	}

}
