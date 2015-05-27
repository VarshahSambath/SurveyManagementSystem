package com.survey.modules.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.survey.modules.model.PollModel;

@Repository
public class PollDaoImpl implements PollDaoInterface {

			
		SessionFactory sessionFactory;

		public void setSessionFactory(SessionFactory sessionFactory){
		     this.sessionFactory = sessionFactory;
		}
		

		
		public void savePoll(PollModel entity) {
			 Session session = this.sessionFactory.getCurrentSession();
			 session.save(entity);
			
		}
	
		public void updatePoll(PollModel entity){
			  Session session = this.sessionFactory.getCurrentSession();
			  session.update(entity);
		
		}

		public PollModel findPollById(int pollId){
			  Session session = this.sessionFactory.getCurrentSession();
			 PollModel quesObj=(PollModel)session.get(PollModel.class, pollId);
			 return quesObj;
		}
		
	
		public void deletePoll(PollModel entity){
			  Session session = this.sessionFactory.getCurrentSession();
			  session.delete(entity);
		}
		
	
		@SuppressWarnings("unchecked")
		public List<PollModel> PollList(){
			  Session session = this.sessionFactory.getCurrentSession();
			Criteria cr=session.createCriteria(PollModel.class);
			List<PollModel> pollList=cr.list();
			return pollList;
		}
		
	
		public void deleteAll(){
			 
			List<PollModel> entityList = PollList();
			for (PollModel entity : entityList) {
					deletePoll(entity);
			}
		}
		
	}