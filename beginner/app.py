from fastapi import FastAPI
from starlette import status
from starlette.responses import JSONResponse

from beginner.domain import Product, Buyer

app = FastAPI()


@app.get("/products/")
async def read_products(start: int = 0, end: int = 10):
    return JSONResponse(status_code=status.HTTP_200_OK, content={"start": start, "end": end})


@app.get("/products/{product_id}")
async def read_product_by_id(product_id: int = 0):
    return JSONResponse(status_code=status.HTTP_200_OK, content={"product_id": product_id})


@app.post("/products/")
def enroll_product(product: Product):
    return JSONResponse(status_code=status.HTTP_200_OK, content={"product": product.json()})


@app.post("/order/")
async def order_product(product: Product, buyer: Buyer):
    return JSONResponse(status_code=status.HTTP_200_OK, content={"product": product.json()})




