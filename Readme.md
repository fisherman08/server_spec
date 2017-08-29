# Serverspecを使ってサーバーにSSH接続してテストをするスクリプト

## Requirement
* Local
    * Ruby
    * Bundler

* Remote
    * An OS user who can sudo without password

## Install
```
bundle install --path=vendor/bundle

```

## Usage

* example
    ```
    bundle exec rake spec role=neo_server host=demo101 user=ec2-user 
    ```
    
* Parameters
    * role
        * tomcat_app_server
        * neo_server (tomcat_app_server + oracle client)
        * rails_app_server
        * redmine_server (rails_app_server + mysqld)
    * host
        *
    * user
        * SSH user name
    * timezone
        * String for timezone. Default: 'JST'
        
## License
MIT License         