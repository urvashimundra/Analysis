# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./requirements.txt /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .


# Make port 5000 available to the world outside this container
EXPOSE 5000
ENV FLASK_APP=my_flask.py
CMD ["flask", "run", "--host 0.0.0.0", "0.0.0.0"]
