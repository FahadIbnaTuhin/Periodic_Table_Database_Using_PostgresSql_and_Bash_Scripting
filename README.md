# Periodic Table Database Project

## What I learned
- How to design and modify a relational PostgreSQL database
- How to use SQL commands (SELECT, INSERT, UPDATE, ALTER, JOIN, DELETE)
- How foreign keys and constraints work in relational databases
- How to normalize a database (splitting types into a separate table)
- How to use bash scripting to interact with PostgreSQL
- How to handle git version control and commit history properly
- How to resolve merge conflicts during git rebase

## Skills used
- PostgreSQL (SQL queries, schema design, joins, constraints)
- Bash scripting
- Git & GitHub (branching, commits, rebase, conflict resolution)
- Data cleaning and type conversion (NUMERIC formatting)
- Problem solving and debugging

## How to run it

1. Clone the repository:
```bash
git clone <your-repo-url>
cd periodic_table
```

2. Give execute permission to the script:
```bash
chmod +x element.sh
```

3. Run the program:

```bash
./element.sh
```

or

```bash
./element.sh 1
./element.sh H
./element.sh Hydrogen
```

## Output example
```
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
```

If element is not found:
```
I could not find that element in the database.
```

If no argument is given:
```
Please provide an element as an argument.
```
