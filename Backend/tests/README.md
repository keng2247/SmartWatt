# Backend Tests Organization

This directory contains all test scripts organized by purpose and scope.

## Directory Structure

### 📦 `/unit`
 Unit Tests  - Test individual components and functions in isolation
- `test_fan_type.py` - Fan type classification tests
- `test_dynamic_range.py` - Range resolution logic tests
- `test_patterns_and_ranges.py` - Usage pattern tests
- `test_all_ranges.py` - Comprehensive range value tests
- `reproduce_500.py` - Error reproduction tests
- `test_logic.py` - Business logic unit tests
- `test_anomaly.py` - Anomaly detection unit tests
- `test_edge_cases.py` - Edge case handling tests

### 🔗 `/integration`
 Integration Tests  - Test interaction between components
- `test_field_updates.py` - Field transformation integration
- `test_backend_reception.py` - Backend data reception tests
- `test_all_user_inputs.py` - User input processing tests
- `test_api.py` - API endpoint integration tests
- `simulate_user_inputs.py` - User input simulation tests

### 🌐 `/e2e`
 End-to-End Tests  - Test complete workflows from start to finish
- `test_complete_flow.py` - Full prediction pipeline test
- `test_e2e_ac_age.py` - AC age handling E2E test
- `test_ac_age_flow.py` - AC age data flow test
- `test_verify_hybrid.py` - Hybrid AI+Physics system verification

### 🔍 `/system`
 System Tests  - Test entire system behavior and performance
- `run_backend_tests.py` - Main test runner
- `run_full_qa.py` - Complete QA test suite
- `validate_complete_system.py` - Full system validation

### ✅ `/validation`
 Validation Tests  - Verify data quality, model accuracy, and system correctness
- `validate_kerala_dataset.py` - Dataset validation
- `validate_location_type.py` - Location type validation
- `validate_ui_training_mapping.py` - UI-Training field mapping validation
- `verify_no_leakage.py` - Data leakage detection
- `verify_training_data.py` - Training data verification
- `final_alignment_check.py` - Final alignment verification
- `test_auto_train.py` - Auto-training validation
- `verify_all_overrides.py` - Override behavior verification
- `verify_tariff_integration.py` - Tariff calculation validation

### 📊 `/analysis`
 Analysis Scripts  - Debug, analyze, and compare system behavior
- `analyze_kerala_context.py` - Kerala-specific data analysis
- `analyze_synthetic_accuracy.py` - Synthetic data accuracy analysis
- `analyze_tv.py` - TV consumption analysis
- `analyze_ui_training_alignment.py` - UI-training alignment analysis
- `check_columns.py` - Column structure verification
- `check_training_columns.py` - Training column checks
- `check_ui_backend_mapping.py` - UI-backend field mapping
- `check_ui_training_simple.py` - Simple UI-training checks
- `check_unknowns.py` - Unknown value detection
- `compare_ui_backend_fields.py` - Field comparison analysis
- `debug_data.py` - Data debugging utilities
- `debug_env.py` - Environment debugging
- `debug_json.py` - JSON data debugging

## Running Tests

### Run All Tests
```bash
python Tests/system/run_backend_tests.py
```

### Run Specific Category
```bash
# Unit tests
pytest Tests/unit/

# Integration tests
pytest Tests/integration/

# E2E tests
python Tests/e2e/test_complete_flow.py

# Validation tests
python Tests/validation/validate_complete_system.py
```

### Run Individual Test
```bash
python Tests/unit/test_fan_type.py
```

## Test Development Guidelines

1.  Unit Tests : Should test a single function/class, mock external dependencies
2.  Integration Tests : Test multiple components working together
3.  E2E Tests : Test complete user workflows without mocking
4.  System Tests : Test entire system performance and stability
5.  Validation Tests : Ensure data quality and model accuracy
6.  Analysis Scripts : For debugging and system understanding
