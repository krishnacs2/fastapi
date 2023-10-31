#!/bin/bash

# Calculate worker count dynamically
WORKER_COUNT=$(python calculate_workers.py)

# Start Gunicorn with the calculated worker count
gunicorn app:app --workers=${WORKER_COUNT} -k uvicorn.workers.UvicornWorker
