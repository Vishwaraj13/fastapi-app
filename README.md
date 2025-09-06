# FastAPI Project with Docker and CI/CD

A simple FastAPI project with Docker containerization and GitHub Actions CI/CD pipeline.

## Local Development

1. Clone the repository:
```bash
git clone <your-repo-url>
cd <your-repo-name>
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run the application:
```bash
uvicorn app.main:app --reload
```

The API will be available at `http://localhost:8000`

## Docker

To run the application using Docker:

1. Build the image:
```bash
docker build -t fastapi-app .
```

2. Run the container:
```bash
docker run -p 8000:8000 fastapi-app
```

## Deployment

This project is set up to deploy to Railway.app, a free-to-use platform for hosting applications.

To deploy:

1. Create an account on [Railway.app](https://railway.app)
2. Install the Railway CLI
3. Configure the following secrets in your GitHub repository:
   - RAILWAY_TOKEN
   - RAILWAY_USERNAME
   - RAILWAY_PROJECT

The CI/CD pipeline will automatically deploy your application when changes are pushed to the main branch.

## API Documentation

Once the application is running, you can access:
- API documentation at `/docs`
- Alternative API documentation at `/redoc`
