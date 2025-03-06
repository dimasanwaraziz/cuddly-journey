# cuddly-journey

## Steps to Run the Project

1. **Build Docker Image**:
    ```sh
    docker build . -t snark
    ```

2. **Run Docker Container**:
    ```sh
    ### For Linux and macOS:
    ```sh
    docker run -it -v $(pwd):/app snark bash
    ```

    ### For Windows:
    ```sh
    docker run -it -v %cd%:/app snark bash
    ```
    ```

3. **Execute Python Test**:
    ```sh
    python test.py
    ```

4. **Check Witness File**:
    ```sh
    snarkjs wtns check
    ```