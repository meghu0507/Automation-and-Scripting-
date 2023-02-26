open_project [pwd]/Automation/mypro.xpr
set_property source_mgmt_mode None [current_project]
update_compile_order -fileset sources_1
	
set_property top [string trimright [lindex $argv 0] ".v"] [current_fileset]
##puts $argv
set_property source_mgmt_mode None [current_project]
update_compile_order -fileset sources_1

reset_run synth_1
launch_runs synth_1 -jobs 12

reset_run impl_1
launch_runs impl_1 -jobs 12

set x 0
while {$x !=1 } {
	if {[catch {open_run impl_1}]} { 
		set x 0 
		continue } \
	else { set x 1 }
}

report_power > Impl/[string trimright [lindex $argv 0] ".v"]/power.txt
report_timing > Impl/[string trimright [lindex $argv 0] ".v"]/timing.txt
report_utilization > Impl/[string trimright [lindex $argv 0] ".v"]/utilization.txt

close_project
