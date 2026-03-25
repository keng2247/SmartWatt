<div align="center">

# SmartWatt Backend 🧠

### Physics-Informed Integrated Hybrid AI Architecture for Energy Estimation

[![Status](https://img.shields.io/badge/Status-Beta-blue)](https://github.com/JishnuPG-tech/SmartWatt-Backend)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)
[![Python](https://img.shields.io/badge/Python-3.10%2B-yellow)](https://www.python.org/)
[![FastAPI](https://img.shields.io/badge/FastAPI-0.110-009688)](https://fastapi.tiangolo.com/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-2.16-orange)](https://www.tensorflow.org/)

**[Documentation](#-api-documentation)** • **[API Reference](API.md)** • **[Architecture](ARCHITECTURE.md)** • **[Installation](#-installation)** • **[Usage](#-usage)** • **[Contributing](CONTRIBUTING.md)** • **[License](#-license)**

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Core Architecture](#-core-architecture)
- [Features](#-features)
- [Tech Stack](#️-tech-stack)
- [Installation](#-installation)
- [Usage](#-usage)
- [API Documentation](#-api-documentation)
- [Project Structure](#-project-structure)
- [Environment Variables](#-environment-variables)
- [Deployment](#-deployment)
- [Testing](#-testing)
- [Architecture](#-architecture)
- [Contributing](#-contributing)
- [License](#-license)
- [Changelog](#-changelog)

---

## 🌟 Overview

SmartWatt Backend is the AI Engine powering Kerala's first intelligent residential energy estimation system. It processes appliance data through a unique **Hybrid Architecture** that dynamically switches between Deep Learning models and physics-based calculations, ensuring both accuracy and reliability.

### The Problem We Solve

Traditional AI models struggle with simple, static appliances (like fans) due to data noise, while pure physics formulas fail to capture the complexity of dynamic appliances (like ACs with variable efficiency). SmartWatt solves this **"Linear Load Paradox"** with intelligent routing.

---

## 🧠 Core Architecture

### Hybrid Intelligence System

```
User Input → Router → {
    ├─ Complex Loads (AC, Fridge) → Deep Learning Models → Physics Constraints
    └─ Linear Loads (Fan, LED)     → Pure Physics Engine → 100% Accuracy
} → Unified Prediction
```

#### 1. **Deep Learning Path** (Complex Loads)
- **Appliances**: AC, Refrigerator, Washing Machine, Water Heater, Water Pump, Microwave, Induction, Kettle, Television, Desktop, Laptop
- **Models**: 22 trained neural networks for different appliance types
- **Purpose**: Predicts hidden variables like efficiency degradation, thermal leakage, and usage patterns
- **Technology**: TensorFlow/Keras neural networks trained on 5000+ real household data points from Kerala

#### 2. **Physics Engine Path** (Linear Loads)
- **Appliances**: Ceiling Fan, LED Lights, CFL Lights, Tube Lights, Iron Box, Mixer Grinder, Toaster, Vacuum Cleaner, Hair Dryer, Rice Cooker, Food Processor
- **Purpose**: Ensures mathematical precision for predictable loads
- **Formula**: `Energy (kWh) = (Power × Hours × Efficiency Factor × Quantity) / 1000`
- **Accuracy**: 100% mathematically consistent predictions

---

## ✨ Features

- ⚡ **Hybrid AI Architecture**: Best-of-both-worlds approach for maximum accuracy
- 🔄 **Real-time Predictions**: Sub-second response times for single and batch requests
- 📊 **KSEB Tariff Integration**: Accurate bill calculation with Kerala's slab-based pricing
- 💡 **Smart Recommendations**: AI-generated energy-saving tips (e.g., appliance upgrades)
- 🔧 **Self-Learning System**: Continuous model improvement with user feedback
- 🌐 **RESTful API**: Clean, well-documented endpoints with automatic OpenAPI docs
- 🐳 **Docker Ready**: One-command deployment with containerization support
- 🔒 **Production Ready**: Error handling, logging, and health checks included

---

## 🛠️ Tech Stack

| Category | Technologies |
|----------|-------------|
| **Framework** | [FastAPI](https://fastapi.tiangolo.com/) 0.110 (Python 3.10+) |
| **ML/AI** | TensorFlow 2.16.1, Keras, Scikit-learn 1.7.2 |
| **Data Processing** | Pandas 2.2.3, NumPy 1.26.4 |
| **Validation** | Pydantic V2 (2.6.4) |
| **Server** | Uvicorn 0.27.1 (ASGI) |
| **Database** | Supabase 2.4.0 (Optional, for cloud training) |
| **Deployment** | Docker, Render, Railway |
| **Model Persistence** | Joblib 1.3.2 |

---

## 📦 Installation

### Prerequisites

- Python 3.10 or higher
- pip (Python package manager)
- Git

### Local Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/JishnuPG-tech/SmartWatt-Backend.git
   cd SmartWatt-Backend
   ```

2. **Create a virtual environment**
   ```bash
   # Windows
   python -m venv venv
   venv\Scripts\activate

   # macOS/Linux
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install dependencies**
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

4. **Set up environment variables**
   ```bash
   # Copy example environment file
   cp .env.example .env
   
   # Edit .env with your configuration
   ```

5. **Run the development server**
   ```bash
   uvicorn main:app --reload --host 0.0.0.0 --port 8000
   ```

6. **Access the API**
   - API: http://localhost:8000
   - Interactive Docs: http://localhost:8000/docs
   - ReDoc: http://localhost:8000/redoc

---

## 🚀 Usage

### Quick Start Example

```python
import requests

# Predict single appliance consumption
response = requests.post(
    "http://localhost:8000/predict-appliance",
    json={
        "name": "Ceiling Fan",
        "power": 75,
        "hoursPerDay": 8,
        "quantity": 3
    }
)

print(response.json())
# Output: {
#     "appliance": "Ceiling Fan",
#     "monthlyConsumption": 54.0,
#     "method": "PHYSICS_ENGINE",
#     "confidence": 100.0
# }
```

### Health Check

```bash
curl http://localhost:8000/health
```

---

## 📚 API Documentation

### Core Endpoints

#### 1. **Predict Single Appliance**

**POST** `/predict-appliance`

Calculate energy consumption for a single appliance.

**Request Body:**
```json
{
  "name": "Air Conditioner",
  "power": 1500,
  "hoursPerDay": 6,
  "quantity": 2,
  "starRating": 5,
  "tonnage": 1.5
}
```

**Response:**
```json
{
  "appliance": "Air Conditioner",
  "monthlyConsumption": 270.5,
  "method": "DEEP_LEARNING",
  "confidence": 94.2,
  "savingsOpportunity": {
    "recommendation": "Your 3⭐ AC uses 35% more energy than a 5⭐ model",
    "potentialSavings": 145.80
  }
}
```

---

#### 2. **Predict All Appliances (Batch)**

**POST** `/predict-all`

High-performance batch prediction for entire household.

**Request Body:**
```json
{
  "appliances": [
    {"name": "Ceiling Fan", "power": 75, "hoursPerDay": 8, "quantity": 3},
    {"name": "Refrigerator", "power": 150, "hoursPerDay": 24, "starRating": 5}
  ]
}
```

**Response:**
```json
{
  "totalMonthlyConsumption": 324.5,
  "breakdown": [
    {"appliance": "Ceiling Fan", "kwh": 54.0, "method": "PHYSICS"},
    {"appliance": "Refrigerator", "kwh": 75.2, "method": "DEEP_LEARNING"}
  ],
  "processingTime": "0.23s"
}
```

---

#### 3. **Calculate KSEB Bill**

**POST** `/calculate-bill`

Calculates electricity bill using Kerala State Electricity Board (KSEB) tariff slabs.

**Request Body:**
```json
{
  "totalConsumption": 324.5,
  "connection_type": "LT-1A (Domestic)"
}
```

**Response:**
```json
{
  "totalBill": 2145.60,
  "slabBreakdown": [
    {"slab": "0-50", "units": 50, "rate": 3.10, "amount": 155.00},
    {"slab": "51-100", "units": 50, "rate": 4.20, "amount": 210.00},
    {"slab": "101-200", "units": 100, "rate": 6.10, "amount": 610.00}
  ],
  "fixedCharge": 45.00
}
```

---

#### 4. **Simulate Savings**

**POST** `/simulate-savings`

Runs "What-If" scenarios for appliance upgrades or usage changes.

**Request Body:**
```json
{
  "current": {"appliance": "Air Conditioner", "starRating": 3, "hoursPerDay": 8},
  "proposed": {"starRating": 5, "hoursPerDay": 6}
}
```

**Response:**
```json
{
  "currentConsumption": 360.0,
  "proposedConsumption": 198.5,
  "monthlySavings": 161.5,
  "yearlySavings": 1938.0,
  "recommendation": "Upgrading to 5⭐ AC and reducing usage by 2 hours saves ₹1,938/year"
}
```

---

### Additional Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/` | Root health check |
| GET | `/health` | Detailed system status |
| GET | `/docs` | Interactive Swagger UI |
| GET | `/redoc` | ReDoc API documentation |

> **📚 Complete API Reference**: See [API.md](API.md) for detailed documentation of all endpoints, request/response schemas, and code examples.

---

## 📁 Project Structure

```
SmartWatt-Backend/
├── main.py                      # FastAPI application entry point
├── predictor.py                 # Unified prediction orchestrator
├── physics_engine.py            # Pure physics calculations
├── anomaly_engine.py            # Outlier detection system
├── kseb_tariff.py              # KSEB billing logic
├── requirements.txt             # Python dependencies
├── Dockerfile                   # Container configuration
├── render.yaml                  # Render deployment config
├── .env.example                 # Environment variables template
│
├── routers/                     # API route handlers
│   └── appliances.py           # Appliance endpoints
│
├── services/                    # Business logic layer
│   ├── prediction_service.py   # Prediction orchestration
│   └── billing_service.py      # Bill calculation
│
├── models/                      # Trained ML models (.keras files)
│   ├── ac_model.keras
│   ├── fridge_model.keras
│   └── ...
│
├── schemas.py                   # Pydantic data validation models
├── physics_constants.py         # Physical constants & formulas
├── tests/                       # Unit and integration tests
└── Documents/                   # Additional documentation
```

---

## 🔐 Environment Variables

Create a `.env` file in the root directory:

```bash
# Server Configuration
PORT=8000
HOST=0.0.0.0
ENVIRONMENT=development  # development | production

# CORS Settings (Frontend URLs)
ALLOWED_ORIGINS=http://localhost:3000,https://smartwatt-frontend.vercel.app

# Supabase (Optional - for cloud training data)
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_KEY=your-anon-key

# Logging
LOG_LEVEL=INFO  # DEBUG | INFO | WARNING | ERROR
```

> **Note**: The `.env.example` file contains all available configuration options.

---

## 🚀 Deployment

### Docker Deployment

```bash
# Build image
docker build -t smartwatt-backend .

# Run container
docker run -d -p 8000:8000 --env-file .env smartwatt-backend
```

### Render Deployment

1. Push your code to GitHub
2. Go to [Render Dashboard](https://dashboard.render.com/)
3. Click **New +** → **Web Service**
4. Connect your repository
5. Render auto-detects `render.yaml` configuration
6. Add environment variables in Render dashboard
7. Click **Create Web Service**

### Railway Deployment

```bash
# Install Railway CLI
npm i -g @railway/cli

# Login and deploy
railway login
railway init
railway up
```

---

## 🧪 Testing

### Run Unit Tests

```bash
# Install test dependencies
pip install -r requirements-test.txt

# Run all tests
pytest

# Run with coverage
pytest --cov=. --cov-report=html
```

### Manual API Testing

Use the interactive Swagger UI at `http://localhost:8000/docs` or test with curl:

```bash
# Test health endpoint
curl http://localhost:8000/health

# Test prediction
curl -X POST http://localhost:8000/predict-appliance \
  -H "Content-Type: application/json" \
  -d '{"name": "Ceiling Fan", "power": 75, "hoursPerDay": 8}'
```

---

## 🏛️ Architecture

For detailed system architecture, data flow diagrams, and component interactions, see [ARCHITECTURE.md](ARCHITECTURE.md).

**Key Topics:**
- Hybrid AI decision routing
- Deep Learning vs Physics Engine
- Service layer organization
- Data flow and request lifecycle
- Deployment architecture
- Performance optimizations

---

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Quick Contribution Steps

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 📜 Changelog

### v0.2.0-beta (Current - February 2026)
- ✨ **New Feature**: Smart Feature Inference for missing appliance data
- 🐛 **Bug Fix**: Corrected Refrigerator Physics Engine star rating calculations
- ⚡ **Optimization**: Parallel execution for `/predict-all` endpoint (3x faster)
- 📚 **Documentation**: Complete API documentation with examples

### v0.1.0-beta (January 2026)
- 🎉 Initial release with Hybrid AI Architecture
- 🔌 Support for 22+ appliance types with trained models
- 💰 KSEB tariff integration with dynamic slab calculation
- 🧠 Anomaly detection for unusual consumption patterns
- 📊 Self-learning pipeline for continuous improvement

---

<div align="center">

**Made with ❤️ by the SmartWatt AI Team**

[Report Bug](https://github.com/JishnuPG-tech/SmartWatt-Backend/issues) • [Request Feature](https://github.com/JishnuPG-tech/SmartWatt-Backend/issues) • [Documentation](#-api-documentation)

</div>
