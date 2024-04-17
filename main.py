
import os
from pyreportjasper import PyReportJasper
from pyreportjasper.report import Report
from platform import python_version

from credentials import PostgresCredentials

RESOURCES_DIR = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'resources')
REPORTS_DIR = os.path.join(os.path.abspath(os.path.dirname(__file__)), 'reports')


def run_example_using_postgres():
   input_file = os.path.join(REPORTS_DIR, 'postgres.jrxml')
   output_file = os.path.join(REPORTS_DIR, 'pessoa')
   db_credentials = PostgresCredentials.get_from_file(filename='.credentials_db.ini')
   conn = {
    'driver': 'postgres',
    'username': db_credentials['username'],
    'password': db_credentials['password'],
    'host': db_credentials['host'],
    'database': db_credentials['database'],
    'schema': db_credentials['schema'],
    'port': db_credentials['port'],
    'jdbc_driver': 'org.postgresql.Driver'
   }
   pyreportjasper = PyReportJasper()
   pyreportjasper.config(
     input_file,
     output_file,
     db_connection=conn,
     output_formats=["pdf"],
     locale='pt_BR'
   )
   pyreportjasper.process_report()
   

if __name__ == '__main__':
    run_example_using_postgres()