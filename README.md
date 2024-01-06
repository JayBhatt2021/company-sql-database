# Company SQL Database

Company SQL Database is a PostgreSQL database containing tables related to a generic company's departments, department
locations, projects, employees, employee work hours, and employee dependents. The file hierarchy of this repository is
optimized for terminal usage.

## Installation

1. **Verify PostgreSQL Installation:**

Ensure that you have PostgreSQL installed on your system. You can check the version by running:

```bash
$ psql --version
```

2. **Clone the Repository:**

Clone the repository to your local machine:

```bash
$ git clone https://github.com/JayBhatt2021/company-sql-database.git
```

3. **Navigate to the Directory:**

Change into the `company-sql-database` directory:

```bash
$ cd company-sql-database
```

4. **Create the Database:**

Create the `company` database. Replace `your_username` with your PostgreSQL username:

```bash
$ createdb -h localhost -U your_username -e company
```

5. **Connect to the Database:**

Connect to the `company` database. Replace `your_username` with your PostgreSQL username:

```bash
$ psql -h localhost -d company -U your_username -W
```

6. **Execute Database Scripts:**

Execute `DatabaseCreation.sql` to create the database tables:

```bash
$ \i DatabaseCreation.sql
```

Execute `DatabasePopulation.sql` to populate the database tables:

```bash
$ \i DatabasePopulation.sql
```

## Usage

1. **Execute View Scripts:**

Execute any of the View SQL Scripts found in the `company-sql-database` directory. For example, to execute `View6.sql`:

```bash
$ \i View6.sql
```

2. **Exit `psql` Tool:**

After executing the View SQL Scripts, exit the psql tool:

```bash
$ \q
```
