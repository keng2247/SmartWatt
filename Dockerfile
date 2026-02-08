# Use Python as base (it's harder to install Python on Node alpine than vice versa)
FROM python:3.9-slim

# Install Node.js 18 and system dependencies
RUN apt-get update && apt-get install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set Working Directory
WORKDIR /app

# --- 1. SETUP BACKEND ---
COPY Backend/requirements.txt ./Backend/
RUN pip install --no-cache-dir -r Backend/requirements.txt

# --- 2. SETUP FRONTEND ---
COPY Frontend/package.json Frontend/package-lock.json* ./Frontend/
WORKDIR /app/Frontend
RUN npm install

# --- 3. COPY SOURCE & BUILD ---
WORKDIR /app
COPY . .

# Build Frontend
WORKDIR /app/Frontend
RUN npm run build   

# --- 4. RUN CONFIGURATION ---
WORKDIR /app
COPY start.sh .
RUN chmod +x start.sh

# Expose both ports
EXPOSE 3000 8000

# Start both services
CMD ["./start.sh"]
