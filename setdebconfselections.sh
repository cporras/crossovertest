mysqlpassword=pass
icingaadminpassword=pass
echo mysql-server-5.5        mysql-server/root_password      password  $mysqlpassword | sudo debconf-set-selections -v 
echo mysql-server-5.5        mysql-server/root_password_again        password  $mysqlpassword | sudo debconf-set-selections -v 
echo mysql-server-5.5        mysql-server/error_setting_password     error | sudo debconf-set-selections -v 
echo mysql-server-5.5        mysql-server/password_mismatch  error | sudo debconf-set-selections -v 
echo mysql-server-5.5        mysql-server-5.5/start_on_boot  boolean true | sudo debconf-set-selections -v 
echo mysql-server-5.5        mysql-server-5.5/nis_warning    note | sudo debconf-set-selections -v 
echo mysql-server-5.5        mysql-server-5.5/really_downgrade       boolean false | sudo debconf-set-selections -v 
echo mysql-server-5.5        mysql-server-5.5/postrm_remove_databases        boolean false | sudo debconf-set-selections -v 
echo mysql-server-5.5        mysql-server/no_upgrade_when_using_ndb  error
echo postfix postfix/procmail        boolean false | sudo debconf-set-selections -v 
echo postfix postfix/root_address    string | sudo debconf-set-selections -v 
echo postfix postfix/main_mailer_type        select  Internet Site | sudo debconf-set-selections -v 
echo postfix postfix/not_configured  error | sudo debconf-set-selections -v 
echo postfix postfix/retry_upgrade_warning   boolean | sudo debconf-set-selections -v 
echo postfix postfix/protocols       select  all | sudo debconf-set-selections -v 
echo postfix postfix/relayhost       string | sudo debconf-set-selections -v 
echo postfix postfix/mydomain_warning        boolean | sudo debconf-set-selections -v 
echo postfix postfix/bad_recipient_delimiter error | sudo debconf-set-selections -v 
echo postfix postfix/rfc1035_violation       boolean false | sudo debconf-set-selections -v 
echo postfix postfix/mailbox_limit   string  0 | sudo debconf-set-selections -v 
echo postfix postfix/tlsmgr_upgrade_warning  boolean | sudo debconf-set-selections -v 
echo postfix postfix/sqlite_warning  boolean | sudo debconf-set-selections -v 
echo postfix postfix/chattr  boolean false | sudo debconf-set-selections -v 
echo postfix postfix/mynetworks      string  127.0.0.0/8 [::ffff:127.0.0.0]/104 [::1]/128 | sudo debconf-set-selections -v 
echo postfix postfix/destinations    string  ip-172-31-4-121.sa-east-1.compute.internal, localhost.sa-east-1.compute.internal, , localhost | sudo debconf-set-selections -v 
echo postfix postfix/recipient_delim string  + | sudo debconf-set-selections -v 
echo postfix postfix/relay_restrictions_warning      boolean | sudo debconf-set-selections -v 
echo postfix postfix/kernel_version_warning  boolean | sudo debconf-set-selections -v 
echo postfix postfix/mailname        string  ip-172-31-4-121.sa-east-1.compute.internal
echo icinga-cgi      icinga/adminpassword    password $icingaadminpassword | sudo debconf-set-selections -v 
echo icinga-cgi      icinga/adminpassword-repeat     password $icingaadminpassword | sudo debconf-set-selections -v 
echo icinga-cgi      icinga/adminpassword-mismatch   error
echo icinga-common   icinga/check_external_commands  boolean false
echo icinga-idoutils icinga-idoutils/mysql/app-pass  password  $mysqlpassword | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/password-confirm        password $mysqlpassword | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/admin-pass        password $mysqlpassword | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/app-password-confirm    password $mysqlpassword | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/mysql/admin-pass        password $mysqlpassword | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/app-pass  password | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/remote/host     select | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/database-type   select  mysql | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/mysql/method    select  unix socket | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/authmethod-admin  select  ident | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/dbconfig-reinstall      boolean false | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/manualconf        note | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/authmethod-user   select  password | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/db/dbname       string  icinga | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/upgrade-error   select  abort | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/install-error   select  abort | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/db/app-user     string  icinga-idoutils | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/mysql/admin-user        string  root | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/admin-user        string  postgres | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/no-empty-passwords        error | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/dbconfig-install        boolean true | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/passwords-do-not-match  error | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/internal/reconfiguring  boolean false | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/dbconfig-upgrade        boolean true | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/internal/skip-preseed   boolean false | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/missing-db-package-error        select  abort | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/db/basepath     string | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/remote/port     string | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/method    select  unix socket | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/upgrade-backup  boolean true | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/remote/newhost  string | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/pgsql/changeconf        boolean false | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/purge   boolean false | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/dbconfig-remove boolean | sudo debconf-set-selections -v 
echo icinga-idoutils icinga-idoutils/remove-error    select  abort | sudo debconf-set-selections -v 

