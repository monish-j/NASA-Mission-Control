# NASA Mission Control Project

## About
This is the completed version of the NASA Mission Control project from the Zero to Mastery Node.js course. This project demonstrates the latest best practices and techniques to build performant applications using Node.js, MongoDB, and data from SpaceX and NASA. You can check out the live version [here](http://13.60.228.99:8000/).

## Getting Started
Ensure you have Node.js installed.

Create a free Mongo Atlas database online or start a local MongoDB database.

Create a `server/.env` file with a `MONGO_URL` property set to your MongoDB connection string.

In the terminal, run: `npm install`

## Running the Project
In the terminal, run: `npm run deploy`

Browse to the mission control frontend at `localhost:8000` and schedule an interstellar launch!

## Docker
Ensure you have the latest version of Docker installed.

Run `docker build -t nasa-project .`

Run `docker run -it -p 8000:8000 nasa-project`

## Running the Tests
To run any automated tests, run `npm test`. This will:

Run all the client-side tests: `npm test --prefix client`

Run all the server-side tests: `npm test --prefix server`

