# Health Base

## Setup
### Prerequisites

The setups steps expect following tools installed on the system.

- Ruby 2.6.6
- Rails 6.1.1
- Yarn or NPM

### Check out the repository

```bash
git clone git@github.com:anjoseb121/
health-base.git
```

### Install dependencies
Ruby gems
```bash
bundle
```
Node packages
```
yarn install
```

### Create and setup the database

Run the following commands to create and setup the database.

```ruby
bin/setup
```

You should be able to run the server

```bash
rails s
```

## Tests

You should be able to run the test suit with

```bash
rspec spec
```

## Information
### Domain model
![Domain model image](/erd.png "Optional Title")

