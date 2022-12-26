# Learning Qiskit

## Notes <sup>[1]</sup>

### Getting started <sup>[2]</sup> <sup>[3]</sup>

#### Install

```bash
docker build . -t qiskit-notebook
```

*Build the Jupyter Notebook image as defined in* [`Dockerfile`](./Dockerfile). *Then, tags (*`-t`*) it with the name 'qiskit-notebook'. Building the image will automatically install all of the dependencies listed in* [`requirements.txt`](./requirements.txt).

#### Start

```bash
docker run -p 8888:8888 --name notebook --env-file .env --rm -it -v "$(pwd)/notebook:/home/jovyan/work" qiskit-notebook
```

*The above command runs the docker image previously created. It maps (*`-p`*) the container port* `8888` *to* `8888` *and names the container 'notebook'. It will also run the image with an integrated terminal (*`-it`*) and mount a volume (*`-v`*) from* `./notebook` *to the* `work` *directory once opened in the Jupyter web editor. It will also conveniently remove (*`--rm`*) the container after you* `CTRL+C` *to kill the Jupyter server.*

### Learning

*Most of the learning/notes is within the Jupyter notebook.*

- [Qiskit docs][4]

- Quantum Computing principles <sup>[5]</sup> <sup>[6]</sup> <sup>[9]</sup> <sup>[10]</sup> <sup>[11]</sup> <sup>[12]</sup> <sup>[13]</sup>

- Linear Algebra <sup>[7]</sup> <sup>[8]</sup>

- Qiskit programming <sup>[14]<sup>

<!-- ### References -->

[1]: <https://qiskit.org/textbook> "Qiskit Textbook"

[2]: <https://developers.refinitiv.com/en/article-catalog/article/how-to-set-up-and-run-data-science-development-environment-with-> "How to set up and run 
Python Data Science Development Environment with Jupyter on Docker"

[3]: <https://docs.docker.com/engine/reference> "Docker Docs"

[4]: <https://qiskit.org/documentation/> "Qiskit docs"

[5]: <https://en.wikipedia.org/wiki/Qubit> "Understanding qubits"

[6]: <https://en.wikipedia.org/wiki/Born_rule> "The Born rule"

[7]: <https://en.wikipedia.org/wiki/Pauli_matrices> "Pauli matrices"

[8]: <https://math.mit.edu/~gs/linearalgebra/linearalgebra5_6-1.pdf> "Eigenvalues and eigenvectors"

[9]: <https://raw.githubusercontent.com/qiskit-community/qiskit-textbook/main/content/ch-states/supplements/single-gates-cheatsheet.pdf> "Single-Qubit Quantum Gate Cheet-sheet"

[10]: <https://www.quantum-inspire.com/kbase/hadamard/> "Hadamard Gate"

[11]: <https://quantum-computing.ibm.com/composer/docs/iqx/guide/introducing-qubit-phase> "Quantum Phase"

[12]: <https://physics.stackexchange.com/questions/261664/how-to-measure-relative-phases-of-quantum-states> "Relative Phase"

[13]: <https://ocw.tudelft.nl/course-lectures/3-2-2-phase-kickback/> "Phase kickback"

[14]: <https://qiskit.org/documentation/stubs/qiskit.circuit.QuantumCircuit.draw.html?highlight=draw#qiskit.circuit.QuantumCircuit.draw> "QuantumCircuit.draw"
