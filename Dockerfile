# Use the official Python base image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the default port for the HTTP service
EXPOSE 8080

# Set the entrypoint for the container
ENTRYPOINT ["python", "app.py"]
