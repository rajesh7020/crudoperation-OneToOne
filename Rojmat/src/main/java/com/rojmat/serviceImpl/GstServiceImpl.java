package com.rojmat.serviceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rojmat.dao.GstDao;
import com.rojmat.entity.Gst;
import com.rojmat.service.GstService;

@Service
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
public class GstServiceImpl implements GstService {
	@Autowired
	private GstDao gstDao;
	@Override
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addGst(Gst gst) {
		gstDao.addGst(gst);
	}
	@Override
	public List<Gst> getGsts() {
		return gstDao.getGsts();
	}
	@Override
	public Gst getGst(int gstid) {
		return gstDao.getGst(gstid);
	}
	@Override
	public void deleteGst(int gstid) {
		gstDao.deleteGst(gstid);
	}
	
}
