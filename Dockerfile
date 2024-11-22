FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /FInal_api

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose port 5000 (the port your Flask app runs on)
EXPOSE 8000

# Command to run the application
CMD ["python", "FInal_api.py"]
