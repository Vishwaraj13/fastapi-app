from fastapi import FastAPI
import os

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello from Vishu!"}

if __name__ == "__main__":
    import uvicorn
    # Railway provides PORT environment variable
    port = int(os.getenv("PORT", "8000"))
    uvicorn.run("main:app", host="0.0.0.0", port=port, reload=False)
