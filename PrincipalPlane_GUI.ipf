#pragma rtGlobals=3		// Use modern global access method and strict wave access.

Window PrincipalPlane_GUI() : Panel
	PauseUpdate; Silent 1		// building window...
	NewPanel /W=(1508,69,1881,821)/K=1			//Put the /K flag to 1 so that the window can't be changed by clicking "replaced"
	ShowTools/A
	Slider slider0_tab0,pos={20,170},size={330,52},proc=Plane_Slider
	Slider slider0_tab0,limits={0,999,1},value= 0,vert= 0,ticks= 10
	PopupMenu PTYP_Menu_tab0,pos={160,135},size={146,21},bodyWidth=72,proc=PTYP_PopMenu,title="Slice Direction:"
	PopupMenu PTYP_Menu_tab0,mode=1,popvalue="XY",value= #"\"XY;XZ;YZ\""
	SetVariable setvar0_tab0,pos={60,137},size={84,16},bodyWidth=50,proc=SetPlaneNum,title="Plane:"
	SetVariable setvar0_tab0,value= _NUM:0
	PopupMenu popup0_tab0,pos={32,275},size={200,21},proc=ColourScale
	PopupMenu popup0_tab0,mode=2,value= #"\"*COLORTABLEPOP*\""
	PopupMenu popup0_tab1,pos={32,275},size={200,21},proc=ColourScale
	PopupMenu popup0_tab1,mode=2,value= #"\"*COLORTABLEPOP*\""
	SetVariable setvar1_tab0,pos={35,340},size={155,16},proc=SetHighColour,title="Last Z Colour:"
	SetVariable setvar1_tab0,value= _NUM:3000
	SetVariable setvar2_tab0,pos={35,495},size={155,16},proc=SetLowColour,title="First Z Colour:"
	SetVariable setvar2_tab0,value= _NUM:0
	SetVariable setvar1_tab1,pos={35,340},size={155,16},proc=SetHighColour,title="Last Z Colour:"
	SetVariable setvar1_tab1,value= _NUM:3000
	SetVariable setvar2_tab1,pos={35,495},size={155,16},proc=SetLowColour,title="First Z Colour:"
	SetVariable setvar2_tab1,value= _NUM:0
	Slider slider1_tab0,pos={20,370},size={330,52},proc=ColourScaleSlider_High
	Slider slider1_tab0,limits={0,10000,1},value= 3000,vert= 0,ticks= 10
	Slider slider2_tab0,pos={20,525},size={330,52},proc=ColourScaleSlider_Low
	Slider slider2_tab0,limits={0,10000,1},value= 0,vert= 0,ticks= 10
	Slider slider1_tab1,pos={20,370},size={330,52},proc=ColourScaleSlider_High
	Slider slider1_tab1,limits={0,10000,1},value= 3000,vert= 0,ticks= 10
	Slider slider2_tab1,pos={20,525},size={330,52},proc=ColourScaleSlider_Low
	Slider slider2_tab1,limits={0,10000,1},value= 0,vert= 0,ticks= 10
	CheckBox check0_tab0,pos={248,278},size={91,14},proc=ColourReverse,title="Reverse Colour"
	CheckBox check0_tab0,value= 1,side= 1
	CheckBox check0_tab1,pos={248,278},size={91,14},proc=ColourReverse,title="Reverse Colour"
	CheckBox check0_tab1,value= 1,side= 1
	SetVariable setvar3_tab0,pos={200,435},size={135,16},bodyWidth=80,proc=SetLastZLimit_High,title="Max Slider"
	SetVariable setvar3_tab0,value= _NUM:10000
	SetVariable setvar4_tab0,pos={35,435},size={135,16},bodyWidth=80,proc=SetLastZLimit_Low,title="Min Slider"
	SetVariable setvar4_tab0,value= _NUM:0
	SetVariable setvar5_tab0,pos={200,590},size={135,16},bodyWidth=80,proc=SetFirstZLimit_High,title="Max Slider"
	SetVariable setvar5_tab0,value= _NUM:10000
	SetVariable setvar6_tab0,pos={35,590},size={135,16},bodyWidth=80,proc=SetFirstZLimit_Low,title="Min Slider"
	SetVariable setvar6_tab0,value= _NUM:0
	SetVariable setvar3_tab1,pos={200,435},size={135,16},bodyWidth=80,proc=SetLastZLimit_High,title="Max Slider"
	SetVariable setvar3_tab1,value= _NUM:10000
	SetVariable setvar4_tab1,pos={35,435},size={135,16},bodyWidth=80,proc=SetLastZLimit_Low,title="Min Slider"
	SetVariable setvar4_tab1,value= _NUM:0
	SetVariable setvar5_tab1,pos={200,590},size={135,16},bodyWidth=80,proc=SetFirstZLimit_High,title="Max Slider"
	SetVariable setvar5_tab1,value= _NUM:10000
	SetVariable setvar6_tab1,pos={35,590},size={135,16},bodyWidth=80,proc=SetFirstZLimit_Low,title="Min Slider"
	SetVariable setvar6_tab1,value= _NUM:0
	GroupBox group0_tab0,pos={10,40},size={350,60},title="\\Z16Select Wave"
	GroupBox group1_tab0,pos={10,110},size={350,120},title="\\Z16Plane"
	GroupBox group2_tab0,pos={10,315},size={350,150},title="\\Z16Last Colour"
	GroupBox group3_tab0,pos={10,245},size={350,60},title="\\Z16Colour Table"
	GroupBox group5_tab0,pos={10,470},size={350,150},title="\\Z16First Colour"
	GroupBox group4_tab0,pos={10,635},size={350,100},title="\\Z16Cursor and Line Scan"
	GroupBox group0_tab1,pos={10,40},size={350,60},title="\\Z16Select Wave"
	GroupBox group3_tab1,pos={10,245},size={350,60},title="\\Z16Colour Table"
	GroupBox group2_tab1,pos={10,315},size={350,150},title="\\Z16Last Colour"
	GroupBox group5_tab1,pos={10,470},size={350,150},title="\\Z16First Colour"
	GroupBox group4_tab1,pos={10,635},size={350,100},title="\\Z16Cursor and Line Scan"
	GroupBox group0_tab2,pos={10,40},size={350,60},title="\\Z16Select Wave"
	CheckBox CsrCheck_tab0,pos={35,683},size={48,14},proc=CursorMode,title="Cursor"
	CheckBox CsrCheck_tab0,value= 0,side= 1
	CheckBox CsrCheck_tab1,pos={35,683},size={48,14},proc=CursorMode,title="Cursor"			//!!!!!!!!!!!!!!!!Need to write procedure for this
	CheckBox CsrCheck_tab1,value= 0,side= 1
	Button ExtrVertLine_tab0,pos={95,663},size={120,40},proc=ExtVertLine,title="Display Vertical Line"
	Button LineVerAuto_tab0,pos={122,707},size={70,20},proc=LineVerAuto,title="Autoscale"
	Button ExtrHorLine_tab0,pos={223,663},size={120,40},proc=ExtHorLine,title="Display Horizontal Line"
	Button LineHorAuto_tab0,pos={248,707},size={70,20},proc=LineHorAuto,title="Autoscale"
	Button ImageAutoHigh_tab0,pos={235,340},size={70,20},proc=ImageAutoHigh,title="Autoscale"
	Button ImageAutoLow_tab0,pos={235,495},size={70,20},proc=ImageAutoLow,title="Autoscale"
	Button ExtrVertLine_tab1,pos={95,663},size={120,40},proc=ExtVertLine,title="Display Vertical Line"
	Button LineVerAuto_tab1,pos={122,707},size={70,20},proc=LineVerAuto,title="Autoscale"
	Button ExtrHorLine_tab1,pos={223,663},size={120,40},proc=ExtHorLine,title="Display Horizontal Line"
	Button LineHorAuto_tab1,pos={248,707},size={70,20},proc=LineHorAuto,title="Autoscale"
	Button ImageAutoHigh_tab1,pos={235,340},size={70,20},proc=ImageAutoHigh,title="Autoscale"
	Button ImageAutoLow_tab1,pos={235,495},size={70,20},proc=ImageAutoLow,title="Autoscale"
	TabControl ThreeD_Wave,pos={5,13},size={363,733},proc=TabProc,fStyle=1
	TabControl ThreeD_Wave,appearance={native,Mac},tabLabel(0)="VolumeViewer"
	TabControl ThreeD_Wave,tabLabel(1)="ImageViewer"//,tabLabel(2)="TriplePlaneViewer"
	TabControl ThreeD_Wave,value= 0
	PopupMenu WaveSelect_tab0,pos={32,70},size={300,21},bodyWidth=167,proc=WaveSelectProc,title="3D Wave In Current Folder:"
	PopupMenu WaveSelect_tab0,mode=2,popvalue="Select Wave",value= #"WaveList(\"*\", \";\", \"DIMS:3\")"
	PopupMenu WaveSelect_tab1,pos={32,70},size={300,21},bodyWidth=167,proc=WaveSelectProc1,title="2D Wave In Current Folder:"
	PopupMenu WaveSelect_tab1,mode=2,popvalue="Select Wave",value= #"WaveList(\"*\", \";\", \"DIMS:2\")"
	PopupMenu WaveSelect_tab2,pos={32,70},size={300,21},bodyWidth=167,proc=WaveSelectProc2,title="3D Wave In Current Folder:"
	PopupMenu WaveSelect_tab2,mode=2,popvalue="Select Wave",value= #"WaveList(\"*\", \";\", \"DIMS:3\")"
	ModifyControlList ControlNameList("", ";", "*_tab1") disable=1		//This will be removed if you "replace" the macro
	ModifyControlList ControlNameList("", ";", "*_tab2") disable=1		//This will be removed if you "replace" the macro
	String/G ColourScal = "Grays"
	Variable/G slideVal = 0, revCheck = 0, ColourHighScale = 3000, ColourLowScale = 0, LastZHigh = 10000, LastZLow = 0 ,FirstZHigh = 10000, FirstZLow = 0, csrCheck = 0
	Make/O VerticalLineScan, HorizontalLineScan
