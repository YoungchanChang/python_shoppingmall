from typing import Optional

from pydantic import BaseModel


class Buyer(BaseModel):
    id: int
    money: int
    products: list


class Seller(BaseModel):
    id: int
    money: int
    products: list


class Product(BaseModel):
    name: str
    price: int
    seller: str
    id: int = None
    desc: Optional[str] = None


class Order(BaseModel):
    product: Product
    buyer: Buyer
