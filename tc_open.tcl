open_project [pwd]/Automation/mypro.xpr
update_compile_order -fileset sources_1

add_files -norecurse [pwd]/Modules/[lindex $argv 0] 


#add_files -norecurse [pwd]/Modules/top_CLA16.v
#add_files -norecurse [pwd]/Modules/top_CLA32.v
#add_files -norecurse [pwd]/Modules/top_CLA64.v
#add_files -norecurse [pwd]/Modules/PGGen.v 


update_compile_order -fileset sources_1 
close_project
