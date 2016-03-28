# Demoproject JavaEE/Maven

De code compileren kan met Maven, een build tool voor Java.

De applicatie draait onder Tomcat 8.0.27.0. Er wordt gebruik gemaakt van MySQL (localhost: 3306/travel). Username/paswoord staat ingesteld op “root” (klasse `config.PersistenceJPAConfig`):

```Java
dataSource.setDriverClassName("com.mysql.jdbc.Driver");
dataSource.setUrl("jdbc:mysql://localhost:3306/travel");
dataSource.setUsername( "root" );
dataSource.setPassword( "root" );
```

Bij het voor de eerste keer uitvoeren van de applicatie zal automatisch de tabel bankcustomer aangemaakt worden.
