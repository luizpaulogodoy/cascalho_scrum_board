# CascalhoScrumBoard

This project is a Trello Clone written in [Elixir](elixir-lang.org) with the [Phoenix Framework](http://www.phoenixframework.org/) just for studying.

Users can be part of one or mode Teams
Teams have many Boards
Boards can have many tasks
A User can be assigned for only one task of the Board, it means that the user must finish a task before get another


### Models

- **User**
  - has and belongs to many teams

- **Team**
  - has and belongs to many users
  - has many boards

- **Board**
  - belongs to team
  - has many tasks

- **Task**
  - belongs to board

- **Assignment**
  - has one user
  - has one task

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
