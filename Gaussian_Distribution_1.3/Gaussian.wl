Quit

$Assumptions = 
  Element[A, Reals] && Element[a, Reals] && 
   Element[\[Lambda], Reals] && A > 0 && a > 0 && \[Lambda] > 0;

pdf[x_] := A*E^(-\[Lambda] (x - a)^2)
Integrate[pdf[x], {x, -Infinity, Infinity}]
Solve[Integrate[pdf[x], {x, -Infinity, Infinity}] == 1, A]
mean = Integrate[
    x*pdf[x], {x, -Infinity, Infinity}] /. {A -> Sqrt[\[Lambda]]/
     Sqrt[\[Pi]]} // Simplify
     SQmean = 
 Integrate[
    x^2*pdf[x], {x, -Infinity, Infinity}] /. {A -> Sqrt[\[Lambda]]/
     Sqrt[\[Pi]]} // Simplify
     (*Plot*)
(*lets redefine the funcion so we can use the Manipulate command:*)
pdfnew[x_, a_, \[Lambda]_] := 
 A*E^(-\[Lambda] (x - a)^2) //. {A -> Sqrt[\[Lambda]]/Sqrt[\[Pi]]}
 Manipulate[
 Plot[{pdfnew[x, 
     a, \[Lambda]] //. {A -> Sqrt[\[Lambda]]/Sqrt[\[Pi]]}}, {x, -10, 
   10}, PlotRange -> {All, All}, 
  Epilog -> {Red, Dashed, Line[{{a, -1}, {a, 1}}], 
    Line[{{1/(Sqrt[2] Sqrt[\[Lambda]]) + a, -1}, {1/(
        Sqrt[2] Sqrt[\[Lambda]]) + a, 1}}], 
    Line[{{-(1/(Sqrt[2] Sqrt[\[Lambda]])) + 
        a, -1}, {-(1/(Sqrt[2] Sqrt[\[Lambda]])) + a, 1}}]}],
 {{a, 1.0, "a"}, 0.0, 5, Appearance -> "Labeled"},
 {{\[Lambda], 1.0, "\[Lambda]"}, 0.01, 5, Appearance -> "Labeled"}
 ]
