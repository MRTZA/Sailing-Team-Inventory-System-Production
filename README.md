# Sailing-Team-Inventory-System
SaaS inventory tracker for the Texas A&amp;M Sailing Team

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

```
Docker
```

### Installing

A step by step series of examples that tell you how to get a development env running

Use the Dockerfile to build the image

```
docker build -f Dockerfile -t profane:latest .
```

Create a container with the repo mounted and a port opened for local testing.
Fill in <BLANK> where appropriate. Exit out of the container, find the container-id
and use that to log back into the container

```
docker run -it -v <path_to>/Sailing-Team-Iventory-System:/Sailing-Team-Iventory-System -p 3000:3000 profane:latest
exit
docker ps -a | grep profane 
docker start <container-id>
docker exec -it <container-id> bash
```

Navigate to the repo in the container and run...
```
bundle install --without production
rake db:migrate
rake db:seed
rails s -p 3000 -b 0.0.0.0
```

Go to [localhost](http://localhost:3000) to see the site

## Running the tests

To run rspec tests, run the following in your terminal in the project directory...

`rspec`

To run cucumber tests, run the following in your terminal in the project directory...

`cucumber`

SimpleCov tests should be run automatically when you run these above tests. You can find the code coverage results in the coverage folder.

## Deployment

To deploy to heroku, execute the following in your terminal in the project directory...

`git push heroku master`
`heroku run rake db:migrate`
`heroku run rake db:seed`

## Built With

* [Rails](https://rubyonrails.org/) - The backend-web framework used

## Authors

* **Jadie Marshall** [jmar016](https://github.com/jmar016)
* **Murtaza Hakimi** [MRTZA](https://github.com/MRTZA)
* **Eric Zhang** [esotericzhang](https://github.com/esotericzhang)
* **Nicolas Kristiansson** [Norphesius](https://github.com/Norphesius)
* **Trent Thompson** [PurpleBooth](https://github.com/PurpleBooth)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc


