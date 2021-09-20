##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.3.7]
- Rails [5.0.7.2]

##### 1. Check out the repository

```bash
git clone https://github.com/SanjayVinzuda/OmniGithub.git
```

##### 2. Create database.yml file

Open database.yml file and edit the database configuration as required.

```bash
setup config/database.yml
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
1. Pull Repo
2. Run `bundle install`
3. Run `bundle exec rake db:create` or `rails db:create`
4. Run `bundle exec rake db:setup` or `rails db:setup`
```

##### 4. Add ENV keys of Github

Create new github app keys and add into the .ENV file.

```bash
rename .env_sample to .env
```

##### 5. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000


##### 6. DEMO

Heroku URL

```bash
https://omni-github.herokuapp.com/users/sign_in
````
