package controller;

import domain.BankCustomer;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.BankCustomerDao;

@Controller
@RequestMapping("/bank")
public class BankController {

    @Autowired
    private BankCustomerDao bankCustomerDao;

    @RequestMapping(method = RequestMethod.GET)
    public String showHomePage(Model model) {

        model.addAttribute("bankCustomerList", 
                                 bankCustomerDao.findAll());
        
        model.addAttribute("bankCustomerBalanceList", 
                 bankCustomerDao.getBankCustomersByBalance(0));

        model.addAttribute("bankCustomer", new BankCustomer());
        return "form";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String onSubmit(@Valid BankCustomer bankCustomer, BindingResult result, Model model) {

         if (result.hasErrors()) {
            model.addAttribute("bankCustomerList", 
                    bankCustomerDao.findAll());
            model.addAttribute("bankCustomerBalanceList", 
                    bankCustomerDao.getBankCustomersByBalance(0));
            return "form";
        }
         
        BankCustomer currentCustomer = 
                bankCustomerDao.get(bankCustomer.getId());

        model.addAttribute("customer", currentCustomer);

        if (currentCustomer == null) {
            return "unknownCustomer";
        }

        if (currentCustomer.getBalance() < 0) {
            return "negativeBalance";
        }

        return "balance";
    }
}
