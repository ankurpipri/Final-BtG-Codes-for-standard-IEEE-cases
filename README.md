# Final-BtG-Codes (for standard IEEE cases)

This repository contains the required MATLAB codes for the following research papers:

1. A.F.Taha, N.Gatsis, B. Dong, A.Pipri, Z.Li, "Buildings-to-Grid Integration Framework" submitted to IEEE Trans. on Smart Grids, submitted March 2017.

2. Z.Li, A.Pipri, B.Dong, N.Gatsis, A.F.Taha, N.Yu, "Modelling, Simulation and Control of Smart and Connected Communities" submitted to International Building Performance Simulation Association , Building Simulation Conference 2017.

If you are using any part of this material in your research, please cite the above references.

The scripts in this folder requires MATPOWER data and functions to be executed and it uses  CPLEX to solve optimiztion problems. Therefore, the user is requested to add MATPOWER folder into the MATLAB's current path and to download and install CPLEX optimization toolbox before using these codes.
There are three different scenarios that can be executed using these codes.  For more details please refer to the research paper [1] mentioned above.

These scripts are written in order to simulate the case files with parameters as in [1]. The user can choose the case file and scenario from the available options.

The grid network and building parameters can also be changed as required. For this user is directed to the the repository named 'Final-BtG-Codes (General Version)', also it is requested to study publication [1] thoroughly  before making any changes. 

## Steps to execute the codes:

1). Run the m file named 'User_file_to_run.m'.

2). Please select the case file to be Simulated from the options available.

3). Select the scenario which is to be simulated, for details please refer to the paper [1] mentioned above. The BtG-GMPC scenario is the third one.
