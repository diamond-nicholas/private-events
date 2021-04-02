# Using devise gem to create an authentication and authorization system for a simple app

![](https://img.shields.io/badge/Microverse-blueviolet)

In this project, we have created an application that allows you to create events as a registered user, attend those events, read the information of those events including the full attendee list, and see all the events you're attending on your user page. Events are divided into upcoming (future events) and past by referencing just the date.

## Getting started

- To clone and run the application locally, you can use the following steps:
- Clone the repository from GitHub, using the `git clone` command.
- Create the new application and switch to its folder using `$cd folder name`.
- In the terminal, type `run bundle` to install the gems
- run npm install --global yarn
- Run command 'rails server' to connect to the server.
- To open the application in the browser, visit http://localhost:3000.
- To set up and configure your database for the first time, you can use the rails `rails db:create` command.
- To set up the tables in the database, run the `rails db:migrate` command

## To run tests:

- complete the Getting started procedure to set up correctly.
- Make sure You are in the root of the project.
- run `bundle exec rake spec`.
- The name of the tests and their results will be displayed onto the console will be displayed.

## Project implementation steps

- We created a new Rails application called **Private-Events**.
- We used the devise generator to create the user model and all its dependencies.
- We used the routes method called **resources** to replace **get routes**. And we used':only' method to specify two actions 'create' and 'new'.
- We used a **Strong Parameters** to filter params
- We used **partials** to avoid code duplication by copying common code from the edit and create files and pasting it into a single file '\_form.html.erb'.
- We used the validation present in devise to handle that.

## Authors

**Franklin benjamin crisostomo de la rosa**

- GitHub: [@franklinben23](https://github.com/franklinben23)
- Twitter: [@frankli2302](https://twitter.com/Frankli2302)
- LinkedIn: [Franklin Benjamin](https://www.linkedin.com/in/franklinbenjamin/)

**Nicholas Diamond**

- GitHub: [@Diamond](https://github.com/diamond-nicholas)
- LinkedIn: [Diamond Nicholas](https://www.linkedin.com/in/diamond-nicholas/)
- Twitter: [@diamondnich](https://twitter.com/diamondnich)

## Show your support

Give a ⭐️ if you like this project!

## License

This project is [MIT](./LICENSE) licensed.

## Acknowledgements

- [Microverse](https://microverse.org)