EndMacro

//Pop down menu to select a wave. For the VolumeViewer tab, the macro that makes the panel shows a list of of the waves in the current folder with 3 dimensions
Function WaveSelectProc(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum
	String popStr
	
	//Set all the global variables here
	string/G waveStr = popStr
	variable/G popVar = 0,  csrCheck=0
	
	String/G ColourScal = "Grays" 
	Variable/G slideVal = 0, revCheck = 0, ColourHighScale = 3000, ColourLowScale = 0, LastZHigh = 10000, LastZLow = 0 ,FirstZHigh = 10000, FirstZLow = 0
	Make/O VerticalLineScan, HorizontalLineScan
//	SVAR ColourScal
//	NVAR slideVal, revCheck, ColourHighScale, ColourLowScale, LastZHigh, LastZLow,FirstZHigh, FirstZLow
//	wave VerticalLineScan, HorizontalLineScan
	
	//Resets some of the values when a new wave is chosen
	Slider slider0_tab0,limits={0,dimsize($waveStr,2)-1,1}
	wavestats/Q $waveStr			//get some stats about the wave
	SetVariable setvar0_tab0,value= _NUM:0
	Slider slider0_tab0,value= 0
	PopupMenu PTYP_Menu_tab0,mode=1,popvalue="XY",value= #"\"XY;XZ;YZ\""
	Slider slider1_tab0,limits={V_min,V_max,1},value= V_max
	SetVariable setvar1_tab0,value= _NUM:V_max
	SetVariable setvar2_tab0,value= _NUM:V_min
	SetVariable setvar3_tab0,value= _NUM:V_max
	Slider slider2_tab0,limits={V_min,V_max,1},value= V_min
	SetVariable setvar4_tab0,value= _NUM:V_min
	SetVariable setvar5_tab0,value= _NUM:V_max
	SetVariable setvar6_tab0,value= _NUM:V_min
	CheckBox CsrCheck_tab0,value= 0,side= 1
	
	//Kill the line scan windows if they're open
	string graphlist = winlist("*alLineViewer",";","WIN:1")
	If(findlistitem("VerticalLineViewer",graphlist) >= 0)	
		KillWindow VerticalLineViewer
	endif
	If(findlistitem("HorizontalLineViewer",graphlist) >= 0)
		KillWindow HorizontalLineViewer
	endif

	//Opens a new image of the first slice of the volume
	imagetransform/ptyp=0 /p=0 getplane $waveStr
	wave M_ImagePlane
	DoWindow/K ImageViewer
	NewImage/K=1/N=ImageViewer M_ImagePlane
	execute "ModifyImage M_ImagePlane ctab={"+num2str(ColourLowScale)+","+num2str(ColourHighScale)+", "+ColourScal+","+num2str(RevCheck)+"}"
	ModifyGraph margin(left)=28,margin(top)=28		//Change the margins so that they're a bit further from the edge
	Label left "\\Z14Y";DelayUpdate		//Put the labels on the axes
	Label top "\\Z14X"
	ModifyGraph lblRot(left)=-90;DelayUpdate		//Rotate the image 90 degrees, can't remember why I did this
	SetWindow kwTopWin,hook=WindowHook,hookevents=7			//Makes a hook on the window for the cursor to follow. Don't fully understand this. Look at SetWindow help file.
	
	return 0
End

//Pop down menu to select a wave. For the ImageViewer tab, the macro that makes the panel shows a list of of the waves in the current folder with 2 dimensions
Function WaveSelectProc1(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum
	String popStr
	
	//Set all the global variables here
	string/G waveStr = popStr
	variable/G popVar = 0,  csrCheck=0
	
	String/G ColourScal = "Grays" 
	Variable/G slideVal = 0, revCheck = 0, ColourHighScale = 3000, ColourLowScale = 0, LastZHigh = 10000, LastZLow = 0 ,FirstZHigh = 10000, FirstZLow = 0
	Make/O VerticalLineScan, HorizontalLineScan
//	SVAR ColourScal
//	NVAR slideVal, revCheck, ColourHighScale, ColourLowScale, LastZHigh, LastZLow,FirstZHigh, FirstZLow
	
	//Get the wave stats of the image to get the max and min pixel values
	Duplicate/O $waveStr, M_ImagePlane
	wavestats/Q M_ImagePlane
	ColourLowScale = V_min; ColourHighScale = V_max
	
	//Set the variables and the slider to the max and min pixel values
	SetVariable setvar1_tab1,value= _NUM:ColourHighScale			//Set the variable for the Last Colour
	SetVariable setvar2_tab1,value= _NUM:ColourLowScale			//Set the variable for the First Colour
	SetVariable setvar3_tab1,value= _NUM:ColourHighScale			//Set the variable for the Last Colour High Limit
	SetVariable setvar4_tab1,value= _NUM:ColourLowScale			//Set the variable for the Last Colour Low Limit
	SetVariable setvar5_tab1,value= _NUM:ColourHighScale			//Set the variable for the First Colour High Limit
	SetVariable setvar6_tab1,value= _NUM:ColourLowScale			//Set the variable for the First Colour Low Limit
	Slider slider1_tab1,value= ColourHighScale,limits={ColourLowScale,ColourHighScale,1}						//Set the slider value
	Slider slider2_tab1,value= ColourLowScale,limits={ColourLowScale,ColourHighScale,1}						//Set the slider value
	
	//Resets some of the values when a new wave is chosen
	CheckBox CsrCheck_tab1,value= 0,side= 1

	//Kill the line scan windows if they're open
	string graphlist = winlist("*alLineViewer",";","WIN:1")
	If(findlistitem("VerticalLineViewer",graphlist) >= 0)	
		KillWindow VerticalLineViewer
	endif
	If(findlistitem("HorizontalLineViewer",graphlist) >= 0)
		KillWindow HorizontalLineViewer
	endif

	//Opens a new image of the first slice of the volume
	DoWindow/K ImageViewer
	NewImage/K=1/N=ImageViewer M_ImagePlane
	execute "ModifyImage M_ImagePlane ctab={"+num2str(ColourLowScale)+","+num2str(ColourHighScale)+", "+ColourScal+","+num2str(RevCheck)+"}"
	ModifyGraph margin(left)=28,margin(top)=28		//Change the margins so that they're a bit further from the edge
	Label left "\\Z14Y";DelayUpdate		//Put the labels on the axes
	Label top "\\Z14X"
	ModifyGraph lblRot(left)=-90;DelayUpdate		//Rotate the image 90 degrees, can't remember why I did this
	SetWindow kwTopWin,hook=WindowHook,hookevents=7			//Makes a hook on the window for the cursor to follow. Don't fully understand this. Look at SetWindow help file.
	
	return 0
End

// See documentation at SetWindow
Function WindowHook(infoStr)
	String infoStr
	wave M_ImagePlane, VerticalLineScan,HorizontalLineScan
	NVAR csrCheck, popVar, slideVal
	SVAR waveStr
	wave OP = $waveStr

	String event= StringByKey("EVENT",infoStr)
	Variable status=0
	
	if(csrCheck==1)
		strswitch(event)
			case "cursormoved":	
				// see "Members of WMWinHookStruct Used with cursormoved Code"
				Variable PNum= NumberByKey("POINT",infoStr)		//"POINT" bascially returns pcsr
				Variable PYNum= NumberByKey("YPOINT",infoStr)	//"YPOINT" returns returns qcsr
				
				//Checks to see if the extracted line waves already exists and changes them accordingly if you choose a new wave in case while looking at a line scan window
				if(waveexists(VerticalLineScan)==1)		
					if(popVar ==0)
//						Redimension/N=(dimsize($waveStr,1)) VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
						Redimension/N=(dimsize(OP,1)) VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
						VerticalLineScan = OP[PNum][p][slideVal]
						SetScale/P x Dimoffset(OP,1),DimDelta(OP,1), VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
					endif
					if(popVar ==1)
						Redimension/N=(dimsize(OP,2)) VerticalLineScan
						VerticalLineScan = OP[PNum][slideVal][p]
						SetScale/P x Dimoffset(OP,2),DimDelta(OP,2), VerticalLineScan
					endif
					if(popVar ==2)
						Redimension/N=(dimsize(OP,2)) VerticalLineScan
						VerticalLineScan = OP[slideVal][PNum][p]
						SetScale/P x Dimoffset(OP,2),DimDelta(OP,2), VerticalLineScan
					endif
				endif
				
				if(waveexists(HorizontalLineScan)==1)
					if(popVar ==0)
						Redimension/N=(dimsize(OP,0)) HorizontalLineScan
						HorizontalLineScan = OP[p][PYNum][slideVal]
						SetScale/P x Dimoffset(OP,0),DimDelta(OP,0), HorizontalLineScan
					endif
					if(popVar ==1)
						Redimension/N=(dimsize(OP,0)) HorizontalLineScan
						HorizontalLineScan = OP[p][slideVal][PYNum]
						SetScale/P x Dimoffset(OP,0),DimDelta(OP,0), HorizontalLineScan
					endif
					if(popVar ==2)
						Redimension/N=(dimsize(OP,1)) HorizontalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
						HorizontalLineScan = OP[slideVal][p][PYNum]
						SetScale/P x Dimoffset(OP,1),DimDelta(OP,1), HorizontalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
					endif
				endif
				
				break
		endswitch
	endif
	
	return status				// 0 if nothing done, else 1 or 2
End

//Can set a discrete variable for desired plane by entering the variable or with arrows
Function SetPlaneNum(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	NVAR PopVar, slideVal
	SVAR waveStr
	wave VerticalLineScan, HorizontalLineScan, OP = $waveStr
	imagetransform/ptyp=(popvar) /p=(varNum) getplane $waveStr
	Slider slider0_tab0,value= varNum		//Changs the associated slider as well to match the variable set
	slideVal = varNum		//Not too sure why I need this, maybe I don't
	
	variable i	
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	
	//Check to see if the image viewers are showing, if so then act on them
	If(findlistitem("VerticalLineViewer",graphlist) >= 0)			//if the name is in the list of opened windows
		if(popVar ==0)														//for the different directions
			VerticalLineScan = OP[pcsr(A,"ImageViewer")][p][slideVal]
		elseif(popVar ==1)
			VerticalLineScan = OP[pcsr(A,"ImageViewer")][slideVal][p]
		elseif(popVar ==2)
			VerticalLineScan = OP[slideVal][pcsr(A,"ImageViewer")][p]
		endif
	elseif(findlistitem("HorizontalLineViewer",graphlist) >= 0)		//if the name is in the list of opened windows
		if(popVar ==0)
			HorizontalLineScan = OP[p][qcsr(A,"ImageViewer")][slideVal]
		elseif(popVar ==1)
			HorizontalLineScan = OP[p][slideVal][qcsr(A,"ImageViewer")]
		elseif(popVar ==2)
			HorizontalLineScan = OP[slideVal][p][qcsr(A,"ImageViewer")]
		endif
	endif
	
	return 0
End

//Popup menu to choose the slice direction of the volume
Function PTYP_PopMenu(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum
	String popStr
	
	NVAR slideVal, popVar
	SVAR waveStr
	popVar = popNum-1			//The popNum is 1 based and my popVar is 0 based
	imagetransform/ptyp=(popvar) /p=(slideVal) getplane $waveStr
	if(popVar == 0)					//if [a certain direction] then just change the axis labels accordingly
		Label/W=ImageViewer left "\\Z14Y";DelayUpdate
		Label/W=ImageViewer top "\\Z14X"
		ModifyGraph/W=ImageViewer lblRot(left)=-90;DelayUpdate
		Slider slider0_tab0,limits={0,dimsize($waveStr,2)-1,1}
	endif 
	if(popVar == 1)
		Label/W=ImageViewer left "\\Z14Z";DelayUpdate
		Label/W=ImageViewer top "\\Z14X"
		ModifyGraph/W=ImageViewer lblRot(left)=-90;DelayUpdate
		Slider slider0_tab0,limits={0,dimsize($waveStr,1)-1,1}
	endif 
	if(popVar == 2)
		Label/W=ImageViewer left "\\Z14Z";DelayUpdate
		Label/W=ImageViewer top "\\Z14Y"
		ModifyGraph/W=ImageViewer lblRot(left)=-90;DelayUpdate
		Slider slider0_tab0,limits={0,dimsize($waveStr,0)-1,1}
	endif 
	
	return 0
End

//A slider to select what wave to be viewed
Function Plane_Slider(ctrlName,sliderValue,event) : SliderControl
	String ctrlName
	Variable sliderValue
	Variable event	// bit field: bit 0: value set, 1: mouse down, 2: mouse up, 3: mouse moved
	
	NVAR popVar, slideVal
	SVAR waveStr
	wave VerticalLineScan, HorizontalLineScan, OP = $waveStr
	variable i	
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon

	//Changes the limits of the slider depending on the dimensions of the wave being viewed. Done this way for rectangular prisms
	if(popVar == 0)
		Slider slider0_tab0,limits={0,dimsize($waveStr,2)-1,1}
	elseif(popVar == 1)
		Slider slider0_tab0,limits={0,dimsize($waveStr,1)-1,1}
	elseif(popVar == 2)
		Slider slider0_tab0,limits={0,dimsize($waveStr,0)-1,1}
	endif
	
	if(event %& 0x1)	// bit 0, value set. The % is for use with bitwise operators
		imagetransform/ptyp=(popvar) /p=(sliderValue) getplane $waveStr		//Get the plane
		slideVal = sliderValue
		SetVariable setvar0_tab0,value=_NUM:sliderValue		//Change the variable shown in the set variable box
		
		//Check to see if the image viewers are showing, if so then act on them
		do
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
				if(popVar ==0)														//for the different directions
					VerticalLineScan = OP[pcsr(A,"ImageViewer")][p][slideVal]
				elseif(popVar ==1)
					VerticalLineScan = OP[pcsr(A,"ImageViewer")][slideVal][p]
				elseif(popVar ==2)
					VerticalLineScan = OP[slideVal][pcsr(A,"ImageViewer")][p]
				endif
			elseif(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineScan"
				if(popVar ==0)
					HorizontalLineScan = OP[p][qcsr(A,"ImageViewer")][slideVal]
				elseif(popVar ==1)
					HorizontalLineScan = OP[p][slideVal][qcsr(A,"ImageViewer")]
				elseif(popVar ==2)
					HorizontalLineScan = OP[slideVal][p][qcsr(A,"ImageViewer")]
				endif
			endif
			i+=1
		while(1)
		
	endif

	return 0
End

//Popup menu to select the colour scheme from the colour table
Function ColourScale(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum
	String popStr
	
	String/G ColourScal = popStr
	NVAR ColourHighScale, ColourLowScale, RevCheck

	execute "ModifyImage/W=ImageViewer M_ImagePlane ctab={"+num2str(ColourLowScale)+","+num2str(ColourHighScale)+", "+ColourScal+","+num2str(RevCheck)+"}"
	
	return 0
End

//Controls the high limit of the colour scale for both the image and line scans
Function ColourScaleSlider_High(ctrlName,sliderValue,event) : SliderControl
	String ctrlName
	Variable sliderValue
	Variable event	// bit field: bit 0: value set, 1: mouse down, 2: mouse up, 3: mouse moved
	
	Variable/G ColourHighScale = slidervalue
	NVAR ColourLowScale, RevCheck
	SVAR ColourScal
	
	variable i	
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	
	if(event %& 0x1)	// bit 0, value set
		SetVariable setvar1_tab0,value= _NUM:ColourHighScale		//Sets the variable in the variable box
		SetVariable setvar1_tab1,value= _NUM:ColourHighScale		//Sets the variable in the variable box
		
		//Check to see if the image viewers are showing, if so then act on them
		do
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"ImageViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "ImageViewer"
				execute "ModifyImage/W=ImageViewer M_ImagePlane ctab={"+num2str(ColourLowScale)+","+num2str(ColourHighScale)+", "+ColourScal+","+num2str(RevCheck)+"}"
			elseif(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
				Setaxis/W=VerticalLineViewer left ColourLowScale, ColourHighScale		//Change the axis according to the new colour scale
			elseif(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineScan"
				Setaxis/W=HorizontalLineViewer left ColourLowScale, ColourHighScale		//Change the axis according to the new colour scale
			endif
			i+=1
		while(1)
		
	endif
		
	return 0
End

Function SetHighColour(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	Variable/G ColourHighScale = varNum
	NVAR ColourLowScale, RevCheck
	SVAR ColourScal
	
	Slider slider1_tab0,value= varNum
	Slider slider1_tab1,value= varNum
	
	variable i
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	
	//Check to see if the image viewers are showing, if so then act on them
	do
		if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
			break
		endif
		if(stringmatch(stringfromlist(i,graphlist,";"),"ImageViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "ImageViewer"
			execute "ModifyImage/W=ImageViewer M_ImagePlane ctab={"+num2str(ColourLowScale)+","+num2str(ColourHighScale)+", "+ColourScal+","+num2str(RevCheck)+"}"
		elseif(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
			Setaxis/W=VerticalLineViewer left ColourLowScale, ColourHighScale		//Change the axis according to the new colour scale
		elseif(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineScan"
			Setaxis/W=HorizontalLineViewer left ColourLowScale, ColourHighScale		//Change the axis according to the new colour scale
		endif
		i+=1
	while(1)
	
	return 0
End

Function ColourScaleSlider_Low(ctrlName,sliderValue,event) : SliderControl
	String ctrlName
	Variable sliderValue
	Variable event	// bit field: bit 0: value set, 1: mouse down, 2: mouse up, 3: mouse moved

	Variable/G ColourLowScale = slidervalue
	NVAR ColourHighScale, RevCheck
	SVAR ColourScal

	variable i	
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	
	if(event %& 0x1)	// bit 0, value set
		SetVariable setvar2_tab0,value= _NUM:ColourLowScale
		SetVariable setvar2_tab1,value= _NUM:ColourLowScale
		
		//Check to see if the image viewers are showing, if so then act on them
		do
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"ImageViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "ImageViewer"
				execute "ModifyImage/W=ImageViewer M_ImagePlane ctab={"+num2str(ColourLowScale)+","+num2str(ColourHighScale)+", "+ColourScal+","+num2str(RevCheck)+"}"
			elseif(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
				Setaxis/W=VerticalLineViewer left ColourLowScale, ColourHighScale		//Change the axis according to the new colour scale
			elseif(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineScan"
				Setaxis/W=HorizontalLineViewer left ColourLowScale, ColourHighScale		//Change the axis according to the new colour scale
			endif
			i+=1
		while(1)
	endif

	return 0
End

Function SetLowColour(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	Variable/G ColourLowScale = varNum
	NVAR ColourHighScale, RevCheck
	SVAR ColourScal
	
	Slider slider2_tab0,value= varNum
	Slider slider2_tab1,value= varNum
	
	variable i
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	
	//Check to see if the image viewers are showing, if so then act on them
	do
		if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
			break
		endif
		if(stringmatch(stringfromlist(i,graphlist,";"),"ImageViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "ImageViewer"
			execute "ModifyImage/W=ImageViewer M_ImagePlane ctab={"+num2str(ColourLowScale)+","+num2str(ColourHighScale)+", "+ColourScal+","+num2str(RevCheck)+"}"
		elseif(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
			Setaxis/W=VerticalLineViewer left ColourLowScale, ColourHighScale		//Change the axis according to the new colour scale
		elseif(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineScan"
			Setaxis/W=HorizontalLineViewer left ColourLowScale, ColourHighScale		//Change the axis according to the new colour scale
		endif
		i+=1
	while(1)
	
	return 0
End

//Tick box that reverses the colour scaling
Function ColourReverse(ctrlName,checked) : CheckBoxControl
	String ctrlName
	Variable checked
	
	variable/G RevCheck = checked
	NVAR ColourHighScale, ColourLowScale
	SVAR ColourScal
	
	execute "ModifyImage/W=ImageViewer M_ImagePlane ctab={"+num2str(ColourLowScale)+","+num2str(ColourHighScale)+", "+ColourScal+","+num2str(RevCheck)+"}"

	return 0
End


Function SetLastZLimit_High(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	variable/G LastZHigh = varNum
	NVAR LastZLow, ColourHighScale, ColourLowScale
	
	Slider slider1_tab0,limits={LastZLow,LastZHigh,1}
	Slider slider1_tab1,limits={LastZLow,LastZHigh,1}
	
	return 0
End

Function SetLastZLimit_Low(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	variable/G LastZLow = varNum
	NVAR LastZHigh, ColourHighScale, ColourLowScale
	
	Slider slider1_tab0,limits={LastZLow,LastZHigh,1}
	Slider slider1_tab1,limits={LastZLow,LastZHigh,1}
	
	return 0
End

Function SetFirstZLimit_High(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	variable/G FirstZHigh = varNum
	NVAR FirstZLow, ColourHighScale, ColourLowScale
	
	Slider slider2_tab0,limits={FirstZLow,FirstZHigh,1}
	Slider slider2_tab1,limits={FirstZLow,FirstZHigh,1}
	
	return 0
End

Function SetFirstZLimit_Low(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	variable/G FirstZLow = varNum
	NVAR FirstZHigh, ColourHighScale, ColourLowScale
	
	Slider slider2_tab0,limits={FirstZLow,FirstZHigh,1}
	Slider slider2_tab1,limits={FirstZLow,FirstZHigh,1}
	
	return 0
End

Function CursorMode(ctrlName,checked) : CheckBoxControl
	String ctrlName
	Variable checked
	
	Variable/G csrCheck = checked
	
	SVAR waveStr
	wave M_ImagePlane, VerticalLineScan, HorizontalLineScan, OP = $waveStr
	NVAR popVar, slideVal, ColourLowScale,ColourHighScale
	variable i
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	//if the box is checked
	if(csrCheck == 1)
		
		//Check to see if ImageViewer is being shown
		do
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"ImageViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "ImageViewer"
				Cursor/L=1/I/H=1/W=ImageViewer/P A, M_imageplane, dimsize(M_Imageplane,0)/2, dimsize(M_Imageplane,1)/2
				ShowInfo/W=ImageViewer
			endif
			i+=1
		while(1)
		i=0
		do
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
				Cursor/L=1/H=1/W=VerticalLineViewer/P A, VerticalLineScan, pcsr(A,"ImageViewer")
				ShowInfo/W=VerticalLineViewer
			elseif(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineScan"
				Cursor/L=1/H=1/W=HorizontalLineViewer/P A, HorizontalLineScan, qcsr(A,"ImageViewer")
				ShowInfo/W=HorizontalLineViewer
			endif
			i+=1
		while(1)
		
		//Checks to see if the extracted line waves already exists and changes them accordingly if you choose a new wave in case while looking at a line scan window
		if(waveexists(VerticalLineScan)==1)		
			if(popVar ==0)
				Redimension/N=(dimsize($waveStr,1)) VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				VerticalLineScan = OP[pcsr(A,"ImageViewer")][p][slideVal]
				SetScale/P x Dimoffset(OP,1),DimDelta(OP,1), VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
			endif
			if(popVar ==1)
				Redimension/N=(dimsize($waveStr,2)) VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				VerticalLineScan = OP[pcsr(A,"ImageViewer")][slideVal][p]
				SetScale/P x Dimoffset(OP,2),DimDelta(OP,2), VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
			endif
			if(popVar ==2)
				Redimension/N=(dimsize($waveStr,2)) VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				VerticalLineScan = OP[slideVal][pcsr(A,"ImageViewer")][p]
				SetScale/P x Dimoffset(OP,2),DimDelta(OP,2), VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
			endif
		endif
		if(waveexists(HorizontalLineScan)==1)
			if(popVar ==0)
				Redimension/N=(dimsize($waveStr,0)) HorizontalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				HorizontalLineScan = OP[p][qcsr(A,"ImageViewer")][slideVal]
				SetScale/P x Dimoffset(OP,0),DimDelta(OP,0), HorizontalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
			endif
			if(popVar ==1)
				Redimension/N=(dimsize($waveStr,0)) HorizontalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				HorizontalLineScan = OP[p][slideVal][qcsr(A,"ImageViewer")]
				SetScale/P x Dimoffset(OP,0),DimDelta(OP,0), HorizontalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
			endif
			if(popVar ==2)
				Redimension/N=(dimsize($waveStr,1)) HorizontalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				HorizontalLineScan = OP[slideVal][p][qcsr(A,"ImageViewer")]
				SetScale/P x Dimoffset(OP,1),DimDelta(OP,1), HorizontalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
			endif
		endif
		
	endif
	
	//if the box is not checked
	if(csrCheck ==0)
		//Check to see if ImageViewer is being shown
		do
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"ImageViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "ImageViewer"
				Cursor/K/W=ImageViewer A
				HideInfo/W=ImageViewer
			elseif(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)
				Cursor/K/W= VerticalLineViewer A
				HideInfo/W=VerticalLineViewer
			elseif(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)
				Cursor/K/W= HorizontalLineViewer A
				HideInfo/W=HorizontalLineViewer
			endif
			i+=1
		while(1)
	endif
	
	return 0
End

Function ExtVertLine(ctrlName) : ButtonControl
	String ctrlName
	
	SVAR waveStr
	NVAR popVar,slideVal, ColourLowScale,ColourHighScale
	
	wave OP = $waveStr
	variable i
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	make/O VerticalLineScan
	
	if(popVar == 0)
		do		//Check to see if the VerticalLineViewer window exists, if so, then just modify the existing window to the updated wave
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//if window doesn't exist then make a new wave and make a new window to display wave
				Make/O/N=(dimsize($waveStr,1)) VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				VerticalLineScan = OP[pcsr(A,"ImageViewer")][p][slideVal]
				Display/K=1/N=VerticalLineViewer VerticalLineScan
				SetAxis left ColourLowScale,ColourHighScale
				SetScale/P x Dimoffset(OP,1),DimDelta(OP,1), VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
				Make/O/N=(dimsize($waveStr,1)) VerticalLineScan		//Choosing the second dimension because the Y dimension is being extracted here
				VerticalLineScan = OP[pcsr(A,"ImageViewer")][p][slideVal]				//modify the wave if the window does exist
				break
			endif
			i+=1
		while(1)
	endif
	
	if(popVar == 1)
		i=0
		do		//Check to see if the VerticalLineViewer window exists, if so, then just modify the existing window to the updated wave
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//if window doesn't exist then make a new wave and make a new window to display wave
				Make/O/N=(dimsize($waveStr,2)) VerticalLineScan
				VerticalLineScan = OP[pcsr(A,"ImageViewer")][slideVal][p]
				Display/K=1/N=VerticalLineViewer VerticalLineScan
				SetAxis left ColourLowScale,ColourHighScale
				SetScale/P x Dimoffset(OP,2),DimDelta(OP,2), VerticalLineScan
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
				Make/O/N=(dimsize($waveStr,2)) VerticalLineScan
				VerticalLineScan = OP[pcsr(A,"ImageViewer")][slideVal][p]				//modify the wave if the window does exist
				break
			endif
			i+=1
		while(1)
	endif
	
	if(popVar == 2)
		i=0
		do		//Check to see if the VerticalLineViewer window exists, if so, then just modify the existing window to the updated wave
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//if window doesn't exist then make a new wave and make a new window to display wave
				Make/O/N=(dimsize($waveStr,2)) VerticalLineScan
				VerticalLineScan = OP[slideVal][pcsr(A,"ImageViewer")][p]
				Display/K=1/N=VerticalLineViewer VerticalLineScan
				SetAxis left ColourLowScale,ColourHighScale
				SetScale/P x Dimoffset(OP,2),DimDelta(OP,2), VerticalLineScan
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
				Make/O/N=(dimsize($waveStr,2)) VerticalLineScan
				VerticalLineScan = OP[slideVal][pcsr(A,"ImageViewer")][p]				//modify the wave if the window does exist
				break
			endif
			i+=1
		while(1)
	endif
	
	return 0
End

Function ExtHorLine(ctrlName) : ButtonControl
	String ctrlName
	
	SVAR waveStr
	NVAR popVar,slideVal, ColourLowScale,ColourHighScale
	
	wave OP = $waveStr
	variable i
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	make/o HorizontalLineScan
	
	if(popVar == 0)
		do		//Check to see if the HorizontalLineViewer window exists, if so, then just modify the existing window to the updated wave
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//if window doesn't exist then make a new wave and make a new window to display wave
				Make/O/N=(dimsize($waveStr,0)) HorizontalLineScan
				HorizontalLineScan = OP[p][qcsr(A,"ImageViewer")][slideVal]
				Display/K=1/N=HorizontalLineViewer HorizontalLineScan
				SetAxis left ColourLowScale,ColourHighScale
				SetScale/P x Dimoffset(OP,0),DimDelta(OP,0), HorizontalLineScan
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineViewer"
				Make/O/N=(dimsize($waveStr,0)) HorizontalLineScan
				HorizontalLineScan = OP[p][qcsr(A,"ImageViewer")][slideVal]				//modify the wave if the window does exist
				break
			endif
			i+=1
		while(1)
	endif
	
	if(popVar == 1)
		i=0
		do		//Check to see if the HorizontalLineViewer window exists, if so, then just modify the existing window to the updated wave
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//if window doesn't exist then make a new wave and make a new window to display wave
				Make/O/N=(dimsize($waveStr,0)) HorizontalLineScan
				HorizontalLineScan = OP[p][slideVal][qcsr(A,"ImageViewer")]
				Display/K=1/N=HorizontalLineViewer HorizontalLineScan
				SetAxis left ColourLowScale,ColourHighScale
				SetScale/P x Dimoffset(OP,0),DimDelta(OP,0), HorizontalLineScan
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineViewer"
				Make/O/N=(dimsize($waveStr,0)) HorizontalLineScan
				HorizontalLineScan = OP[p][slideVal][qcsr(A,"ImageViewer")]				//modify the wave if the window does exist
				break
			endif
			i+=1
		while(1)
	endif
	
	if(popVar == 2)
		i=0
		do		//Check to see if the HorizontalLineViewer window exists, if so, then just modify the existing window to the updated wave
			if(strlen(stringfromlist(i,graphlist,";"))==0)			//if window doesn't exist then make a new wave and make a new window to display wave
				Make/O/N=(dimsize($waveStr,1)) HorizontalLineScan
				HorizontalLineScan = OP[slideVal][p][qcsr(A,"ImageViewer")]
				Display/K=1/N=HorizontalLineViewer HorizontalLineScan
				SetAxis left ColourLowScale,ColourHighScale
				SetScale/P x Dimoffset(OP,1),DimDelta(OP,1), HorizontalLineScan
				break
			endif
			if(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "HorizontalLineViewer"
				Make/O/N=(dimsize($waveStr,1)) HorizontalLineScan
				HorizontalLineScan = OP[slideVal][p][qcsr(A,"ImageViewer")]				//modify the wave if the window does exist
				break
			endif
			i+=1
		while(1)
	endif
	
	return 0
End

Function TabProc(ctrlName,tabNum) : TabControl
	String ctrlName
	Variable tabNum

	ModifyControlList ControlNameList("", ";", "*_tab0") disable=tabNum!=0		//the "*_tab0" tag allows the tabs to control which controls can be used in each tab
	ModifyControlList ControlNameList("", ";", "*_tab1") disable=tabNum!=1		//so, attach that tag onto the end of the name of the controls for the appropriate tags
	ModifyControlList ControlNameList("", ";", "*_tab2") disable=tabNum!=2

	return 0
End

function ImageAutoHigh(ctrlName) : ButtonControl
	string ctrlName
	NVAR ColourHighScale, ColourLowScale, RevCheck, LastZHigh, LastZLow
	SVAR ColourScal
	wave M_imageplane
	
	execute "ModifyImage/W=ImageViewer M_ImagePlane ctab={"+num2str(ColourLowScale)+",*, "+ColourScal+","+num2str(RevCheck)+"}"
	imagestats M_ImagePlane			//get the imagestats to get the max value of the image
	ColourHighScale = V_max
	SetVariable setvar1_tab0,value= _NUM:ColourHighScale		//Sets the variable in the variable box
	SetVariable setvar1_tab1,value= _NUM:ColourHighScale		//Sets the variable in the variable box
	if(LastZHigh<ColourHighScale)
		LastZHigh = V_max
		Slider slider1_tab0,limits={LastZLow,LastZHigh,1}
		Slider slider1_tab0,value= ColourHighScale
		SetVariable setvar3_tab0,value= _NUM:ColourHighScale
		Slider slider1_tab1,limits={LastZLow,LastZHigh,1}
		Slider slider1_tab1,value= ColourHighScale
		SetVariable setvar3_tab1,value= _NUM:ColourHighScale
	else
		Slider slider1_tab0,value= ColourHighScale		//Change the slider value 
		Slider slider1_tab1,value= ColourHighScale		//Change the slider value 
	endif
	
end

function ImageAutoLow(ctrlName) : ButtonControl
	string ctrlName
	NVAR ColourHighScale, ColourLowScale, RevCheck, FirstZHigh, FirstZLow
	SVAR ColourScal
	wave M_imageplane
	
	execute "ModifyImage/W=ImageViewer M_ImagePlane ctab={*,"+num2str(ColourHighScale)+","+ColourScal+","+num2str(RevCheck)+"}"
	imagestats M_ImagePlane		//get the imagestats to get the min value of the image
	ColourLowScale = V_min
	SetVariable setvar2_tab0,value= _NUM:V_min		//Sets the variable in the variable box
	if(FirstZLow>ColourLowScale)
		FirstZLow = V_min
		Slider slider2_tab0,limits={FirstZLow,FirstZHigh,1}
		Slider slider2_tab0,value= ColourLowScale
		SetVariable setvar6_tab0,value= _NUM:ColourLowScale
	else
		Slider slider2_tab0,value= ColourLowScale		//Change the slider value
	endif
	
end

function LineVerAuto(ctrlName) : ButtonControl
	string ctrlName
	
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	variable i
	
	do		//Check to see if the VerticalLineViewer window exists, if so, then just modify the existing window to the updated wave
		if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
			break
		endif
		if(stringmatch(stringfromlist(i,graphlist,";"),"VerticalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
			SetAxis/W=VerticalLineViewer /A=1
			break
		endif
		i+=1
	while(1)
	
end

function LineHorAuto(ctrlName) : ButtonControl
	string ctrlName
	
	string graphlist = winlist("*Viewer",";","WIN:1")		//winlist gives a list of all the windows that are graphs and end in "Viewer", separated by a semi colon
	variable i
	
	do		//Check to see if the HorizontalLineViewer window exists, if so, then just modify the existing window to the updated wave
		if(strlen(stringfromlist(i,graphlist,";"))==0)			//Checks when the string finishes by looking at the string length and breaks if there is nothing
			break
		endif
		if(stringmatch(stringfromlist(i,graphlist,";"),"HorizontalLineViewer")==1)			//looks sequentially through the list of windows in the string and looks for one that matches "VerticalLineViewer"
			SetAxis/W=HorizontalLineViewer /A=1
			break
		endif
		i+=1
	while(1)
	
end
