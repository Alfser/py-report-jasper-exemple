from configparser import ConfigParser

class BaseCredentials:
    '''
            Classe base de configuração de conexão com o banco de dados.

            Atributos
            ---------
            filename : str
                Nome do arquivo .ini com as configurações do banco de dados.
            section : str
                A sessão a qual deseja obter as configurações do arquivo .ini
            
            Métodos
            -------
            get_from_file() -> dict
                Obtém do arquivo .ini as credenciais de acesso.
        '''          

    # init file with database configurations
    _filename = 'credentials_db.ini'
    _section = 'default'

    @classmethod
    def get_from_file(cls, filename=None) -> dict:
        if filename:
            cls._filename = filename
        
        parser = ConfigParser()

        try:
            parser.read(filenames=cls._filename)
        except:
            print('Erro durante a leitura do arquivo .ini com as configurações do banco.')

        if not parser.has_section(section=cls._section):
            # convert tuples to dictionary
            raise ValueError(f"A sessão {cls._section} não existe no arquivo {cls._filename}.")
        
        db_configs_dict = dict(parser.items(section=cls._section))
        return db_configs_dict

class PostgresCredentials(BaseCredentials):              
    _section = 'postgres'



if __name__=='__main__':
    
    # Testing get database settings from .ini file
    configs = PostgresCredentials.get_from_file('credentials_db.ini')
    print(configs)
