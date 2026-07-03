# ADAPT-SHIELD: An End-to-End MLOps Pipeline for Network Intrusion Detection
**Subject:** MLOps

## Summary
A fully operational end-to-end MLOps pipeline for network intrusion detection, integrating data ingestion, validation, feature engineering, model training, hyperparameter tuning, experiment tracking, a model registry, REST API inference, containerization, CI/CD, drift detection, and cloud monitoring. Trained on the CIC-IDS-2017 dataset (2.3M+ network traffic records across 8 attack classes), comparing Random Forest and XGBoost — XGBoost was selected for production with a macro-average F1-score of 0.9018. The model is served through a FastAPI REST endpoint, containerized with Docker Compose, and backed by a GitHub Actions CI/CD pipeline, Kolmogorov–Smirnov drift detection, and AWS CloudWatch monitoring.

## Contents
- `report.pdf` — full project report
- `presentation.pptx` — presentation slides
- Full source code lives in a separate repository: **[github.com/Kowsya/adapt-shield](https://github.com/Kowsya/adapt-shield)** — includes the FastAPI service, training pipeline, Docker setup, CI/CD workflow, and monitoring scripts.

## Tools & Techniques
Python, Random Forest, XGBoost, FastAPI, Docker, GitHub Actions (CI/CD), MLflow, AWS CloudWatch
