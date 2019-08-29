package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.CreditDao;
import com.rojmat.entity.Credit;
import com.rojmat.service.CreditService;

@Service
@Transactional
public class CreditServiceImpl implements CreditService {

	@Autowired
	private CreditDao creditDao;
	@Override
	public void addCreditDebit(Credit credit) {
		creditDao.addCreditDebit(credit);
	}
	@Override
	public void deleteCreditDebit(int cid) {
		creditDao.deleteCreditDebit(cid);
	}
	@Override
	public List<Credit> getAllCreditDebit() {
		return creditDao.getAllCreditDebit();
	}

}
