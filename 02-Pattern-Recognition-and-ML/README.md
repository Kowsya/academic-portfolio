# Comparative Analysis of Variations of the K-Means Clustering Algorithm
**Subject:** Pattern Recognition and Machine Learning

## Summary
Implements and compares five K-Means variants — K-Means++, Mini-Batch K-Means, K-Medoids, Fuzzy C-Means, and Kernel K-Means — across several datasets (synthetic customer segmentation, retail transactions, Iris, Breast Cancer, and a small genomic expression sample). Evaluated using Silhouette Score, inertia, Davies-Bouldin Index, and runtime. Mini-Batch K-Means offered the best quality-to-speed trade-off, Fuzzy C-Means was useful for overlapping clusters, K-Medoids handled outliers better, and Kernel K-Means captured non-linear boundaries at a higher computational cost.

## Contents
- `report.pdf` — full project report
- `presentation.pdf` — presentation slides
- `notebook.ipynb` — Colab notebook with implementation and experiments

## Tools & Techniques
Python, Scikit-learn, K-Means variants, clustering evaluation metrics (Silhouette, Davies-Bouldin)
