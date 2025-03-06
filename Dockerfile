# Gunakan Ubuntu 24.04 sebagai base image
FROM ubuntu:24.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-venv \
    vim git npm && \
    rm -rf /var/lib/apt/lists/*

# Buat direktori kerja
WORKDIR /app

# Buat virtual environment dan instal dependencies
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Upgrade pip dan install pysnark
RUN pip install --upgrade pip && \
    pip install git+https://github.com/meilof/pysnark

# Install snarkjs secara global
RUN npm install -g snarkjs

# Set environment variable
ENV PYSNARK_BACKEND=snarkjs

# Copy aplikasi ke dalam container (jika diperlukan)
# COPY . /app

# Jalankan container dengan virtual environment
CMD ["/bin/bash"]
