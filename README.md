# Learning Qiskit

## Table of Contents

- [Learning Qiskit](#learning-qiskit)
  - [Table of Contents](#table-of-contents)
  - [Notes 1](#notes-1)
    - [Getting started 2 3](#getting-started-2-3)
      - [Install](#install)
      - [Start](#start)
    - [Learning](#learning)

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

- Quantum Computing principles <sup>[5]</sup> <sup>[6]</sup> <sup>[9]</sup> <sup>[10]</sup> <sup>[11]</sup> <sup>[12]</sup> <sup>[13]</sup> <sup>[17]</sup> <sup>[18]</sup> <sup>[20]</sup> <sup>[24]</sup> <sup>[25]</sup>

- General Mathematics <sup>[7]</sup> <sup>[8]</sup> <sup>[16]</sup> <sup>[19]</sup> <sup>[21]</sup> <sup>[23]</sup>

- Qiskit Programming <sup>[14]</sup> <sup>[15]</sup>

- Quantum Applications (algorithms / protocols) <sup>[22]</sup> <sup>[26]</sup>

<!-- References -->

[1]: <https://qiskit.org/textbook> "Qiskit Textbook"

[2]: <https://developers.refinitiv.com/en/article-catalog/article/how-to-set-up-and-run-data-science-development-environment-with-> "How to set up and run Python Data Science Development Environment with Jupyter on Docker"

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

[15]: <https://bibis.ir/science-books/programming/2022/Qiskit%20Pocket%20Guide%20Fourth%20Early%20Release%20by%20James%20Weaver_bibis.ir.pdf> "Qiskit Pocket Guide"

[16]: <https://en.wikipedia.org/wiki/Euler%27s_formula> "Euler's formula"

[17]: <https://en.wikipedia.org/wiki/Quantum_logic_gate#Parallel_gates> "Understanding Parallel gates"

[18]: <https://en.wikipedia.org/wiki/List_of_quantum_logic_gates> "List of quantum gates"

[19]: <https://en.wikipedia.org/wiki/Matrix_exponential#Computing_the_matrix_exponential> "Matrix exponentiation"

[20]: <https://www.quantum-inspire.com/kbase/rotation-operators> "Rotation operators"

[21]: <https://en.wikipedia.org/wiki/Injective_function> "Injective functions"

[22]: <https://en.wikipedia.org/wiki/Deutsch%E2%80%93Jozsa_algorithm> "The Deutsch-Jozsa algorithm"

[23]: <https://en.wikipedia.org/wiki/Bra%E2%80%93ket_notation> "Dirac Notation"

[24]: <https://en.wikipedia.org/wiki/Hadamard_transform> "Hadamard transform"

[25]: <http://einsteinrelativelyeasy.com/index.php/quantum-mechanics/154-hadamard-gate-on-multiple-qubits?tmpl=component&print=1> "Parrallel hadamard transform"

[26]: <http://einsteinrelativelyeasy.com/index.php/quantum-mechanics/168-the-deutsch-jozsa-algorithm?tmpl=component&print=1> "The Deutsch-Jozsa algorithm"
