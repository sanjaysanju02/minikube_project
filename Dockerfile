# Use an official Python runtime as a parent image
FROM python:3.10

# Install system dependencies for MySQL client
RUN apt-get update && \
  apt-get install -y default-libmysqlclient-dev gcc && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Upgrade pip to the latest version
RUN pip install --upgrade pip

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "summercamp.wsgi:application"]
