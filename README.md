# cuddly-journey

## Steps to Run the Project

1. **Build Docker Image**:
    ```sh
    docker build . -t snark
    ```

2. **Run Docker Container**:
    ```sh
    docker run -it -v .:/app snark bash
    ```

3. **Execute Python Test**:
    ```sh
    python test.py
    ```

4. **Check Witness File**:
    ```sh
    snarkjs wtns check
    ```