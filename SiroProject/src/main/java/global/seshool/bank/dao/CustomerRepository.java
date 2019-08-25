package global.seshool.bank.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.seshool.bank.vo.Customer;

@Repository
public class CustomerRepository {

	@Autowired
	SqlSession session;
	
	public int insertCustomer(Customer Customer){
		int result = 0;
		CustomerDAO mapper = session.getMapper(CustomerDAO.class);
		
		//Select를 통한 중복처리
		if (mapper.selectOne(Customer)!=null) {
			System.out.println("아이디가 중복됩니다.");
			return 0;
		}
		try {
			if (mapper.insertCustomer(Customer)>0) {
				System.out.println("인설트 성공");
				return 1;
			}
		} catch (Exception e) {
			System.out.println("인설트실패");
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	public int loginCustomer(Customer customer) {
		int result = 0;
		CustomerDAO mapper = session.getMapper(CustomerDAO.class);
		
		if (mapper.loginCustomer(customer)!=null) {
			System.out.println("로그 성공");
			return 1;
		}
		else {
			System.out.println("인설트실패");
			return result;
		}
		
	}
	
	
	public boolean selectCustomer(Customer customer) {
		CustomerDAO mapper = session.getMapper(CustomerDAO.class);

		if (mapper.selectOne(customer) !=null) {
			return true;
		}
		else {
			return false;
		}
	}
	
	public void customerupdate(Customer customer) {
		CustomerDAO mapper = session.getMapper(CustomerDAO.class);
		mapper.customerupdate(customer);
		
	}

	public Customer find_id(Customer customer) {
		CustomerDAO mapper = session.getMapper(CustomerDAO.class);
		Customer cus=mapper.find_id(customer);
		return cus;
	}

	public Customer find_pw(Customer customer) {
		CustomerDAO mapper = session.getMapper(CustomerDAO.class);
		Customer cus=mapper.find_pw(customer);
		return cus;
	}


	public boolean searchCustomer(String checkId) {
		CustomerDAO mapper = session.getMapper(CustomerDAO.class);
		System.out.println("select 진");
		if (mapper.searchCustomer(checkId)!=null) {
		return true;	
		}
		else {
			return false;
		}
	}
}
