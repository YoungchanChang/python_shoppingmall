from sqlalchemy.orm import declarative_base
from sqlalchemy import Column, Integer, String

from beginner.domain.session_create import engine, session

Base = declarative_base()


class Buyers(Base):
    __tablename__ = 'buyer'

    id = Column(Integer, primary_key=True)
    name = Column(String)
    money = Column(Integer)


class TestTable(Base):
    __tablename__ = 'test_table'

    id = Column(Integer, primary_key=True)
    name = Column(String)
    money = Column(Integer)


Base.metadata.create_all(engine)


ed_user = Buyers(name='test_user', money=0)
session.add(ed_user)
session.commit()