import logging

import azure.functions as func
from ownsecretary.app import app


def main(req: func.HttpRequest, context: func.Context) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')

    return func.AsgiMiddleware(app).handle(req, context)
