from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"message": "Hello World!"}  # <-- remove the comma here to match test

@app.get("/health")
def health_check():
    return {"status": "ok"}

