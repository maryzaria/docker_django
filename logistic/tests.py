from django.test import TestCase
from rest_framework.test import APIClient


class TestSomething(TestCase):
    def test_ok(self):
        client = APIClient()
        response = client.get('/api/v1/test/')
        assert response.status_code == 200
