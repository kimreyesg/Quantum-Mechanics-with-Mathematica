(* ::Package:: *)

(* ::Subsection:: *)
(*Uncertainty Principle:*)


(* ::Input:: *)
(*Quit*)


(* ::Input:: *)
(*(*Demonstrate uncertainty principle with Gaussian wave packets*)(*Define constants*)\:0127=1;*)
(**)
(*(*Position space wave function-Gaussian wave packet*)*)
(*\[Psi]x[x_,\[Sigma]x_]:=(2 \[Pi] \[Sigma]x^2)^(-1/4) Exp[-x^2/(4 \[Sigma]x^2)]*)
(**)
(*(*Momentum space wave function (analytical form for Gaussian)*)*)
(*\[Psi]p[p_,\[Sigma]x_]:=(2 \[Pi] (1/(2 \[Sigma]x))^2)^(-1/4) Exp[-p^2/(1/(2 \[Sigma]x))^2]*)
(**)
(*(*Create the uncertainty principle demonstration*)*)
(*Manipulate[(*Calculate the standard deviations*)\[Sigma]p=\:0127/(2 \[Sigma]x0);*)
(*(*Display information*)Column[{Row[{"Position spread (\[Sigma]x): ",\[Sigma]x0}],Row[{"Momentum spread (\[Sigma]p): ",\[Sigma]p}],Row[{"Product (\[Sigma]x\[CenterDot]\[Sigma]p): ",\[Sigma]x0*\[Sigma]p," \[GreaterEqual] \[HBar]/2 = ",\:0127/2}],(*Create the plots*)Grid[{{Plot[\[Psi]x[x,\[Sigma]x0]^2,{x,-5,5},PlotLabel->"Position Space",PlotRange->{0,1},AxesLabel->{"Position","Probability"},PlotStyle->Blue,Filling->Axis,FillingStyle->Opacity[0.2,Blue],ImageSize->300],Plot[\[Psi]p[p,\[Sigma]x0]^2,{p,-5,5},PlotLabel->"Momentum Space",PlotRange->{0,1},AxesLabel->{"Momentum","Probability"},PlotStyle->Red,Filling->Axis,FillingStyle->Opacity[0.2,Red],ImageSize->300]}}]}],{{\[Sigma]x0,1,"Position Uncertainty (\[Sigma]x)"},0.1,3,0.1},TrackedSymbols:>{\[Sigma]x0}]*)
