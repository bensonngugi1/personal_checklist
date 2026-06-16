# Personal Organizer (Bash)

A simple command-line Personal Organizer built with Bash. It allows users to create tasks, view existing tasks, and mark tasks as completed using a menu-driven interface.

## Features

* Add new tasks
* View all tasks
* Mark tasks as completed
* Store tasks in a local text file (`tasks.txt`)
* Colorized terminal output for better readability
* Simple and lightweight with no external dependencies

## Preview

```text
================================================
          PERSONAL ORGANIZER
================================================

1. Enter task
2. View tasks
3. Mark complete
4. Exit
```

### Example Tasks

```text
[ ] Buy milk
[ ] Finish assignment
[x] Study Bash
```

## Requirements

* Bash 4.0+
* Linux, macOS, or Windows (via Git Bash/WSL)

## Installation

Clone the repository:

```bash
git clone https:/github.com/bensonngugi1/personal_checklist

```

Make the script executable:

```bash
chmod +x bash.sh
```

## Usage

Run the script:

```bash
./bash.sh
```

or

```bash
bash bash.sh
```

## Menu Options

### 1. Enter Task

Adds a new task to the task list.

Example:

```text
Enter task: Buy milk
```

Stored as:

```text
[ ] Buy milk
```

### 2. View Tasks

Displays all tasks currently stored in `tasks.txt`.

### 3. Mark Complete

Displays numbered tasks and allows the user to select a task to mark as completed.

Example:

```text
1. [ ] Buy milk
2. [ ] Study Bash
```

Selecting task `1` changes it to:

```text
[x] Buy milk
```

### 4. Exit

Closes the application.

## Project Structure

```text
.
├── bash.sh
├── tasks.txt
└── README.md
```

## How It Works

Tasks are stored in a plain text file using the following format:

```text
[ ] Task not completed
[x] Task completed
```

The application uses Bash functions, loops, conditional statements, and `sed` for updating task status.

## Learning Concepts Demonstrated

* Bash scripting
* Functions
* Loops (`while`)
* Conditional statements
* Case statements
* User input handling
* File operations
* Text processing with `sed`
* ANSI terminal colors

## Future Improvements

* Delete tasks
* Edit tasks
* Due dates
* Task categories
* Task priorities
* Persistent statistics
* Search functionality

## License

This project is open source and available under the MIT License.
