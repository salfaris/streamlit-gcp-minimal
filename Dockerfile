FROM python:3.11-slim

# Expose the port you want your app to run on
EXPOSE 8080

# Set WORKDIR
WORKDIR /app

# Upgrade pip and install requirements
COPY app/requirements.txt requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

# Copy app files into root
COPY /app .

# Run
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]