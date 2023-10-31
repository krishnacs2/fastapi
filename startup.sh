#!/bin/bash

# Get the number of workers from the environment variable
WORKER_COUNT=${GUNICORN_CMD_ARGS:11:1} # Extracts the worker count from the environment variable

# Start Gunicorn with the dynamic worker count
gunicorn app:app --workers=$WORKER_COUNT -k uvicorn.workers.UvicornWorker
