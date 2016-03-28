package domain;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.NumberFormat;

@Entity
@NamedQueries({
    @NamedQuery(name=
            "BankCustomer.getBankCustomersByBalance",
     query = 
"SELECT b FROM BankCustomer b WHERE "
        + "b.balance >= :bankCustomerBalance")
})
public class BankCustomer implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Min(1)
    @Max(999)
    @NotNull
    private Long id;

    private String firstname;
    private String lastname;
    
    @NumberFormat(style = NumberFormat.Style.CURRENCY)
    private double balance;

    @NumberFormat(style = NumberFormat.Style.CURRENCY)
    public double getBalanceNoSign()
    {
        return Math.abs(balance);
    }
    // Constructors:
    public BankCustomer() {
    }
    
    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public double getBalance() {
        return balance;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BankCustomer)) {
            return false;
        }
        BankCustomer other = (BankCustomer) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return String.format("%s: %s %s", id, firstname, lastname);
    }
    
    
}
