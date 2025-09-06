from fastapi.testclient import fastapi
from app.main import app

client = fastapi.TestClient(app)

def test_read_root():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello from Railway!"}
