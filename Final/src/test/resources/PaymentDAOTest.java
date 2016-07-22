import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.inyoung.finalprj.domain.PaymentVO;
import com.inyoung.finalprj.persistence.PaymentDAO;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
public class PaymentDAOTest {
	
	 private static Logger logger = LoggerFactory.getLogger(PaymentDAOTest.class);

	
	@Inject
	private PaymentDAO dao;
	
	  @Test
	  public void testRead() throws Exception {
		  logger.info(dao.readPayInfo(1).toString());
	  }
	
}
