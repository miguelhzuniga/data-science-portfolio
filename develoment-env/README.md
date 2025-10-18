# Development Environment Setup

This portfolio was developed on **Windows 11 Pro** using **Visual Studio Code** with a **WSL (Ubuntu)** environment.  

Within WSL, the following components are configured:

- **Git** — used for version control and integration with **GitHub** to enable CI/CD workflows. All development is performed in the `dev` branch to test and validate changes before merging them into the `main` branch.

- **Miniconda** — manages packages and environments across multiple programming languages, primarily **Python** for data science workflows. It simplifies reproducing the environment configuration using the `portfolio_environment.yml` file, which creates a **"portfolio"** environment with all the project dependencies.  

  **Usage:**
  ```bash
  conda env create -f portfolio_environment.yml
  ```

- **NVIDIA Data Science Tools** — these libraries are installed to accelerate the data science workflow by leveraging GPU computing.  

  - **cuDF** — an open-source CUDA-X™ Data Science library that provides GPU-accelerated DataFrame operations for **Pandas**, **Polars**, and **Apache Spark**, offering significant performance improvements without requiring code changes.  
  - **cuML** — part of the RAPIDS suite, this library accelerates machine learning algorithms such as **scikit-learn**, **UMAP**, and **HDBSCAN** on GPUs, drastically reducing training and inference times.