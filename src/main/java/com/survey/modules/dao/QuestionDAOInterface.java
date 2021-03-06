package com.survey.modules.dao;

import java.io.Serializable;
import java.util.List;

import com.survey.modules.model.QuestionModel;

public interface QuestionDAOInterface {

	public Serializable saveQuestion(QuestionModel entity);

	public void updateQuestion(QuestionModel entity);

	public QuestionModel findQuestionById(int questionId);

	public void deleteQuestion(QuestionModel entity);

	public List<QuestionModel> QuestionList();

	public void deleteAll();

	public List<QuestionModel> getQuestionListBySurveyId(int surveyId);

}
