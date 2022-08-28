import requests


def test_enroll_product():
    """상품등록"""
    # given
    api_host = "http://localhost:8000"
    payload = {
        "name": "1234",
        "price": 3,
        "seller": "py-mall",
        "desc": "hello world"
    }

    # when
    res = requests.post(url=f"{api_host}/products", json=payload)

    # then
    assert res.status_code == 200


def test_read_products():
    """모든 상품 조회"""
    # given
    api_host = "http://localhost:8000"
    payload = {
        "start": 1,
        "end": 5
    }

    # when
    res = requests.get(url=f"{api_host}/products", params=payload)

    # then
    assert res.status_code == 200


def test_read_product_by_id():
    """상품 세부 조회"""
    # given
    api_host = "http://localhost:8000"
    payload = {
        "product_id": 1
    }

    # when
    res = requests.get(url=f"{api_host}/products", params=payload)

    # then
    assert res.status_code == 200


def test_order_product():
    """주문 요청"""
    # given
    api_host = "http://localhost:8000"
    payload = {
          "product": {
            "name": "test",
            "price": 0,
            "seller": "tester",
            "id": 0,
            "desc": "string"
          },
          "buyer": {
            "id": 0,
            "money": 0,
            "products": [
              "test-product"
            ]
          }
        }

    # when
    res = requests.post(url=f"{api_host}/order", json=payload)

    # then
    assert res.status_code == 200
