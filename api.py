from fastapi import FastAPI
app = FastAPI()
@app.get("/")
async def root():
    return {"model_names": ["ibm-granite/granite-34b-code-instruct", "ibm-granite/granite-34b-code"]}
