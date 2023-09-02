import uvicorn

def start():
    uvicorn.run("backend.app:app", host="0.0.0.0", log_level="info")