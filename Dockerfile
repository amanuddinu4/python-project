# Use an official Python image as the base
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Install Tkinter dependencies
RUN apt-get update && apt-get install -y python3-tk libnss3 libx11-6 libxext6 libxrender1 libffi-dev && rm -rf /var/lib/apt/lists/*
 
# Copy the project files into the container
COPY . .

# Expose the required port (optional for GUI apps)
EXPOSE 5000

# Command to run the application
CMD ["python", "rps.py"]
