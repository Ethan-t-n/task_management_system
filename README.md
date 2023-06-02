# Task Management System

The Task Management System is a web application built with Ruby on Rails that allows users to create, manage, and track tasks. Users can create tasks, provide task descriptions, mark tasks as completed or incomplete, and perform basic CRUD (Create, Read, Update, Delete) operations on tasks.

## Features

- Create tasks with names and descriptions.
- Mark tasks as completed or incomplete.
- Edit existing tasks to update their details.
- Delete tasks from the system.
- View a list of all tasks with their details.
- View individual task details.
- Sorts completed tasks to the bottom of the list.
- Crosses out tasks if they are completed.
- User-friendly interface with intuitive navigation.

## Prerequisites

Before running the Task Management System, make sure you have the following installed:

- Ruby 
- Ruby on Rails 

## Installation

1. Clone the repository by opening up your terminal and inserting the code below:

   ```bash
   git clone git@github.com:Ethan-t-n/task_management_system.git
   ```
2. Install the required dependencies in your terminal:

   ```bash
   bundle install
   ```
3. Set up the database in your terminal:

   ```bash
   rails db:setup
   ```
4. Start the Rails server in your terminal:

   ```bash
   rails server
   ```
5. Open your web browser and navigate to http://localhost:3000 to access the Task Management System.

## Usage
- To create a new task, click on the "New Task" link on the homepage. Fill in the task details and click "Create Task" to save.
- To view the list of tasks, click on the "Task List" link on the homepage. The list will display all tasks with their names, descriptions, and completion status.
- To edit a task, click on the "Edit" link next to the task in the list. Update the task details and click "Update Task" to save the changes.
- To delete a task, click on the "Delete" link next to the task in the list. A confirmation dialog will appear, and upon confirmation, the task will be permanently deleted.
- To view the details of a specific task, click on the "Show" link next to the task in the list. The details page will display the task name, description, and completion status.

## Testing
The Task Management System includes automated tests to ensure the functionality of the application. The tests cover various aspects of the system, including models, controllers, and views.

To run the tests, insert and run the code below into your terminal:
   
   ```bash
   rails test
   ```

## Contributing
Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.

## Future Updates!!
- edit styling to make the site look more appealing 
- will deploy once I research finding an alternative to Heroku
- will add a functionality that assigns tasks to a specific individual 
