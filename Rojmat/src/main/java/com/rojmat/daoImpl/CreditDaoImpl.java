package com.rojmat.daoImpl;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rojmat.dao.CreditDao;
import com.rojmat.entity.Credit;

@Repository
public class CreditDaoImpl implements CreditDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void addCreditDebit(Credit credit) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(credit);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public void deleteCreditDebit(int cid) {
		/*Credit credit = (Credit)sessionFactory.getCurrentSession().createQuery("from Credit as c LEFT JOIN FETCH c.Debit where c.cid="+cid).uniqueResult();
		List<Debit> debits = credit.getDebit();
		sessionFactory.getCurrentSession().delete(credit);
		debits.forEach((debit) -> {
			sessionFactory.getCurrentSession().delete(debit);
		});*/
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Credit> getAllCreditDebit() {
		 return sessionFactory.getCurrentSession().createQuery("select distinct credit.cid as cid,credit.openingbalance as openingbalance,credit.date as date,credit.debittotal as debittotal,credit.drawertotal as drawertotal,credit.debittotalplusdrawertotal as debittotalplusdrawertotal,credit.todaybusiness as todaybusiness from Credit credit").setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	}
}
