import requests


def test_enroll_product(set_url):
    """상품등록"""
    # given
    payload = {
        "name": "1234",
        "price": 3,
        "seller": "py-mall",
        "desc": "hello world"
    }

    # when
    res = requests.post(url=f"{set_url}/products", json=payload)

    # then
    assert res.status_code == 200


def test_read_products(set_url):
    """모든 상품 조회"""
    # given
    payload = {
        "start": 1,
        "end": 5
    }

    # when
    res = requests.get(url=f"{set_url}/products", params=payload)

    # then
    assert res.status_code == 200


def test_read_product_by_id(set_url):
    """상품 세부 조회"""
    # given
    payload = {
        "product_id": 1
    }

    # when
    res = requests.get(url=f"{set_url}/products", params=payload)

    # then
    assert res.status_code == 200


def test_order_product(set_url):
    """주문 요청"""
    # given
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
    res = requests.post(url=f"{set_url}/order", json=payload)

    # then
    assert res.status_code == 200
