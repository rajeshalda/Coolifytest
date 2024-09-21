# Step 1: Use the official Python image as the base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt file to the container
COPY requirements.txt .

# Step 4: Install the Python dependencies inside the container
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application code into the container
COPY . .

# Step 6: Expose the port that Flask will run on (default is 5000)
EXPOSE 5000

# Step 7: Command to run the application
CMD ["python", "app/app.py"]
