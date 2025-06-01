# README

This is a full-stack Ruby on Rails 8 application for managing courses, assignments, announcements, and terms. It includes authentication, real-time notifications, and responsive design.

Features

* User Authentication using Devise
* Course Management (CRUD operations)
* Assignment Management
* Announcement System
* Term Association
* Favorites & Bookmarks
* Real-Time Notifications using ActionCable
* Responsive UI with Bootstrap
* Role-based Access Control (Admin, Instructor, Student)
* Testing with RSpec and Capybara

Technologies Used

* Backend: Ruby 3.2.0, Rails 8, PostgreSQL
* Frontend: HTML, CSS, JavaScript, Bootstrap 5
* Authentication: Devise
* Real-Time Features: ActionCable, Redis
* Background Jobs: SolidQueue
* Testing: RSpec, Capybara, FactoryBot, Faker

Setup Instructions

Prerequisites

Ensure you have the following installed:

* Ruby 3.2.0
* Rails 8.0.1
* PostgreSQL
* Redis
* Node.js & Yarn

Installation

Clone the repository:

git clone https://github.com/HarshalJain1999/assessment_project.git
cd assessment_project

Install dependencies:

bundle install
yarn install

Set up the database:

rails db:create db:migrate db:seed

Start the development server:

rails server

Open http://localhost:3000 in your browser.

Run the test suite:

bundle exec rspec

Project Structure

app/
  controllers/
  models/
  views/
  channels/
  jobs/
config/
db/
spec/

