# GenAdapt --- Genetic-programming-based self-Adaptation approach for resolving congestion in IoT networks
GenAdapt is a novel self-adaptation approach that resolves congestion in IoT systems which uses software-defined network architecture. GenAdapt is based on genetic programming. Using the status of network as input, GenAdapt searches for a formula which resolves congestion with the smallest cost and delay. Once the formula is found, the topology of network is updated by changing the weights of links and flows are rerouted.

# Content description
- GenAdapt: contains GenAdapt and the software we had developed for this project
- Experiments: contains the scripts necessary to replicate our experiments
- Results: contains the results of our experiments

## Prerequisite
- ONOS: (https://onosproject.org/)
  * Version: 1.15.0
  * Installation: (https://wiki.onosproject.org/display/ONOS/Getting+the+ONOS+core+source+code+using+git+and+Gerrit)
- Mininet: (http://mininet.org/)
  * Version: 2.3.0
  * Installation: http://mininet.org/download/
- D-ITG: (http://www.grid.unina.it/software/ITG/)
   * Version: 2.8.1
   * Installation: (http://www.grid.unina.it/software/ITG/download.php)

## Installation instructions
- Step 1. Run ONOS
- Step 2. Compile, install and activate GenAdapt
  * Compilation: Maven
  * Preinstall: install pshecj.jar into the local repository
  * Installation and activation: (https://wiki.onosproject.org/display/ONOS/Managing+ONOS+applications)
- Step 3. Run Mininet scripts (and configure ONOS network topology for EMC network)
- Step 4. Run D-ITG scripts
- Step 4.1. Run receiver scripts
- Step 4.2. Run sender scripts

## Virtual Machine
https://drive.google.com/file/d/1rbRZYqj3YH_yjyT9GE-K9XTFl9Xmbix4/view

## Licensing

Aristeo is licensed under the GPLv2 or later license.


<!--
**GenAdapt/GenAdapt** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
