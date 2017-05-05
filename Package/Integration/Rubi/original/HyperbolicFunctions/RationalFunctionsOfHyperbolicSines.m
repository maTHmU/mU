(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[Sinh[c_.+d_.*x_],x_Symbol] :=
  Cosh[c+d*x]/d /;
FreeQ[{c,d},x]


(* ::Code:: *)
Int[Cosh[a_.+b_.*x_],x_Symbol] :=
  Sinh[a+b*x]/b /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[Sinh[c_.+d_.*x_]^2,x_Symbol] :=
  -x/2 + Cosh[c+d*x]*Sinh[c+d*x]/(2*d) /;
FreeQ[{c,d},x]


(* ::Code:: *)
Int[Cosh[a_.+b_.*x_]^2,x_Symbol] :=
  x/2 + Cosh[a+b*x]*Sinh[a+b*x]/(2*b) /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[Sinh[c_.+d_.*x_]^n_,x_Symbol] :=
  Dist[1/d,Subst[Int[Expand[(-1+x^2)^((n-1)/2),x],x],x,Cosh[c+d*x]]] /;
FreeQ[{c,d},x] && OddQ[n] && n>1


(* ::Code:: *)
Int[Cosh[a_.+b_.*x_]^n_,x_Symbol] :=
  Dist[1/b,Subst[Int[Expand[(1+x^2)^((n-1)/2),x],x],x,Sinh[a+b*x]]] /;
FreeQ[{a,b},x] && OddQ[n] && n>1


(* ::Code:: *)
Int[Sinh[c_.+d_.*x_]^n_,x_Symbol] :=
  Cosh[c+d*x]*Sinh[c+d*x]^(n-1)/(d*n) -
  Dist[(n-1)/n,Int[Sinh[c+d*x]^(n-2),x]] /;
FreeQ[{c,d},x] && Not[OddQ[n]] && RationalQ[n] && n>1


(* ::Code:: *)
Int[Cosh[a_.+b_.*x_]^n_,x_Symbol] :=
  Sinh[a+b*x]*Cosh[a+b*x]^(n-1)/(b*n) + 
  Dist[(n-1)/n,Int[Cosh[a+b*x]^(n-2),x]] /;
FreeQ[{a,b},x] && EvenQ[n] && n>1


(* ::Code:: *)
(* Int[(Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  Cosh[c+d*x]*Sinh[c+d*x]^(n+1)/(d*(n+1)) - 
  Dist[(n+2)/(n+1),Int[Sinh[c+d*x]^(n+2),x]] /;
FreeQ[{c,d},x] && IntegerQ[n] && n<-1 *)


(* ::Code:: *)
(* Int[Cosh[a_.+b_.*x_]^n_,x_Symbol] :=
  -Sinh[a+b*x]*Cosh[a+b*x]^(n+1)/(b*(n+1)) + 
  Dist[(n+2)/((n+1)),Int[Cosh[a+b*x]^(n+2),x]] /;
FreeQ[{a,b},x] && IntegerQ[n] && n<-1 *)


(* ::Code:: *)
Int[1/(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  -Cosh[c+d*x]/(d*(b-a*Sinh[c+d*x])) /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2+b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  Sinh[c+d*x]/(d*(b+a*Cosh[c+d*x])) /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  -2*ArcTanh[(b-a*Tanh[(c+d*x)/2])/Rt[a^2+b^2,2]]/(d*Rt[a^2+b^2,2]) /;
FreeQ[{a,b,c,d},x] && PosQ[a^2+b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  2*ArcTanh[((a-b)*Tanh[(c+d*x)/2])/Rt[a^2-b^2,2]]/(d*Rt[a^2-b^2,2]) /;
FreeQ[{a,b,c,d},x] && PosQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  2*ArcTan[(b-a*Tanh[(c+d*x)/2])/Rt[-a^2-b^2,2]]/(d*Rt[-a^2-b^2,2]) /;
FreeQ[{a,b,c,d},x] && NegQ[a^2+b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  -2*ArcTan[((a-b)*Tanh[(c+d*x)/2])/Rt[b^2-a^2,2]]/(d*Rt[b^2-a^2,2]) /;
FreeQ[{a,b,c,d},x] && NegQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[a_+b_.*Sinh[c_.+d_.*x_]],x_Symbol] :=
  2*b*Cosh[c+d*x]/(d*Sqrt[a+b*Sinh[c+d*x]]) /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2+b^2]


(* ::Code:: *)
Int[Sqrt[a_+b_.*Cosh[c_.+d_.*x_]],x_Symbol] :=
  2*b*Sinh[c+d*x]/(d*Sqrt[a+b*Cosh[c+d*x]]) /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*Sinh[c_.+d_.*x_]],x_Symbol] :=
  2*I*Sqrt[a-I*b]/d*EllipticE[Pi/4-I*(c+d*x)/2,Sim[2*b/(a*I+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2+b^2] && PositiveQ[a-I*b]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*Cosh[c_.+d_.*x_]],x_Symbol] :=
  -2*I*Sqrt[a+b]/d*EllipticE[I*(c+d*x)/2,Sim[2*b/(a+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && PositiveQ[a+b]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*Sinh[c_.+d_.*x_]],x_Symbol] :=
  Sqrt[a+b*Sinh[c+d*x]]/Sqrt[(a+b*Sinh[c+d*x])/(a-I*b)]*Int[Sqrt[a/(a-I*b)+b/(a-I*b)*Sinh[c+d*x]],x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2+b^2] && Not[PositiveQ[a-I*b]]


(* ::Code:: *)
Int[Sqrt[a_.+b_.*Cosh[c_.+d_.*x_]],x_Symbol] :=
  Sqrt[a+b*Cosh[c+d*x]]/Sqrt[(a+b*Cosh[c+d*x])/(a+b)]*Int[Sqrt[a/(a+b)+b/(a+b)*Cosh[c+d*x]],x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && Not[PositiveQ[a+b]]


(* ::Code:: *)
Int[1/Sqrt[a_+b_.*Sinh[c_.+d_.*x_]],x_Symbol] :=
  -2/(d*Sqrt[a+b*Sinh[c+d*x]])*Sinh[(c+d*x)/2+Pi*I/4]*ArcTanh[Cosh[(c+d*x)/2+Pi*I/4]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a-I*b]


(* ::Code:: *)
Int[1/Sqrt[a_+b_.*Cosh[c_.+d_.*x_]],x_Symbol] :=
  2/(d*Sqrt[a+b*Cosh[c+d*x]])*Cosh[(c+d*x)/2]*ArcTan[Sinh[(c+d*x)/2]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a-b]


(* ::Code:: *)
Int[1/Sqrt[a_+b_.*Sinh[c_.+d_.*x_]],x_Symbol] :=
  2/(d*Sqrt[a+b*Sinh[c+d*x]])*Cosh[(c+d*x)/2+Pi*I/4]*ArcTan[Sinh[(c+d*x)/2+Pi*I/4]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a+I*b]


(* ::Code:: *)
Int[1/Sqrt[a_+b_.*Cosh[c_.+d_.*x_]],x_Symbol] :=
  -2/(d*Sqrt[a+b*Cosh[c+d*x]])*Sinh[(c+d*x)/2]*ArcTanh[Cosh[(c+d*x)/2]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a+b]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*Sinh[c_.+d_.*x_]],x_Symbol] :=
  2*I/(d*Sqrt[a-I*b])*EllipticF[Pi/4-I*(c+d*x)/2,Sim[2*b/(a*I+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2+b^2] && PositiveQ[a-I*b]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*Cosh[c_.+d_.*x_]],x_Symbol] :=
  -2*I/(d*Sqrt[a+b])*EllipticF[I*(c+d*x)/2,Sim[2*b/(a+b)]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && PositiveQ[a+b]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*Sinh[c_.+d_.*x_]],x_Symbol] :=
  Sqrt[(a+b*Sinh[c+d*x])/(a-I*b)]/Sqrt[a+b*Sinh[c+d*x]]*Int[1/Sqrt[a/(a-I*b)+b/(a-I*b)*Sinh[c+d*x]],x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2+b^2] && Not[PositiveQ[a-I*b]]


(* ::Code:: *)
Int[1/Sqrt[a_.+b_.*Cosh[c_.+d_.*x_]],x_Symbol] :=
  Sqrt[(a+b*Cosh[c+d*x])/(a+b)]/Sqrt[a+b*Cosh[c+d*x]]*Int[1/Sqrt[a/(a+b)+b/(a+b)*Cosh[c+d*x]],x] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && Not[PositiveQ[a+b]]


(* ::Code:: *)
Int[(a_+b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  b*Cosh[c+d*x]*(a+b*Sinh[c+d*x])^(n-1)/(d*n) +
  Dist[a*(2*n-1)/n,Int[(a+b*Sinh[c+d*x])^(n-1),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2+b^2] && FractionQ[n] && n>1


(* ::Code:: *)
Int[(a_+b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  b*Sinh[c+d*x]*(a+b*Cosh[c+d*x])^(n-1)/(d*n) +
  Dist[a*(2*n-1)/n,Int[(a+b*Cosh[c+d*x])^(n-1),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && FractionQ[n] && n>1


(* ::Code:: *)
Int[(b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  b*Cosh[c+d*x]*(b*Sinh[c+d*x])^(n-1)/(d*n) -
  Dist[(n-1)*b^2/n,Int[(b*Sinh[c+d*x])^(n-2),x]] /;
FreeQ[{b,c,d},x] && FractionQ[n] && n>1


(* ::Code:: *)
Int[(b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  b*Sinh[c+d*x]*(b*Cosh[c+d*x])^(n-1)/(d*n) +
  Dist[(n-1)*b^2/n,Int[(b*Cosh[c+d*x])^(n-2),x]] /;
FreeQ[{b,c,d},x] && FractionQ[n] && n>1


(* ::Code:: *)
Int[(a_+b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  b*Cosh[c+d*x]*(a+b*Sinh[c+d*x])^(n-1)/(d*n) -
  Dist[1/n,Int[((n-1)*(a^2+b^2)-a^2*(2*n-1)-a*b*(2*n-1)*Sinh[c+d*x])*(a+b*Sinh[c+d*x])^(n-2),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2+b^2] && FractionQ[n] && n>1


(* ::Code:: *)
Int[(a_+b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  b*Sinh[c+d*x]*(a+b*Cosh[c+d*x])^(n-1)/(d*n) -
  Dist[1/n,Int[((n-1)*(a^2-b^2)-a^2*(2*n-1)-a*b*(2*n-1)*Cosh[c+d*x])*(a+b*Cosh[c+d*x])^(n-2),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && FractionQ[n] && n>1


(* ::Code:: *)
Int[(a_+b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  -b*Cosh[c+d*x]*(a+b*Sinh[c+d*x])^n/(a*d*(2*n+1)) +
  Dist[(n+1)/(a*(2*n+1)),Int[(a+b*Sinh[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2+b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[(a_+b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  -b*Sinh[c+d*x]*(a+b*Cosh[c+d*x])^n/(a*d*(2*n+1)) +
  Dist[(n+1)/(a*(2*n+1)),Int[(a+b*Cosh[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[1/(a_+b_.*Sinh[c_.+d_.*x_])^2,x_Symbol] :=
  -b*Cosh[c+d*x]/(d*(a^2+b^2)*(a+b*Sinh[c+d*x])) + 
  Dist[a/(a^2+b^2),Int[1/(a+b*Sinh[c+d*x]),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2+b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Cosh[c_.+d_.*x_])^2,x_Symbol] :=
  -b*Sinh[c+d*x]/(d*(a^2-b^2)*(a+b*Cosh[c+d*x])) + 
  Dist[a/(a^2-b^2),Int[1/(a+b*Cosh[c+d*x]),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Sinh[c_.+d_.*x_])^(3/2),x_Symbol] :=
  -2*b*Cosh[c+d*x]/(d*(a^2+b^2)*Sqrt[a+b*Sinh[c+d*x]]) +
  Dist[1/(a^2+b^2),Int[Sqrt[a+b*Sinh[c+d*x]],x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2+b^2]


(* ::Code:: *)
Int[1/(a_+b_.*Cosh[c_.+d_.*x_])^(3/2),x_Symbol] :=
  -2*b*Sinh[c+d*x]/(d*(a^2-b^2)*Sqrt[a+b*Cosh[c+d*x]]) +
  Dist[1/(a^2-b^2),Int[Sqrt[a+b*Cosh[c+d*x]],x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  Cosh[c+d*x]*(b*Sinh[c+d*x])^(n+1)/(b*d*(n+1)) -
  Dist[(n+2)/((n+1)*b^2),Int[(b*Sinh[c+d*x])^(n+2),x]] /;
FreeQ[{b,c,d},x] && FractionQ[n] && n<-1


(* ::Code:: *)
Int[(b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  -Sinh[c+d*x]*(b*Cosh[c+d*x])^(n+1)/(b*d*(n+1)) +
  Dist[(n+2)/((n+1)*b^2),Int[(b*Cosh[c+d*x])^(n+2),x]] /;
FreeQ[{b,c,d},x] && FractionQ[n] && n<-1


(* ::Code:: *)
Int[(a_+b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  b*Cosh[c+d*x]*(a+b*Sinh[c+d*x])^(n+1)/(d*(n+1)*(a^2+b^2)) +
  Dist[1/((n+1)*(a^2+b^2)),Int[(a*(n+1)-b*(n+2)*Sinh[c+d*x])*(a+b*Sinh[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2+b^2] && RationalQ[n] && n<-1 && n!=-2 && n!=-3/2


(* ::Code:: *)
Int[(a_+b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  b*Sinh[c+d*x]*(a+b*Cosh[c+d*x])^(n+1)/(d*(n+1)*(a^2-b^2)) + 
  Dist[1/((n+1)*(a^2-b^2)),Int[(a*(n+1)-b*(n+2)*Cosh[c+d*x])*(a+b*Cosh[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1 && n!=-2 && n!=-3/2


(* ::Code:: *)
Int[(A_.+B_.*Sinh[c_.+d_.*x_])/(a_.+b_.*Sinh[c_.+d_.*x_]),x_Symbol] :=
  B*x/b + Dist[(b*A-a*B)/b,Int[1/(a+b*Sinh[c+d*x]),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B]


(* ::Code:: *)
Int[(A_.+B_.*Cosh[c_.+d_.*x_])/(a_.+b_.*Cosh[c_.+d_.*x_]),x_Symbol] :=
  B*x/b + Dist[(b*A-a*B)/b,Int[1/(a+b*Cosh[c+d*x]),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B]


(* ::Code:: *)
Int[(A_+B_.*Sinh[c_.+d_.*x_])/(a_+b_.*Sinh[c_.+d_.*x_])^2,x_Symbol] :=
  B*Cosh[c+d*x]/(a*d*(a+b*Sinh[c+d*x])) /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[a*A+b*B]


(* ::Code:: *)
Int[(A_+B_.*Cosh[c_.+d_.*x_])/(a_+b_.*Cosh[c_.+d_.*x_])^2,x_Symbol] :=
  B*Sinh[c+d*x]/(a*d*(a+b*Cosh[c+d*x])) /;
FreeQ[{a,b,c,d,A,B},x] && ZeroQ[a*A-b*B]


(* ::Code:: *)
Int[(A_.+B_.*Sinh[c_.+d_.*x_])/(a_.+b_.*Sinh[c_.+d_.*x_])^2,x_Symbol] :=
  -(b*A-a*B)*Cosh[c+d*x]/(d*(a^2+b^2)*(a+b*Sinh[c+d*x])) +
  Dist[(a*A+b*B)/(a^2+b^2),Int[1/(a+b*Sinh[c+d*x]),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && NonzeroQ[a^2+b^2] && NonzeroQ[a*A+b*B]


(* ::Code:: *)
Int[(A_.+B_.*Cosh[c_.+d_.*x_])/(a_.+b_.*Cosh[c_.+d_.*x_])^2,x_Symbol] :=
  -(b*A-a*B)*Sinh[c+d*x]/(d*(a^2-b^2)*(a+b*Cosh[c+d*x])) +
  Dist[(a*A-b*B)/(a^2-b^2),Int[1/(a+b*Cosh[c+d*x]),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && NonzeroQ[a^2-b^2] && NonzeroQ[a*A-b*B]


(* ::Code:: *)
Int[(A_.+B_.*Sinh[c_.+d_.*x_])/Sqrt[a_.+b_.*Sinh[c_.+d_.*x_]],x_Symbol] :=
  Dist[B/b,Int[Sqrt[a+b*Sinh[c+d*x]],x]] +
  Dist[(b*A-a*B)/b,Int[1/Sqrt[a+b*Sinh[c+d*x]],x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && NonzeroQ[a^2+b^2]


(* ::Code:: *)
Int[(A_.+B_.*Cosh[c_.+d_.*x_])/Sqrt[a_+b_.*Cosh[c_.+d_.*x_]],x_Symbol] :=
  Dist[B/b,Int[Sqrt[a+b*Cosh[c+d*x]],x]] +
  Dist[(b*A-a*B)/b,Int[1/Sqrt[a+b*Cosh[c+d*x]],x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[(A_.+B_.*Sinh[c_.+d_.*x_])*(a_+b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[B/b,Int[(a+b*Sinh[c+d*x])^(n+1),x]] +
  Dist[(b*A-a*B)/b,Int[(a+b*Sinh[c+d*x])^n,x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && ZeroQ[a^2+b^2] && RationalQ[n]


(* ::Code:: *)
Int[(A_.+B_.*Cosh[c_.+d_.*x_])*(a_+b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[B/b,Int[(a+b*Cosh[c+d*x])^(n+1),x]] +
  Dist[(b*A-a*B)/b,Int[(a+b*Cosh[c+d*x])^n,x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && ZeroQ[a^2-b^2] && RationalQ[n]


(* ::Code:: *)
Int[(A_.+B_.*Sinh[c_.+d_.*x_])*(a_.+b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  (b*A-a*B)*Cosh[c+d*x]*(a+b*Sinh[c+d*x])^(n+1)/(d*(n+1)*(a^2+b^2)) +
  Dist[1/((n+1)*(a^2+b^2)),Int[((n+1)*(a*A+b*B)-(n+2)*(b*A-a*B)*Sinh[c+d*x])*(a+b*Sinh[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && NonzeroQ[a^2+b^2] && RationalQ[n] && n<-1 && n!=-2


(* ::Code:: *)
Int[(A_.+B_.*Cosh[c_.+d_.*x_])*(a_.+b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  (b*A-a*B)*Sinh[c+d*x]*(a+b*Cosh[c+d*x])^(n+1)/(d*(n+1)*(a^2-b^2)) +
  Dist[1/((n+1)*(a^2-b^2)),Int[((n+1)*(a*A-b*B)-(n+2)*(b*A-a*B)*Cosh[c+d*x])*(a+b*Cosh[c+d*x])^(n+1),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && NonzeroQ[a^2-b^2] && RationalQ[n] && n<-1 && n!=-2


(* ::Code:: *)
Int[(A_.+B_.*Sinh[c_.+d_.*x_])*(a_.+b_.*Sinh[c_.+d_.*x_])^n_,x_Symbol] :=
  B*Cosh[c+d*x]*(a+b*Sinh[c+d*x])^n/(d*(n+1)) + 
  Dist[1/(n+1),Int[(-b*B*n+a*A*(n+1) + (a*B*n+b*A*(n+1))*Sinh[c+d*x])*(a+b*Sinh[c+d*x])^(n-1),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && NonzeroQ[a^2+b^2] && FractionQ[n] && n>0


(* ::Code:: *)
Int[(A_.+B_.*Cosh[c_.+d_.*x_])*(a_.+b_.*Cosh[c_.+d_.*x_])^n_,x_Symbol] :=
  B*Sinh[c+d*x]*(a+b*Cosh[c+d*x])^n/(d*(n+1)) + 
  Dist[1/(n+1),Int[(b*B*n+a*A*(n+1) + (a*B*n+b*A*(n+1))*Cosh[c+d*x])*(a+b*Cosh[c+d*x])^(n-1),x]] /;
FreeQ[{a,b,c,d,A,B},x] && NonzeroQ[b*A-a*B] && NonzeroQ[a^2-b^2] && FractionQ[n] && n>0
