FROM python:3.10-slim

# Upgrade pip
RUN pip install --no-cache-dir --upgrade pip

# Install poetry
RUN pip install -U poetry

WORKDIR /app

COPY pyproject.toml ./

RUN poetry install --no-dev

COPY /src ./src
