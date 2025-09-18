FROM python:3.9

WORKDIR /app/backend

COPY requirements.txt /app/backend
RUN pip install -r requirements.txt

COPY . /app/backend

# Expose Django port
EXPOSE 8000

# Run the app
CMD python /app/backendmanage.py runserver 0.0.0.0:8000
