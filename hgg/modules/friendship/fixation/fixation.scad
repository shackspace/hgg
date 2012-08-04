module centerplate(){
difference(){
	//main block
	cube([10,100,30]);
	//einschub fuer PCB
	translate([4,-1,8]){
		cube([9,110,2]);
	}
	//port0
	translate([-1,20,17]){
		cube([18,2,20]);
	}
	//port1
	translate([-1,40,17]){
		cube([18,2,20]);
	}
	//port2
	translate([-1,60,17]){
		cube([18,2,20]);
	}
	//port3
	translate([-1,80,17]){
		cube([18,2,20]);
	}
}
}

//uncomment this to generate a better printable STL
//rotate([0,270,0]){
	centerplate();
//}