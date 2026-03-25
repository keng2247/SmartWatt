# Contributing

Thank you for contributing to SmartWatt.

## Prerequisites

- Python 3.10+ for backend work.
- Node.js 18+ for frontend work.
- Git configured with your identity.

## Workflow

1. Create a feature branch from `main`.
2. Make focused, reviewable commits.
3. Run relevant tests before opening a pull request.
4. Submit a pull request with clear scope, motivation, and verification notes.

## Code Quality Expectations

- Keep backend and frontend contracts consistent.
- Use descriptive names for routes, schema fields, and state keys.
- Avoid unrelated refactors in functional pull requests.
- Include documentation updates when behavior changes.

## Suggested Validation

Backend:

```bash
cd Backend
pytest tests/unit
pytest tests/integration
```

Frontend:

```bash
cd Frontend
npm run lint
npm run build
```

## Pull Request Checklist

- Change is scoped and explained.
- Local validation is complete.
- Secrets are not committed.
- Documentation has been updated where needed.
