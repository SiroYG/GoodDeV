package global.seshool.bank.dao;

import global.seshool.bank.vo.Customer;

public interface CustomerDAO {
	public void insertCustomer(Customer Customer);
	public Customer selectCustomer(String customer);
	public int updateCustomer (Customer customer);
	public Customer searchCustomer(Customer customer);
	
}
