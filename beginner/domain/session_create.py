# tutorial - https://docs.sqlalchemy.org/en/14/orm/tutorial.html
from sqlalchemy import create_engine

from beginner.conf.conf import Config
from sqlalchemy.orm import sessionmaker, Session
engine = create_engine(
    "{engine}://{username}:{password}@{host}:{port}/{db_name}".format(
        engine="postgresql",
        username=Config.TEST_DB_USERNAME,
        password=Config.TEST_DB_PASSWORD,
        host=Config.TEST_DB_HOST,
        port=Config.TEST_DB_PORT,
        db_name=Config.TEST_DB_NAME,
    ),
    max_overflow=15,
    pool_size=8,
    pool_recycle=3600,
    pool_timeout=10,
    connect_args={"application_name": Config.DB_APPLICATION_NAME},
)

SessionLocal = sessionmaker(
    bind=engine,
    autocommit=False,
    autoflush=False,
    expire_on_commit=False,
)

session = SessionLocal()


