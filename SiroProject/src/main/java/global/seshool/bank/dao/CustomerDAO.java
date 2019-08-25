package global.seshool.bank.dao;

import global.seshool.bank.vo.Customer;

public interface CustomerDAO {
	public int insertCustomer(Customer Customer);
	public Customer selectOne(Customer customer);
	public Customer loginCustomer(Customer customer);
	public int updateCustomer (Customer customer);
	public Customer searchCustomer(String checkId);
	void customerupdate(Customer customer);
	Customer find_id(Customer customer);
	Customer find_pw(Customer customer);
}
