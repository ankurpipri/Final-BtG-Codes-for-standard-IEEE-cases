clc;
clear all;
close all;
clear global sys_g;
global       sys_g;
fprintf('Hello, This code simulates the Buildings-to-Grid Integration framework simulations on \nfour standard IEEE networks. Please refer the publication[1] mentioned in the readme file.');
fprintf('\n \nPress any key to continue...\n');
pause;
fprintf('\nPress 1 for case 9 network');
fprintf('\nPress 2 for case 14 network ');
fprintf('\nPress 3 for case 30 network ');
fprintf('\nPress 4 for case 57 network\n');
control_case=input('Please enter the case file to be Simulated  ');
current_directory=pwd;
if(control_case==1)
    netw=9;
% Adding the required folders to the current Matlab path
    cd('case_9_files'); 
    matfiles_directory=pwd;
    cd(current_directory); 
    addpath(matfiles_directory); 
% Required big .m files are reconstructed for the code.
    load('case_9_sys_g1');
    load('case_9_sys_g_umisc1');load('case_9_sys_g_umisc2');load('case_9_sys_g_umisc3'); 
    load('case_9_sys_g_wg1');load('case_9_sys_g_wg2');load('case_9_sys_g_wg3'); 
    sys_g=sys_g1;
    sys_g.umisc=[sys_g_umisc1,sys_g_umisc2,sys_g_umisc3];
    sys_g.w_g=[sys_g_wg1,sys_g_wg2,sys_g_wg3];
    clear sys_g1 sys_g_umisc1 sys_g_umisc2 sys_g_umisc3 sys_g_wg1 sys_g_wg2 sys_g_wg3;
elseif(control_case==2)
    netw=14;
% Adding the required folders to the current Matlab path
    cd('case_14_files'); 
    matfiles_directory=pwd;
    cd(current_directory); 
    addpath(matfiles_directory); 
% Required big .m files are reconstructed for the code.
    load('case_14_sys_g1');
    load('case_14_sys_g_umisc1');load('case_14_sys_g_umisc2');load('case_14_sys_g_umisc3'); 
    load('case_14_sys_g_wg1');load('case_14_sys_g_wg2');load('case_14_sys_g_wg3'); 
    sys_g=sys_g1;
    sys_g.umisc=[sys_g_umisc1,sys_g_umisc2,sys_g_umisc3];
    sys_g.w_g=[sys_g_wg1,sys_g_wg2,sys_g_wg3];
    clear sys_g1 sys_g_umisc1 sys_g_umisc2 sys_g_umisc3 sys_g_wg1 sys_g_wg2 sys_g_wg3;
elseif(control_case==3)
    netw=30;
% Adding the required folders to the current Matlab path
    cd('case_30_files'); 
    matfiles_directory=pwd;
    cd(current_directory); 
    addpath(matfiles_directory); 
% Required big .m files are reconstructed for the code.
    load('case_30_sys_g1');
    load('case_30_sys_g_umisc1');load('case_30_sys_g_umisc2');load('case_30_sys_g_umisc3'); 
    load('case_30_sys_g_wg1');load('case_30_sys_g_wg2');load('case_30_sys_g_wg3'); 
    sys_g=sys_g1;
    sys_g.umisc=[sys_g_umisc1,sys_g_umisc2,sys_g_umisc3];
    sys_g.w_g=[sys_g_wg1,sys_g_wg2,sys_g_wg3];
    clear sys_g1 sys_g_umisc1 sys_g_umisc2 sys_g_umisc3 sys_g_wg1 sys_g_wg2 sys_g_wg3;
elseif(control_case==4)
    netw=57;
% Adding the required folders to the current Matlab path
    cd('case_57_files'); 
    matfiles_directory=pwd;
    cd(current_directory); 
    addpath(matfiles_directory); 
% Required big .m files are reconstructed for the code.
    load('case_57_sys_g1');
    load('case_57_sys_g_umisc1');load('case_57_sys_g_umisc2');load('case_57_sys_g_umisc3'); 
    load('case_57_sys_g_wg1');load('case_57_sys_g_wg2');load('case_57_sys_g_wg3'); 
    sys_g=sys_g1;
    sys_g.umisc=[sys_g_umisc1,sys_g_umisc2,sys_g_umisc3];
    sys_g.w_g=[sys_g_wg1,sys_g_wg2,sys_g_wg3];
    clear sys_g1 sys_g_umisc1 sys_g_umisc2 sys_g_umisc3 sys_g_wg1 sys_g_wg2 sys_g_wg3;
% if(control_case~=1 && control_case~=2 && control_case~=3 && control_case~=4)
else
    fprintf('\n Sorry !! Bad input selected.\nExiting.....\n');
    pause(2);
    return;
end
clc;
disp(['You have selected to simulate the BtG code on IEEE ',num2str(netw),' bus network']);
disp('Folder containing required matfiles was sucessfully added to the path'); 
fprintf('\nPress 1 for Scenario 1 - Grid only MPC (Bang Bang control inputs from buildings)');
fprintf('\nPress 2 for Scenario 2 - Decoupled MPC (Grid only MPC takes MPC inputs from buildings)');
fprintf('\nPress 3 for Scenario 3 - BtG Integration MPC\n');
control_scenario=input('Please enter the Scenario which is to be Simulated  ');

if(control_scenario==1)
    run main_code_gonly_scenario_1
elseif(control_scenario==2)
    run main_code_gonly_scenario_2
elseif(control_scenario==3)
    run main_code
else
    fprintf('\n Sorry !! Bad input selected.\nExiting.....\n');
    pause(2);
    return;
end
