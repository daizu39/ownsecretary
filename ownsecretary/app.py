from typing import Optional
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def main():
    return {"Hello": "test"}


@app.get("/hello")
def fast_api(name: Optional[str] = None):
    if name is None:
        return {"response": "This HTTP triggered function executed successfully. Pass a name in the query string or in the request body for a personalized response."}
    else:
        return {"response": "Hello, {name}. This HTTP triggered function executed successfully."}
