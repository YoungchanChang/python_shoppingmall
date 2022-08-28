from typing import Optional

from pydantic import BaseModel


class Buyer(BaseModel):
    id: int
    money: int
    items: list


class Seller(BaseModel):
    id: int
    money: int
    items: list


class Item(BaseModel):
    id: int
    name: str
    price: int
    seller: str
    desc: Optional[str] = None
