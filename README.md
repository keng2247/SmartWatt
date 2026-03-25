# SmartWatt

SmartWatt is a full-stack residential energy estimation platform for Kerala households. The project combines a machine learning inference layer with physics-based constraints to produce appliance-level consumption estimates, bill projections, and usage insights.

## About

SmartWatt is designed to provide practical, software-only household energy intelligence without requiring additional IoT hardware. The platform estimates appliance-wise consumption from user-provided inputs, reconciles predictions with physics constraints, and produces transparent reports aligned with Kerala tariff structures. It is intended for student research, engineering validation, and real-world decision support for electricity cost optimization.

## Repository Structure

- `Backend/`: FastAPI-based inference and billing service.
- `Frontend/`: Next.js-based web application and dashboard.
- `start_backend.bat`: convenience launcher for backend development.
- `Run.txt`: minimal local run reference.

## Key Features

- Hybrid AI and deterministic physics pipeline.
- Appliance-level and batch prediction endpoints.
- KSEB slab-aware bill calculation.
- Scenario simulation for potential savings.
- Dashboard reporting and persisted assessment history.

## Quick Start

1. Start backend:

```bash
cd Backend
python -m uvicorn main:app --reload --port 8000
```

2. Start frontend in a second terminal:

```bash
cd Frontend
npm install
npm run dev
```

3. Open the application:

- Frontend: http://localhost:3000
- Backend API: http://localhost:8000
- Backend docs: http://localhost:8000/docs

## Configuration

- Keep local secrets only in `.env` or `.env.local` files.
- Use `.env.example` files as templates for required keys.

## Development Standards

- TypeScript and Python code should remain lint- and test-friendly.
- API schema and frontend field mappings should be updated together.
- Documentation changes should accompany architectural or interface changes.

## License

This repository is licensed under the MIT License. See `LICENSE`.
