package com.rojmat.service;
import java.util.List;
import com.rojmat.entity.Credit;

public interface CreditService {

	public void addCreditDebit(Credit credit);
	public void deleteCreditDebit(int cid);
	List<Credit> getAllCreditDebit();
	//List<Debit> getDebitById(int did);
}
