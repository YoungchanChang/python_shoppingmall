# ref : code_snippet/test/test_sql_dump
import os
import yaml

abspath = os.path.dirname(os.path.abspath(__file__))

PRODUCTION_MODE = os.environ.get(
    "PRODUCTION_MODE", "test"
)

with open(abspath + "/conf.yaml", "r") as yaml_conf:
    conf = yaml.safe_load(yaml_conf)[PRODUCTION_MODE]


class Config:
    DB_APPLICATION_NAME = (
            os.environ.get("DB_APPLICATION_NAME", "local")
            + f"@{os.uname().nodename}[{os.getpid()}]"
    )

    DB_HOST: str = f"postgresql://{conf['TEST_DB']['USERNAME']}:{conf['TEST_DB']['PASSWORD']}@{conf['TEST_DB']['HOST']}:{conf['TEST_DB']['PORT']}/{conf['TEST_DB']['NAME']}"
    TEST_DB_PORT = conf["TEST_DB"]["PORT"]
    TEST_DB_NAME = conf["TEST_DB"]["NAME"]
    TEST_DB_USERNAME = conf["TEST_DB"]["USERNAME"]
    TEST_DB_HOST = conf["TEST_DB"]["HOST"]
    TEST_DB_READER_HOST = conf["TEST_DB"]["READER_HOST"]
    TEST_DB_PASSWORD = conf["TEST_DB"]["PASSWORD"]