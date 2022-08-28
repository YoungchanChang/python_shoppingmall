import pytest


@pytest.fixture(scope="session")
def set_url():
    return "http://localhost:8000"