package service;

import domain.BankCustomer;
import java.util.List;

public interface BankCustomerDao 
                 extends GenericDao<BankCustomer> {

    public List<BankCustomer> getBankCustomersByBalance(
            double balance);
}
