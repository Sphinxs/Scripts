// sudo apt install mysql-server mysql-client libmysqlcppconn-dev

// Standard C++ libraries
#include <iostream>

// MySQL library
#include <cppconn/driver.h>

#include <cppconn/exception.h>

#include <cppconn/resultset.h>

#include <cppconn/statement.h>

// https://dev.mysql.com/doc/dev/connector-cpp/8.0/jdbc_ref.html

int main()
{
    sql::Driver *driver;

    sql::Connection *connection;

    sql::Statement *statement;

    sql::ResultSet *result;

    try
    {
        // Create connection
        driver = get_driver_instance();

        connection = driver->connect("tcp://localhost:3306", "username", "password");

        // Connect to a specific database
        connection->setSchema("database");

        statement = connection->createStatement();

        result = statement->executeQuery("SELECT 'Database' AS _column");

        while (result->next()) {
            // Access column data by alias or column name
            // std::cout << result->getString("_column") << std::endl;

            // Access column data by numeric offset, 1 is the first column
            std::cout << result->getString(1) << std::endl;
        }

        delete result;

        delete statement;

        delete connection;
    }
    catch (sql::SQLException &error)
    {
        std::cout << "\033[31mError\033[m: ";

        std::cout << __FILE__ << " - " << __FUNCTION__ << " - " << __LINE__ << ".";

        std::cout << " " << error.what() << std::endl;
    }

    return 0;
}
