package service;

import domain.BankCustomer;
import java.util.List;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("bankCustomerDao")
public class JpaBankCustomerDao 
extends GenericDaoJpa<BankCustomer> 
implements BankCustomerDao{
    public JpaBankCustomerDao() {
        super(BankCustomer.class);
    }    
    @Override
    @Transactional(readOnly = true)
    public List<BankCustomer> getBankCustomersByBalance(
            double balance)
    {
        TypedQuery<BankCustomer> queryBankCustomer
                = em.createNamedQuery(
         "BankCustomer.getBankCustomersByBalance", 
                                                 BankCustomer.class);
        queryBankCustomer.setParameter(
                "bankCustomerBalance", balance);
        return queryBankCustomer.getResultList();
    }

}
