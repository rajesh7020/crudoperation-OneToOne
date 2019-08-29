package com.rojmat.dao;

import java.util.List;

import com.rojmat.entity.Credit;

public interface CreditDao {

	public void addCreditDebit(Credit credit);
	public void deleteCreditDebit(int cid);
	List<Credit> getAllCreditDebit();
}
