# Learning Qiskit

## Notes <sup>[1]</sup>

### Getting started <sup>[2]</sup> <sup>[3]</sup>

#### Install

```bash
docker build . -t qiskit-notebook
```

#### Start

```bash
docker run -p 8888:8888 --name notebook --env-file .env --rm -it -v "$(pwd)/notebook:/home/jovyan/work" qiskit-notebook
```

### Introduction

*Most of the learning/notes is within the Jupyter notebook.*

[Qiskit docs][4]

Quantum Computing principles <sup>[5]</sup> <sup>[6]</sup> <sup>[9]</sup>

Linear Algebra <sup>[7]</sup> <sup>[8]</sup>

---

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
