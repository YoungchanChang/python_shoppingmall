from typing import Optional

from pydantic import BaseModel


class Buyer(BaseModel):
    id: int
    name: str
    money: int


class Seller(BaseModel):
    id: int
    name: str
    money: int


class Product(BaseModel):
    id: int
    name: str
    price: int
    seller: int
    desc: Optional[str] = None


class Order(BaseModel):
    product: Product
    buyer: Buyer
