# 🏍️🌏 Kuki Bikes

Kuki Bikes is a web application developed in one week as part of the Le Wagon web development course. The platform allows users to rent motorcycles from various locations, providing a seamless experience for both bike owners and renters. Key features include user authentication, bike listing management, booking system, and integration with Cloudinary for image uploads.

![kuki-bikes](https://github.com/user-attachments/assets/66b3842a-e541-4130-93b0-71e0c13c405a)

<br>

[Check it out!](https://kuki-bikes-48aa9cd0a9c6.herokuapp.com)

We've set up example bikes for Tokyo, Osaka, Poznan and Wroclaw. You can also search without any location or date.
   

## Getting Started
### Setup

Install gems
```
bundle install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
MAPBOX_API_KEY=your_own_mapbox_api_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team Members
- [Jarod Mizgaliski](https://www.linkedin.com/in/jarod-mizgalski-429546229/)
- [Bart Mikorski](https://github.com/Sadcrispy)
- [Toby Palethorpe](https://www.linkedin.com/in/toby-palethorpe-826aaa90/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License
