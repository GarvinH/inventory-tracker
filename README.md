#### Prerequisites

The setups steps expect following tools installed on the system.

- Ruby 3.0.2p107
- Rails 7.0.1
- sqlite3 3.36.0
- node v16.13.0
- yarn 1.22.17

**HEADS UP:** On Unix (at least for fedora), double check that all the other ruby/rails and sqlite dependencies are already installed:

```
$ sudo dnf install rubygem-{tk{,-doc},rake,test-unit}
$ sudo dnf group install "C Development Tools and Libraries"
$ sudo dnf install ruby-devel zlib-devel
$ sudo dnf install sqlite-devel
```

depending on your OS, they may have different names, or might already be installed.

#### 1. Check out the repository

```bash
$ git clone https://github.com/GarvinH/inventory-tracker.git
```

#### 2. Bundle install

Run 
```
$ bundle install
```
 to ensure all gems are installed properly

**WINDOWS USERS**: you may have to install bundler in order for this command to work

```
$ gem install bundler:2.3.4
```

#### 3. Create and setup the database

Run the following command to create and setup the database.

```
$ bin/rails db:migrate
```
**TROUBLESHOOTING**

- On Unix (at least for fedora), you may encounter a message telling you to run `gem pristine ...` on a handful of gems. Be sure to run `gem pristine ...` on all gems that are being listed.

- On Windows, you may get an error stating there was trouble finding sqlite3-1.4.2. This problem is solved by running `gem install sqlite3 -v 1.4.2`

**BE SURE TO RE-RUN THE MIGRATION. GOING THROUGH THE TROUBLESHOOTING STEPS MEANS IT FAILED**


#### 4. Start the Rails server

You can start the rails server using the command given below.

```
$ bin/rails server
```

And now you can visit the site with the URL http://localhost:3000
