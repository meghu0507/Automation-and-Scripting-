# Automation-and-Scripting- 

 //Introduction 
 
The project has been titled as "Automation and Scripting", because, the procedure makes the things automated using the Script. 
VLSI is the emerging industry, and on every day basis, the companies come with a new design. 
What if, the testing and verification of these designs takes too much time depending on the design complexity. 
Imagine a situtation when you have thousands of files, and you want to generate the power, utilization, delay reports etc. 
So, we cannot go on testing each design, generating the reports and then, switching to the other design, and again generate reports, and so on. 
It will take you almost a week or so to test these designs one by one, manually. 
What if, you have some method to make this thing automated, so that, your time could be saved. 


//About the project 
The project uses Vivado for making the designs to be implemented and report generation(top_rca, top_CLA8, top_8_3_structure etc) 
The tcl script tc_add.tcl, is used to create the project mypro. 
tc_open.tcl is used to open the project and add the design files to it. 
tc_run.tcl is used to run the various design files, systhesize them and produce the implemented reports. 
mydemo.ipynb is used for creating various directories, and copying the files from one directory to the other. 
finalauto.ipynb is used to create the project, add files to it and run the files, by interacting with the tcl script files. 
forreports.ipynb is used to extract the final results in .csv format, from the .txt reports generated after the implementation
