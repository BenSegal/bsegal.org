(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.1' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    205451,       3771]
NotebookOptionsPosition[    205661,       3755]
NotebookOutlinePosition[    206218,       3778]
CellTagsIndexPosition[    206175,       3775]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Set", " ", "initial", " ", "point", " ", "and", " ", "working", " ", 
    "directory"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Clear", "[", 
     RowBox[{"b", ",", "k"}], "]"}], ";", 
    RowBox[{"pt", "=", 
     RowBox[{"{", 
      RowBox[{"0.8", ",", 
       RowBox[{"0.8", "^", "2"}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Size", " ", "of", " ", "plots"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"imagsize", "=", "400"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "ptfix", " ", "forces", " ", "the", " ", "point", " ", "to", " ", "be", 
     " ", "within", " ", "the", " ", "region", " ", "where", " ", "the", " ", 
     "solutions", " ", "are", " ", "valid"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"ptfix", ":=", 
     RowBox[{"Which", "[", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], "&&", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "1"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "1"}], "&&", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", "1"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], "&&", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"1", ",", "1"}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], "&&", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0"}], "}"}], ",", 
       RowBox[{
        RowBox[{"pt", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Sqrt", "[", 
          RowBox[{"pt", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "]"}], ",", 
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], "&&", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0"}], "}"}], ",", 
       RowBox[{
        RowBox[{"pt", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}], "}"}], ",", 
       RowBox[{
        RowBox[{"pt", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", 
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ">", "0"}], "&&", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], "&&", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "2", "]"}], "]"}], "<", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}]}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"pt", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}], "}"}], ",", "True", 
       ",", "pt"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Create", " ", "the", " ", "dynamic", " ", "sliders"}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Column", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Labeled", "[", 
       RowBox[{
        RowBox[{"Slider", "[", 
         RowBox[{
          RowBox[{"Dynamic", "[", 
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "1"}], "}"}]}], "]"}], ",", 
        RowBox[{"\"\<k = \>\"", " ", 
         RowBox[{"Dynamic", "[", 
          RowBox[{"pt", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "]"}]}], ",", "Left"}], "]"}], ",", 
      RowBox[{"Labeled", "[", 
       RowBox[{
        RowBox[{"Slider", "[", 
         RowBox[{
          RowBox[{"Dynamic", "[", 
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"0", ",", "1"}], "}"}]}], "]"}], ",", 
        RowBox[{"\"\<b = \>\"", " ", 
         RowBox[{"Dynamic", "[", 
          RowBox[{"pt", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "]"}]}], ",", "Left"}], "]"}]}], 
     "}"}], "]"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
    "Create", " ", "the", " ", "dynamic", " ", "graph", " ", "where", " ", 
     "you", " ", "can", " ", "select", " ", "a", " ", "value", " ", "of", " ",
      "k", " ", "and", " ", 
     RowBox[{"b", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{"LocatorPane", "[", 
    RowBox[{
     RowBox[{"Dynamic", "[", "pt", "]"}], ",", 
     RowBox[{"Show", "[", 
      RowBox[{
       RowBox[{"RegionPlot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"k", "^", "2"}], "<", "b", "<", "1"}], ",", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"2", " ", 
               RowBox[{"EllipticE", "[", 
                RowBox[{"k", "^", "2"}], "]"}]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"k", "^", "2"}], "-", "b", "-", "1"}], ")"}], " ", 
               RowBox[{"EllipticK", "[", 
                RowBox[{"k", "^", "2"}], "]"}]}]}], ">", "0"}], "&&", 
            RowBox[{
             RowBox[{"k", "^", "2"}], "<", "b", "<", "1"}]}], ",", 
           RowBox[{
            RowBox[{
             RowBox[{"k", "^", "2"}], "<", "b", "<", "1"}], "&&", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"-", "1"}], "+", "b", "-", 
                  RowBox[{
                   SqrtBox["b"], " ", 
                   SqrtBox[
                    RowBox[{"b", "-", 
                    SuperscriptBox["k", "2"]}]]}]}], ")"}], " ", 
                RowBox[{"EllipticE", "[", 
                 SuperscriptBox["k", "2"], "]"}]}], "-", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"-", "1"}], "+", 
                  SuperscriptBox["k", "2"]}], ")"}], " ", 
                RowBox[{"EllipticK", "[", 
                 SuperscriptBox["k", "2"], "]"}]}]}], ")"}], "<", "0"}]}], 
           ",", 
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{"2", " ", 
               RowBox[{"EllipticE", "[", 
                RowBox[{"k", "^", "2"}], "]"}]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"k", "^", "2"}], "-", "b", "-", "1"}], ")"}], " ", 
               RowBox[{"EllipticK", "[", 
                RowBox[{"k", "^", "2"}], "]"}]}]}], ">", "0"}], "&&", 
            RowBox[{"b", ">", 
             RowBox[{"k", "^", "2"}]}], "&&", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"-", "1"}], "+", "b", "-", 
                  RowBox[{
                   SqrtBox["b"], " ", 
                   SqrtBox[
                    RowBox[{"b", "-", 
                    SuperscriptBox["k", "2"]}]]}]}], ")"}], " ", 
                RowBox[{"EllipticE", "[", 
                 SuperscriptBox["k", "2"], "]"}]}], "-", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"-", "1"}], "+", 
                  SuperscriptBox["k", "2"]}], ")"}], " ", 
                RowBox[{"EllipticK", "[", 
                 SuperscriptBox["k", "2"], "]"}]}]}], ")"}], "<", "0"}]}], 
           ",", 
           RowBox[{
            RowBox[{"b", ">", 
             RowBox[{"k", "^", "2"}]}], "&&", 
            RowBox[{
             RowBox[{
              RowBox[{"2", " ", 
               RowBox[{"EllipticE", "[", 
                RowBox[{"k", "^", "2"}], "]"}]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"k", "^", "2"}], "-", "b", "-", "1"}], ")"}], " ", 
               RowBox[{"EllipticK", "[", 
                RowBox[{"k", "^", "2"}], "]"}]}]}], ">", "0"}], "&&", 
            RowBox[{
             RowBox[{"Root", "[", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"-", 
                  SqrtBox[
                   RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "b"}], "+", 
                    SuperscriptBox["b", "2"]}], ")"}]}], " ", 
                    RowBox[{"(", 
                    RowBox[{"b", "-", 
                    SuperscriptBox["k", "2"]}], ")"}]}]]}], "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"-", "1"}], "+", 
                    RowBox[{"3", " ", "b"}], "-", 
                    SuperscriptBox["k", "2"]}], ")"}], " ", "#1"}], "+", 
                 RowBox[{"4", " ", 
                  SuperscriptBox["#1", "3"]}]}], "&"}], ",", "1"}], "]"}], 
             "<", 
             FractionBox[
              SqrtBox[
               RowBox[{
                RowBox[{"2", " ", 
                 RowBox[{"EllipticE", "[", 
                  SuperscriptBox["k", "2"], "]"}]}], "-", 
                RowBox[{"EllipticK", "[", 
                 SuperscriptBox["k", "2"], "]"}], "-", 
                RowBox[{"b", " ", 
                 RowBox[{"EllipticK", "[", 
                  SuperscriptBox["k", "2"], "]"}]}], "+", 
                RowBox[{
                 SuperscriptBox["k", "2"], " ", 
                 RowBox[{"EllipticK", "[", 
                  SuperscriptBox["k", "2"], "]"}]}]}]], 
              RowBox[{"2", " ", 
               SqrtBox[
                RowBox[{"EllipticK", "[", 
                 SuperscriptBox["k", "2"], "]"}]]}]]}]}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"k", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"b", ",", "0", ",", "1"}], "}"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "imagsize"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<k\>\"", ",", "\"\<b\>\""}], "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", 
          RowBox[{"(", 
           RowBox[{"FontSize", "\[Rule]", "20"}], ")"}]}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Darker", "[", "Blue", "]"}], ",", 
            RowBox[{"Darker", "[", "Red", "]"}], ",", "LightBlue", ",", 
            "LightRed", ",", "LightRed"}], "}"}]}], ",", 
         RowBox[{"BoundaryStyle", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"Thin", ",", "Black"}], "}"}]}], ",", 
         RowBox[{"MaxRecursion", "\[Rule]", "4"}]}], "]"}], ",", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"PointSize", "[", "Large", "]"}], ",", 
          RowBox[{"Locator", "[", 
           RowBox[{"Dynamic", "[", 
            RowBox[{"Which", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], "&&", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], 
              ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "1"}], "}"}], ",", 
              RowBox[{
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "1"}], "&&", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], 
              ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], ",", "1"}], "}"}], ",", 
              RowBox[{
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], "&&", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], 
              ",", 
              RowBox[{"{", 
               RowBox[{"1", ",", "1"}], "}"}], ",", 
              RowBox[{
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], "&&", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}]}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}], ",", 
              RowBox[{
               RowBox[{"pt", "[", 
                RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Sqrt", "[", 
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "2", "]"}], "]"}], "]"}], ",", 
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
              RowBox[{
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], "&&", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}]}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}], ",", 
              RowBox[{
               RowBox[{"pt", "[", 
                RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}], "}"}], ",", 
              RowBox[{
               RowBox[{"pt", "[", 
                RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", 
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
              RowBox[{
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], ">", "0"}], "&&", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], "&&", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "<", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}]}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}], "}"}], ",", 
              "True", ",", "pt"}], "]"}], "]"}], "]"}]}], "}"}], "]"}]}], 
      "]"}], ",", 
     RowBox[{"Appearance", "\[Rule]", "None"}]}], "]"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{
      RowBox[{
      "Import", " ", "the", " ", "plot", " ", "of", " ", "the", " ", 
       "spectrum", " ", "cooresponding", " ", "to", " ", "the", " ", 
       "nearest", " ", "available", " ", 
       RowBox[{"plot", ".", " ", 
        RowBox[{"(", 
         RowBox[{"b", ",", "k"}], ")"}]}]}], "-", 
      RowBox[{"space", " ", "is", " ", "mapped", " ", "to", " ", 
       RowBox[{"(", 
        RowBox[{"xx", ",", "yy"}], ")"}], " ", "space", " ", "where", " ", 
       "the", " ", "plots", " ", "are", " ", 
       RowBox[{"saved", ".", " ", "Inverse"}], " ", "map", " ", "is", " ", 
       "as", " ", 
       RowBox[{"follows", ":", "\[IndentingNewLine]", 
        RowBox[{"k", " ", "<", 
         RowBox[{"-", " ", "xx"}]}]}]}]}], ";", "\[IndentingNewLine]", "   ", 
     RowBox[{"b", " ", "<", 
      RowBox[{"-", " ", 
       RowBox[{
        RowBox[{"(", " ", 
         RowBox[{"1", " ", "-", " ", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", " ", "-", " ", "yy"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{"1", " ", "-", " ", "xx"}], ")"}]}]}], " ", ")"}], " ", 
        "^", " ", "2"}]}]}], ";", "\[IndentingNewLine]", "   ", 
     RowBox[{
      RowBox[{"Ex", ":", " ", "xx"}], " ", "=", " ", ".5"}], ";", " ", 
     RowBox[{"yy", " ", "=", " ", "0"}], ";", " ", 
     RowBox[{
      RowBox[{"corresponds", " ", "to", " ", "k"}], " ", "=", " ", ".5"}], 
     ";", " ", 
     RowBox[{"b", " ", "=", " ", ".25"}], ";", "\[IndentingNewLine]", "\t   ", 
     RowBox[{"xx", " ", "=", " ", ".5"}], ";", " ", 
     RowBox[{"yy", " ", "=", " ", "1"}], ";", " ", 
     RowBox[{
      RowBox[{"corresponds", " ", "to", " ", "k"}], " ", "=", " ", ".5"}], 
     ";", " ", 
     RowBox[{"b", " ", "=", " ", "1"}], ";"}], "  ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Dynamic", "[", 
    RowBox[{
     RowBox[{"k", "=", 
      RowBox[{
       RowBox[{"Which", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "1"}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "1"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", "1"}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", "1"}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0"}], "}"}], ",", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Sqrt", "[", 
            RowBox[{"pt", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "]"}], ",", 
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0"}], "}"}], ",", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"pt", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}], "}"}], ",", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ">", "0"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "<", 
           RowBox[{
            RowBox[{"pt", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"pt", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}], "}"}], ",", "True",
          ",", "pt"}], "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], ";", 
     RowBox[{"b", "=", 
      RowBox[{
       RowBox[{"Which", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "1"}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "1"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", "1"}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[GreaterEqual]", "1"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", "1"}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0"}], "}"}], ",", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "\[GreaterEqual]", "1"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Sqrt", "[", 
            RowBox[{"pt", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "]"}], ",", 
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", "0"}], "}"}], ",", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "\[LessEqual]", "0"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"pt", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}], "}"}], ",", 
         RowBox[{
          RowBox[{"pt", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "\[LessEqual]", "0"}], ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ">", "0"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], ">", "0"}], "&&", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "<", 
           RowBox[{
            RowBox[{"pt", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pt", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", 
           RowBox[{
            RowBox[{"pt", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "^", "2"}]}], "}"}], ",", "True",
          ",", "pt"}], "]"}], "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], ";", 
     RowBox[{"xx", "=", "k"}], ";", 
     RowBox[{"yy", "=", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"k", "<", "1"}], ",", 
        FractionBox[
         RowBox[{
          RowBox[{"-", "k"}], "+", 
          SuperscriptBox["k", "2"], "+", 
          SqrtBox[
           RowBox[{"b", "-", 
            RowBox[{"2", " ", "k", " ", "b"}], "+", 
            RowBox[{
             SuperscriptBox["k", "2"], " ", "b"}]}]]}], 
         RowBox[{"1", "-", 
          RowBox[{"2", " ", "k"}], "+", 
          SuperscriptBox["k", "2"]}]], ",", "1"}], "]"}]}], ";", 
     RowBox[{"Show", "[", 
      RowBox[{
       RowBox[{"Import", "[", 
        RowBox[{
        "\"\<http://students.washington.edu/bsegal/NLSfiguresMathematica/xx-\>\
\"", "<>", 
         RowBox[{"IntegerString", "[", 
          RowBox[{
           RowBox[{"Round", "[", 
            RowBox[{
             RowBox[{"10000", "xx"}], ",", "100"}], "]"}], ",", "10", ",", 
           "5"}], "]"}], "<>", "\"\<-yy-\>\"", "<>", 
         RowBox[{"IntegerString", "[", 
          RowBox[{
           RowBox[{"Round", "[", 
            RowBox[{
             RowBox[{"10000", "yy"}], ",", "100"}], "]"}], ",", "10", ",", 
           "5"}], "]"}], "<>", "\"\<.pdf\>\""}], "]"}], ",", 
       RowBox[{"ImageSize", "\[Rule]", "imagsize"}]}], "]"}]}], 
    "]"}]}]}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[GridBox[{
    {
     TemplateBox[{SliderBox[
        Dynamic[
         Part[$CellContext`pt, 1]], {0, 1}],RowBox[{"\"k = \"", " ", 
         DynamicBox[
          ToBoxes[
           Part[$CellContext`pt, 1], StandardForm]]}]},
      "Labeled",
      DisplayFunction->(GridBox[{{
          ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"], 
          TagBox[
           ItemBox[
            PaneBox[
             TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline},
              BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
           "SkipImageSizeLevel"]}}, 
        GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
        AutoDelete -> False, 
        GridBoxItemSize -> {
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
        BaselinePosition -> {1, 2}]& ),
      InterpretationFunction->(RowBox[{"Labeled", "[", 
         RowBox[{#, ",", #2, ",", "Left"}], "]"}]& )]},
    {
     TemplateBox[{SliderBox[
        Dynamic[
         Part[$CellContext`pt, 2]], {0, 1}],RowBox[{"\"b = \"", " ", 
         DynamicBox[
          ToBoxes[
           Part[$CellContext`pt, 2], StandardForm]]}]},
      "Labeled",
      DisplayFunction->(GridBox[{{
          ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"], 
          TagBox[
           ItemBox[
            PaneBox[
             TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline},
              BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
           "SkipImageSizeLevel"]}}, 
        GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
        AutoDelete -> False, 
        GridBoxItemSize -> {
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
        BaselinePosition -> {1, 2}]& ),
      InterpretationFunction->(RowBox[{"Labeled", "[", 
         RowBox[{#, ",", #2, ",", "Left"}], "]"}]& )]}
   },
   DefaultBaseStyle->"Column",
   GridBoxAlignment->{"Columns" -> {{Left}}},
   GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
  "Column"]], "Output", "PluginEmbeddedContent"],

Cell[BoxData[{
 LocatorPaneBox[Dynamic[$CellContext`pt], 
  GraphicsBox[{GraphicsComplexBox[CompressedData["
1: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
a4ekGpnuJKVGhhv830fS8x2b32Xlnqb4Pnu/+bSIpPh7H+7Y3vNg+SZ9h6oc
O7X3DGXe8jKOvM2t1yMfTt2k8fPYruHUcPdVFfsj3Pr84JrY5e5PuXy4aYvm
D9F7mUl1nW3bOb2KYnFny3MFs8WTn9Hs1GNjhR+49fxB4/oetnbi9j9gfuxZ
4QuxRXU6LXhrXmaxjFvff2K9OlLyvIBcLbRddJ0zSKVRZ4vIpiXUUvlFTz31
fLbeP9sswirU8xGb73t0qTSq/ckR5FEnO28zO4reLh7yJVx0hs2T7Bt0/YLW
x1AqWbR2vs0qbj8I8g+O9Nxw3uZ8FHXY3riB/WYuXyB+4+km5slcfgDsitWt
9m2yQizpV+HrSV0CztIjkzenf62aQL5mb7bNmOFNs+sq9S75WZBg+jPBsE0X
aezLN0s7B1lTTyOdjwtX+9AyiXrEltoZTM7GjF7aSTnIiWre979QtP8mfTzW
o7vyhuXUOvR8r8z7N2nTah2NThHLKcF073XDgXdI93Gbe/7z17B14ELnJY3f
r19P7YzniWLn3CXfD4sdDV85037tnV1k5+T2s33LV5LBOdRt1bXmsge/rQut
ELiukdGmAV0Kw+X+uUGHhulZJ7j1TGfPuZPjbG1p29lcL2WNyzRH0uqiR+Q8
KlLf/8n05BVKdD/cfb9oIb1p9XKxr9kj+ujca5T9iT30rqzXfaVvwdTQznXg
9s57uPoIDSPUg+4KKL2rz1nnfilk+lrWrc/KYGq6weiss10KPQtqVib8Gszy
G57KFkaK6x5Sqe6Q/e2NiqiBgeZd7SIRm19WvXUlTtL1LVXIilseGMvlP3yQ
Hm3QawCX34f8CL9u/eIlKSKqtBi9q/25Uno7xaMsaxu3f+HQnPHdVp8vpCvH
p09V8eHyJ6ochwX3O8rlAyK/Qiu5Vw05F1JNbDiZn+HG+2EHemdtvnaNGnXd
c/f9UTsK6qRXuvCFH+07MS/bV38JzTo9dqX+qgpaN/XbiC7vpNRmkruyuS2X
X5FbValsrsvlY3parsyca1hBL3/edcXsd/kWjU7Mdq8al02dd9sOtjLzpKop
ejsH7B1PS0LyBqz2FtJP6k6qx3xHkmacb1vL7HiyNdf2UG58nY7NbfmLcEEC
W49Hfq/aur3pm3vdoFFHnnTXMyigRrkmncUt0qmy/MTsSOLyM3r2n9lR72AJ
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
ouj11TLqfXv9ykindDIs2OltJpX9088XAd96+o61dT9dTtdyd5x3betZb38I
6G0o9D5s3aeA1sXPqrJbIPv7fJJ/8vkkaM8Ql4iQxEFy+7axmZ3fYm5/4X/7
+SKHvQ5OiCyU0oeonF+c/ctI/2iFinnjcrp5OHCp+44y2rNK/+fIyUUkiR6/
0P1BBXl9nh+fOKeIbJYmW/rd4/IXbj/upFNbx60/asyLjw6s4/IXRty0epz4
jctfWHz1dXTgFy5/4f75uAK3Gi5/Yezz0I4alVz+wqoVU3RqC7n8hW0XlOsm
Jcm+ex7KIdX4iyEJIkpptGaB+xMZqTavExtsfEvVhaFpno9lNEy5zcapo+Xj
9XttfMw8ZaQprNswdWIe2Uwor+x5RkZzK9t8dovJp3c1g9T0HLn9eBt2yqb7
PZPRKY3XxrXTc2mOebm36h1uP55X4/0ntC/JKG6s/Re3pvk00qvMOHKXjPQ7
j3ku0csnp3ILgZGbjKaeoG4p46S0cXS6hFZIvnt+C+LZWLO+zWV1XPyaH3j3
2/46Lj69M+ngdIdvXPx5W73ieN5nLr4c6bx1z5ePXPyYa7P28dEK2XfPgxE9
UhotGiWR94PDNuvZUmre31Sv1lZC+TtuLnEfISWrFyVDa/VKaGi3yIuqbSto
yUSN6MTnJbRysqCBeUo5rQu3nRbZqJQMp10YLgoqpwzLn1e7e4upXYNX/pKC
iv/682QQR2w0dBFqd5J993yZDyHPzmkvL6PNYd9GiGTSv8+X+RefL4Pvrfbo
eFF1Pbdf67Dd5PeFSRVUscgj3mJEEYvfWjf6tcn2eVlU4z9TJ/itfPxTM+6j
ZkEOZdyZcEI7Rh7fK098Y1GcQxNzturURstIye6Ft9GuXOq0srOF3w0ZeY3e
O1TjeS6NmeIYE3hZ9vd5Nn+x82zwPrUmzpdVtctp07MvSYEjuf1lf/Z5NYiD
ilYbCowOy+qdX5PR4ksH+y2Z1Efpwp4vBfL432fHTaO3mVQxz6myZ76MimY9
aW3fIIcSf3KvvPRKRk/Hnmtt3z6HNJSuPVaXY9Gm1MLArrlUdHPhbck9Wb3z
cH6qffLOzYfbv9XOO97K5im3nwr9sKrfgpjAW7L/+fNxpkWsOGlUVUSiqLYr
nQUV1Hd1vq/2+yIK67zzpPZv+YJ/8nk5mEfE+OKvdn4O7HDV5Mu27gvLySVq
8j2zSXI+X/istrqm4p9+Pg7eB/4hbtjarsGChDpufurhjlNDu9Rx9lqwQnLc
9is3v9TRv/mChFpu/iiyT4cFU99z80MjrbK+7S+R69+7M5JA82xSVplvvCtF
RvGb7lqLumRTVVzuUK9UuX4vp71VgW9pt1vZHqNgGRkMe/fJ0+gNJY1Ti6nO
ktHiG9mjNba+oVEH7+5xzZS/78vWuz63RDR23900z6fy8U2rMHXzF/LxVK8x
7+2yOH/2Z53/82vP4DJqLiW1T7sT13tL6GBLz6eJudw6I9YPb955U2N3k1t3
NdadKPLcIB+XtOyb49lBWm+/Gfj/zCN+mXtBKWlXrBwhGldOHV6YzfUrK6Vt
ayvMIkeX1zs/qHjD0K4amVKa6q13TjusjKTzV0+I/CCl62+ezfEbUka3VAc9
SbzF7R9CHsx+08WDasPL6p0/BP93fNuNSrswbn9VTZz+plPZ3Hqe2XGfi6q6
FWS+/tnQWpMSWrfyp+Gi5hV/+fOLBvsP7a7RW0Lv9V6vcV4uJaO+h9XMTxbT
afem4yOnV1DWhqcnXPOL6cqnxE5WQypIOayga8p6KdHoCa/X60uYPzeVeIUk
msjo09TnI0XbuP1a2w4ftVv5u/7+3nlJ/POQtoRqddX43Xmj6M/rqb88lHwr
/eHzkhyMU4o8LxRR/tp7GZ4XuP0SJeIvK5yDZPXOR2r26Jaexp4CinNcrKY3
XUay2mFnja4VkPOx93WTJsn96WknO79+hbSm83sLP30Zpa/rVeuWV0A3P18O
SSTZd89Xeriv+qDRVK4eC9Y9Go3vLXUbLfnTz1+CXmz3eFXqdlRKtfc/+qn2
kNTL9x+zJe+ktkXFD5/X1O7y5VLyk5JDbcr29rVl/3HnN+326zm5y+/m5/Dc
/uw9sYGNZN893wlx5CzLTBfr8gqyOWbbX2MJt5+h5zDZ8U6GnH+2mrvBU/l3
8v9nnw/FP/+pe/HwrdYNufOb+OdBQc5OGFxd4m4kpUobdU097RKWf/Kj50X9
6PlPWD/Mmj3gpHZQRb3zoGDH9l3cN72kjlv/0IyPj15fx61/eOptW6H/jVv/
+Hry6HSHz9z6h86tslv9PnLrH1YG51bol8v+8HlToiZb3gbqFND+oiXpngtk
//bzpzAPWv511h2Jh3z8GuvfwryS2w+yVXVWbuCNfGqht1JgtFpGsZHe25xP
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
Rqx3Liul5B2vgyXDufwWxMXd2q9Utk8qoqO+j/trDKq/nugkvK1if5BbTzRr
8X/Ye/OwHLe2fzwiUxE7U2VoG8qwZSoiTkSIVETGCBFlahuKyFTGjJlipxIy
RoRIIZJMlSapW9N9N+omst1Ev+v9HvdnrY6r4/l5ffd+vs/7PK+/Oj6tdV/X
tdY61zmsdQ7N75Scl1Lm7gIdlT417xfXa+9TcRzH7xf9b7TqrFXO/dIuxX/5
3dW/mDYd2f557o2a940S3Xsdta4W8TyZlyzXugr65J7AXYMNV72gsZs3m/un
S2lnP5djrjdeUGVuHROTTCl17bPQLyeqhBbXfay2fQG/f9xg2MtIocbvH9cP
9LeNWcvvH8+f+9ZN66iUKm8dvqV2kN8/gs/f8TI5bCrQ14cz6+xiMvn9IPj0
sc1XniQYcP9eL6MDB01Hc3/JrTslJgpB/8U4/zg0p6dJdDFdD7aRWZ/m95Ur
g8oNHJclUMjFbxkVAr/sefWqs0SQxA/yB9iqCut5TT+/Y+PEKBr/pP1h0wXC
/mpjUxEZfIc66ocu8XHh95t+A7NqSffJaNidrnVVfsmiY7uXf/DcJqNe+9LP
61nlUJ+4ATNDdLl/8WOd8uN6fxRSYaBC13CNsE/mT99neqGQiiS/jpAEyGhj
uH5cwi1+X164/tpJPYF+tS0bTri97xbdytQ/bOoopbQViW/9/symwAiNWo71
Cyhm5Mr+iu4yWnTw3PSQ3YWUfCpsesiOQrqxS7Ohxe4idr7YbJ2i0M9JyvzX
3oZrZoT3l9GNNzsPpelIaOGaZSf0gmTUMCPkZGR0Fr29k1jL8QivQ3awh+Vw
SesCmm4qiSqZzu9n701p6m16Ql6jPljA126zDQT7Yl3Pj+NV1O5S87d9ZocI
+uSzD1F73A3vk+bIX2eHrJJSsx3XF/g85fe3eO7iN7kkOcLjwxa/OadreFpG
Mx9lu4YNFuz21qWKjs1KaOIzWy3DWfwc7s3Uz3butjxeD/dcLvOSFvsUSRld
tao//XyssaC/Tw46qteY10fCc1wVzx19VLl/aMSDgj2m64toQP1Jt0qmc3++
dpUNLpgnF9KUuW9erAjj+hfOvaFPoE4PMPK2AiOvJTDyWgLjnB0YebaAkWcL
78d9MtrNjPd6uJTfZPhc8NNP7tXav32q3G0j7CPgA9vv/DK8Wjvuo4ELJfKz
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
n0ztVkjiVlTIqfPFFYtiXAT7N29jgHmp/C/Xm4Ec6xg0xMHn8Bs6k73hD4/m
fjXiMTCeOr4Bu+y65NHyJ5PK586Q/+V6NFiPPu53IhN6ysl8VaO5IbN5/Nz3
6sV4Le49IWaMjEriRsz0uV5G/l+mP0mYIiP7eS9sQq7w+9mLt3T1FVX8flZr
2pO48Cp+P2ty3vZWwjd+Pzv7dGJceCW/n736x+M8z098vENib7fWesfvZxcv
HKuvyOf2+7rjtapGJ/H8HP+p9Wp2qj05EflUQsl1l87wuSsnNfUqqdGq11SR
fzvV75ac+tX6ZZXlIEF/v/JLoLmfnLR9q1Zajsoh+5Fv3nU8Iqep73754vko
l95+6qlh6CyvUQ8F9s/KjXKrkAdyOqSVOExhlU1TLN4EqF3i8WP+9bft1wuW
0+MhjpWeDXNpgH/xsJhNwvy3GRxbYphLLm+svU095d+trwP9Jt68q7q8iusz
ueGXv22r4vrKpdE7rJy+cX3kombZvpwvXN8Y4LrWq/Ij1yey7Zfd2lMm/4+v
37Nw6vuECocSGnJpWt3tJqVk+7Cwr8KwkPq2jzmh1ryM5ozSikuILaRFY7xr
WyS/oeXRDuNi6haR8bjj/SXX3lC6zYQlPgFSalH7eWhJXtl/XL0fcT2c79X7
wX3zKmN3Xz1dwf6IfHBMb0ExrY76ZiKRl/5wPSDYTUsOtj6htoL7R+6aO+Z9
flIZlc06+MTaRMbktbg+RbO6fzZYPy2DPoVO1I94Leirn4Z+1M7LovRLI/fr
PRL0sVqjXlkXZNGorLX6ijg5qcx9GGC6KZt0F7WxDjkn6EODtvTVis2mwWOd
H4WflP/L6xNBf9Jo4HpSTe8NuT2oTAofwONtxPWCvlfPB/xEtsTY23SXnNIb
V7ZyXPOSuqgc96rMk1OrwA3nTV+/pLJpLu865spJNuluM8faWZRQz+dd8HM5
3RtyrJljyyzSUjlzS1PAEreU/PB22SQ7P/NiyRX5P71eUT3F3beegfz8rEXA
E1v7ezzeBOdfi7vNeBR+Qf4/rn7RuDsLD5iWy0hyv/kiV+8y6rokN0jvvYyi
2mw8oCfg79WDENcvwnkO9J+/Ws8I9Fc+5qSDz8w35H5/zBXz0VIKPP5FY8mn
/7z6RbB3MX+wZ9e2qD3jaRW3V29sONS3bRW3R70Xluxz+Mrtzdah6jOeKji/
iOnSaoble24vDrDN+LatUNg/b4+UhFtkUi3V6cM2JcvpidtlO0nbTCp/nN3X
P0XQ/xbQlvLw17TZs9jLNILrZ/+u9ZWM+r397Gf6ipKGajyqyJDT7HOZg7TW
vqKBOy57ebwU5qNy7eXACxJBj76c6ndPXqMek3nTKE2Lh1J63Gnw+7kZZT/r
M4nqM+H8H/T7vXpKDw4+me+TJ/CtskUmkqFvqNVD86khxUW0blmZecygNzXq
LWHd9607925uFI//+PS4t9uhTPlfrse0JysvRrNzCY23X99syQIen2++L/CE
mkEZWax40FdhVkjLF9XrL1Ev+39ev+l79Uu+Vw/LtOsuDYsDBXTYp+GIGKsy
ylh5b79HbgGd+pyga9un7C/Xh0L78BL/yAQzOeUb35treayEnjl8XNeyfmmN
+lGoYwJ6+Z9WL8ppWLLM77iMcpddSfc7zv13C6WVC12vyWvkR25084Khllce
PXaerWFoJSe5ot9R0zN55Lr3fdXo0YJ+cthlbki3fFra5r11SG85pS3vpPDM
yaPzX05GJpD8n16fCufb6w8+L/LcU0qKqx9D1Drw+s9HLRa2MtQsoohfQ/pL
Lr/54XpW36uHA/4xeE3OAT3rsu/WvxLnoxbXw9rRxO9eQnZJjbxU2YN7+em9
LqHFfotLPE9yf42nVnaKufO4vwb2x1f3zCN6TUpr1NdCXnfQJ/S1bZle8eF1
5RT1/OI9zZQS9vfvrsclrrcF/X2SzUt3uzdlZL/XobvWHO4fjjpA+F7UAQL+
0XpdP1qfC3bYfqPTc3xMS+mdvaa2oV4hu08V1+8S568V1wf7Xn0v5n88+bcD
etfKvlvvC/M54xeDDL8nb2rU//rRel84H996YqtVYRU/H9d+8iRuRRU/H/cz
XLew9zd+Pv71wB4rpy/8fFz/QvGFbh/5+bit0bGFvd/I/+X1xLJL63se+lpC
QStnmfofLKGEYUuzMt6W0NTfJiVU3Cwhy361U8Kb8/gHSYM1r8P182ibbE6a
3wz5316PDPbYm6+TLpUcFOzv+NDGFu+4f/1atUnZ4edyqbHhIm/TJXKKjwlY
53oon+I+3NAwbMvjv35fd3OY6nE5tWgzaZVlyxxKkM6oauDP749PnBtVPtdR
TnWeTO2p1SGPnZcPNRxq1VaWTcs05uRHB8nJqen26Ztq5VCxz8aL3QK4f373
TWO9IzfIqfWYJEtJeA4d9d2a7+kjp8ouRg0cF+bSuuneRpJVcjL4reXU29XO
zyaaHpkbNIzTU+nWnt6+W/l5Wlf58ZsG0zl9LS1Ul0WO5udrWd1C8iN/4fQW
EO90ya5+AhnEn22dLNBbm4cBKtdmJ9DGzBdxKwTs2ju8/tGlL6h06MTUDIH+
cuapLo+59oKur7/a2lbA974daOOYnUquW8L7ti0T5JWu4eIY1TSqc0lx4ZxA
ny6ZkbFqIzOoQ/6Sdx2z5f/0enH/7PpwP1r/baR81rSYMzkUuEo7MmGXnPbk
vOgkX8X9K3C/f0N1traWL4+n7D9LUjV6opzl++iy4uWFEmE9o86mZIfu5/Tg
scH8na/QDgy//wbPRqT6CXj5kMczpJs5fXzY0Xd16KW7dPb4wb7+VTxfSMd9
I1P9BHqY//izsc6gR1Re2l19iYCHdV3axmZZHD2Yc7iv/zeeT6Tf79e/ja4U
7MeDcQWB8uf09spuq0KBXq7kuDe16fecDgbOCzCv5P5hC+61GRbzp2Dve17e
7TP2BW0JOtm3rYBlMf43TFVf0O055u+C/+T5SIYvDesrkQv2wfW2qkf9Uqnh
/h1elQJ9Ra+/7iBZlkrfLm338pDzfCX6JvsD1PLk5HgttJNFyUtKHzpTXZ7D
85fY9LZws3su6JtzRi0NWZ5FDw/mWTk9kX+3/h78qkPG1bcJ6SynIKe9WRWm
+bTzfpa3h6G8Rn0++DtAnqKOHjDq6AH/rOf3s57fz3p+P+v5/azn97+znh/i
snCf7rZo6Adfo6ukUfw4ruK/znM1Dw9ovCWMYdTxg/yIv7t0h4s3b4e/25HA
JsNiBKyWpxdsn3qHXLetWRgmYM12MbYqte7Qp+dRedECHm1/dKXLeH5+vH2c
zxmVb9GsHXFhjzzb6isE+W+V6tXUZfdDOpyhOuOpgOtPjJ8TfyeWDC4+jasQ
cPmlAet9C/n5881nw3e63+DtiCvbOM4xQO2rnM4tiywONHtGd1PWLwwT9IX0
uHd6xl5PKcdDa5iq0L5y9NVjZuef0PCHo1OnCtglKVThvegpzYuxu6X5ledL
Wt3bWN1QIaeSgyq5JauSqO2UWm6HPgn6zMh7K2MMkkhzlYpbS6G90pO+hd9K
JJsH+voRAq5nZX/cVSOJAizi80jB8y1dS/HyMi0X5utm3mzJwxSqTUFWTu/k
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
9gX6AzN/GaV9i/5YL/QHZuNV8jP0x75Bf2D0h33M4mCU68jiqJQY/WE/oz/o
AP2BmT+O0r7GX9yr4x4O/fB7YPAfnEPAvxH8H/sb+wPjEsdPiP3cxHH/zE9M
uW9B/+K8CsDYr+BD6I/niP+K/dOwX8GXQd8YH87JwGdY/LJyHwFj/0PuYD5Z
3Lryvgzz1+q07fB6a34jcd44y/6/pQaFzaPKq3FS7X4FNfIbXUm+2sawqYzn
tZrcclvaGBkb16mjV2YYfC6g5JNf68Qvrhm/k5f9dKqBv2CvvRs1WaGfTKu7
vtzWUiLog1GfBpr0zKeS5n4a23cVUFT47OflmbE00Dh53fhJAVSndqWTvW0S
JR18rjGz6ur/qbPTe2Y/dk51taLBxJghUhob00OhPVCYj5myA6bnBb5kNV3D
UTObsjrdbmGoWkyUd/iwaScp1Vqy1yC0+DWZzNvRT3FZRtdWh3q71ssmlb77
dQ3DZXR4pNVoVWkJ7brvFpAj8P/lmpqLfAplFPJpxDAJFdI26+dWMcaFNHSu
XVxCQCEVTO881+dDCb2Z6lrm+baI0++9wRZHQs0pKTR2eWgMzyMCfj9x+Oy9
tW6cZ/M7uJPFoviZd2lzk4dbNfqlsfFB3yDtO07x72KoWYPVzaWrXtXIP+K9
1spYx/8RqcXP6+fb6TV7z3avNTe9++XUyCfivmjh4NAdL2ipfcp17+s184fs
XChdbeDK8yTNf/h4nPuWl1Q+zURNqp3PvquDd9SpwJia8VCPJRUW7lde0YKI
5d5pj6rp8+4XWhtOKawRD6X+0rSX1gn+HcNOpvRXfOT5PPYO976k9orvW4Nx
Ps4+MQU06YvlLlNFzXwdmk2O5/ktLaTztt+cfTYV1MgfEz/Pa4hkUBElm/S/
lNYhgTpPnXLWeNQlmvdkzGGzbs/p5Iltv/ebfpGiUtqFRs5JJ+2eTvlpB+9R
Z/3MYb4h6dTKVF3fRiWGnMadrNQekUGr3hwvjdzzgEw/fD2U9iqLqOr3Su/M
x1Q7QOOiXkA2+cyeOcPdPJFS/AJeJJjmkr+OR3jko2RyKd0rCT+XR7efP9VQ
MUynO31tJ8V45dOrN586xo/PINvQgFC1GcJ4zrlOj2mcQ4Xqb1obCnqE2tVm
5/QEe3H46D+aG54qJm/nbbUde8nIbs1mE8V+KbXMVdGwkBZQ9pzgj55jBfnv
mLXf9EUBhd+ZZxFjXkIxx/cYK6iA8u7M9ddbV0QHju/L9atfRDsehrq6Ti2h
3/3Wn1O7wv2PzyeZygy2u1OwqcEZnYM3qLZ7PjnmbaR1iqRGM9tdo/CUi+2D
Dq0jt29/tOrSIYoaZo+RqM3aST1vqiZVxpswes1yTB7QafVARp8q+tGXes8c
xOjzyNeYPp0E8wJ0MHNmmu2R0CGM3s7HTznY7PZQRvdhQxbYr5MOY3rzXvWc
qeukwxm9lc7Z2P252ShG1x/2fDv4xG4C95dSnrevbat+Xm0u98dKGrDfISSO
61t7Jrwwkwj2X8RttSy/7qU0Y55jI4tnhTRf5ew6uz6ldMDB+7heRiHlNrkw
wn+8jL7unTpe0vE1uVXOWaX4vIHlT31r3Nnp6aUimuTxsFnDgHzq8ovBwBP3
Q8mzX7Miv6mCveQT32j4g9s0bHr9ZwnzpWTtvE/LJeUBdZi94E63tVLa/Kfe
et+PDyg5M1b1pICHuceOleo/IduGv70KPyQlvbdPjpoZPiVLebZDyDEpfRyz
8mJkTDpte/V1hKSjjPJJt1P84Axa2O+X6JLBAl+bYpNrXfKSNGcEX1YzkVFk
dsvP2tdfUXLk1612U2Vk0X36He+8LLqq/bKfwktGPmuyemq9zCWv7WrDJUML
KL9D/iBF6zxqkfjGTGJVQMvvH7msRjJKKpvwKKEpr79tcPjTh+iPf9Ct6B66
NvqPyP6Z36NLD05QlFGFyharRxS2v0nV8Lo8X0Mjf7vPwy+fIr+39csSRr2g
8LGN/Y0HX6f7+k/qH53zgrZcTOzV2PM6/UFOaw3UUpn8dFA/dMj0Otdn1Y/O
b2oxn98/srjD4VN3lidm0qkm586rNRT08z+XOYYc4vFAkzKOJSS8E+hlpmkr
w65FNfIfBC1IvqY2Oo/k364d1G0WRM08+lxRs5OSu+W+NzPHnKI3Xc/dKRGw
5vhLct/H1+j6wjdtDWdJqWOifc/GNjfIUm/07BAHKa3b28hMx+keGRwpKvRb
JqVr8f21XYLukevyQ9vtXKXUYVGHF+WR99l3j570fGZ8rUdkurb27JBtPN/C
wT2Nu2vtE/Qbn76zQ0cKeusrk+12p6V0K2Fsb60GufTgRZSLT4sC8umxeWpM
51y6sOFPqZ8u18u1pjdc7dpTsJuqPP4wnZVbI5/CmOl+vqZOPN505MPhF9V+
LaQwX+sSz2s8vqGLxKGRRUIh+7vn+t7Ndq8KSXPC14cJL3j+pNeUtde0QrC3
WpleUqtbQGali/UNd2fT4oHteilsi2lzh+NhauekTH9ovubhYPsBxeRUOPlI
4BSenyFq1u1X2gUcQ+9Z9TTL++j4zsxO9XYf72dz8zKTU0u72ex0vxxLxoPG
VGq78fxLy1vtHOA7I4vNK+hoWa0NC0I7PWb29I3EaR2MbzyhA80ebysfLmF2
28ubOtb2C3neSOifamkZ+c4ZPI9k/yFWec43E6n7x0kLDZJ4/qYDDnoR3l94
vi/o3Stb1rkW6cHzNMYdVR8Y+nsKzZ1oTO5TeRwx1u3lfcV0s3vZTB76fBl6
PHJmDtmX9FeRruf5nkJzx04xcOP5s8APqx65Zxh9ldKkuzHzzPrxfDATFJph
3l+4nox47eDwu61CJYWUl3fhmdE5Hq8NPbOhk12QjmskaU9OcY+wMWb7FfP2
69uJwbI/ztDJ2nNSvL/w83LMS+ypRRW+O65QL32VmMCY5Brndz16qxX4XrlF
9VZZuhtMSa8R763aadmSeP07TE/uuDpnglQvjub5bPRLW5zJ7EXmxz5J65P3
JJ6vrWl45Qhp1XP6Ly1DTSWb2YuYx3ubesutAwS9vaJJH18/nn8L+vmY2AWq
OktTKcFLtq58Sc34cp3pozVUVqfz+PLy0BuBfhn0oWjkUo0W/F7no/TLFrvS
mvHlk736biqvyiHzxmPz/I7z+PJZtefZuYfw+uCYr+mGdg4hxdw/O6D52pGS
MVLKSVF9EW7M489/OxfzyLlXdo249pMdep7Qe8jj0W+0vehtd4bb73GBx61i
bHg81JaIyhaGrwU9Y7ZJQ5fLj+nmoM3tP3w8TSsebCKVBk/ooPH5K493h5Cf
RZGe46JkKkw8vnSL1k06aLRRxdGugOIv/77KRy2Hwuj1IMntYlr+pPCcmlsR
dcxy6amIKKbZ0xNy/FYWMb05wc1lWtube5ne8fKQ9asDMwOZHh4b4NXUYhL3
r34yZsZIyQwe/5McqH5FbRE/5znyh8TFpw7XI3t/rNNXcamQyZXV5/2aWLjw
+PPUY8lWMX0KaaXP3QGG/ikU72RVZW90m4ZnLxkX87WQrMMeKTw351HAme3t
pPdTqH6tE8F6FcL3rN64U0M7hX69f3ebXYkgt9b8ss61IJ/KdzTwNb1ZQB/7
5i/1uZ1P8xxsDLQuCfx5acUvhgcF/jtiYaBeXAF92hYz1+doCV2qV+bmmlhA
IfY6VUaUSNtXNGk281AYJft++WZkkyg8Z/UVnagwKllpurvc8BU9fd/siH3r
h/TIdHax0ZdMimvR0Nud4mn55WlPnCMk1DlzimOo51MK9L+YH26UTQERY7cY
uCTQSO8+vna1BHwhZHhobYG/rTrU2bCBYG/Y66Z4d0iirzbRlZ5pOXS81uLP
RtIX1C85YrAiIJe22WqP8r2UQlrOdhoWVwvIYETHPlq7c2i76+AHCQ7F5OKn
clLvjpQyXz9vp7WhlD6lxfVWzCmiPYvk3v5bjCmgVp+v9vOj6EzpwszwPIH+
uhzboGH+itY5d2yisiiNBl24PV6l811auWXjaEnnfIo+9jjF2eElzUlsPExx
O5u69Dl2wDRV0G/qViwMccumFttUP3g+4vcHH/MybiWE8fpZiM/Hvu7wObzC
8wX3p7903zVUbVUBpRuplUS6xVLbcyutVfccJ4+s5ifTlqVSXJ7rWRWPaGq0
bI3EumUmFU4yflIeEkeLCz74pu1/TXsexp006PKcXN4fTrP++po+GYQXBH5+
Tt2vJA1RLM2hw/tXNtBRfUEhw8ddV6uTR7bt7kUHHkklWcO3d0p6SmnL7HI1
laaZNKxh2vhNnjLSer/YJSToNZ2tu3Kof3ghtTg/+JiHVh4dHJMXa160l/a8
zreNEfTRhhNuRJlvO0inFO9MFAK2N+wRq5kh2EUX3z/bk5tP7h8tDpgKdD9o
VUGe38hCdt6j1nD9kcs+U2hw6zvyWOP+NeIHvqxInmkTsYyMNTss63cjlHLC
ClYMX7KE3NW711n9IozGNXA4Gt95JWkM2ntVp30Y2W4OiXXfupzKcs7eUokM
pwj9bYNcNq2lVPl91wibATwf4NEDr3JUTBn/7Tly3vCGlwaxdYlv4/ywMp4Y
3+/9ud/JP8uHMH67zvGmbKnKMCbXr31ZOuyquxnja1ZJKx6c8h3B5G6jhY5R
p3xHs3V+7h5+1rKLCdMX5lvf/G3I8IFMjjWv3H7Q6b0pk1smt1eor0wfzOUU
9bx7134IO69efTas9kCXoYy/b2x/L/6U7zAmh07lnB9y1X04kzP5b1znztEZ
yfj70vI2pkdCxzE+DD5/rkOWh8bHLOrY1/hpgqRm/Lxpu16Z1nOyqLFB/Ca7
sTXj3w/bbTLU+iOPRvm/8j408jjJRrYu8hP45UzPItWuBSHUwz1pic9kKfkb
ZIUZ3H1IPdYN/ei5WUp9xpYbGO96RPrH9pkodkhJP6vujPgD8bRUrcjDdY+U
dm8/vtZd9Tl9Xah3p+SklIa2Vm98dGECxepWVEQL3xX4eqST/c0kmnzz90Om
j6XkMbntIMW2PHJR7eHiI+ifDgkRIQ7BeXRm/G5fj8UFlLB55NIt5jcpoOG7
Uz77vJheEHBsh4fkkjfPq0i/n9ALlJGtblS6td1rCloRqmt4UkaJli6zQpbI
yFNh+iihbSGNdLjTT7FfkHMeDjNCDAR9deTAR95Z6fToU63WLuN5PIjfGMs+
ilaC/Hm9r2PysyIacv7wyrAOReye8f63G+/UZm2g/B7PVBq3d6Xg3jJbVWF/
PbTvpvC+8ZSyvozcbnec5++7btp0u12UlCyaN1sgGZlEps1Omfs/kNIJadAC
SUUiuajv8wi7K6XPHyo+aB+X0Gz7mR88D8hoRPqtRQYyCcU+sP3geVRGL2ct
eB3eK486JVwMVZso2Gdd07a5txL0HM0R/V92DKIPMfu93DfGk3eD9N26H09S
jzFfLaWrHrP7th1F/Rq7LOb583CfFx++1r/W2JPUIP3rxpDMJNI+uGDVFtNr
9MHywSDDohfUftEuw8YPbzC9Ndpn4if3LRF0e8pLR4k296fd4KUx396F59dz
/rJiwqZOMmrmOKv2+tMSCn0YljN1SxGdu6PmGTYjn67sOrTSd8Zjyrz7MEzN
V0rZk/YPC+2ZSLkh0grPG1Lydry2UDIlkUY4nndwuinoSVutxkr25FLJLB8X
n94F1ER3xlyfFB6P7et6xMlnSRGFjHQcF6PK8wmteZC2xGcij4+elfnhSYKq
jMf3fcvZ1vIlj6/prz5MOnUTj3fuG9FR7rmjiLz8FjU3vMvj53rcWPU5/PUL
+r3x2QrKkFJifV/PMA2Br+5Xs9nkXUBXJw/3s7l3mby1g++UTJPSF4N2tum2
V2jD0tCTeoI+MlG9fb61lMcjST/OXOuu/5wCP10edML2ImUWt7ocOSKNyHi4
poW6jPpuTuoaXzuNWv2+IVivvowCi+lKpEYqDbApre2okJLTN+ewSK9U2rVh
XoWniozc5zwN1ssS9MABSfpanwrIt/nLOyWDpPRW183Z57lgJ6xz/VVLtYR2
JTrpGj6VkeW5tzEJbUuIticF6VXKqM5p8/e+MTweT7te6xfhXbk/Dvwik8Zk
WcZY8/xBTkWpTxM28fxAu0OHbbcLktKv9YssJNN4fNqkCU47TdVL6Wbe/lWu
BwrpUfvXOTNLzlPwVr9X4VOkNN9hZLqzIo1ir9VzCGkpI81t/io6ddOp6b7w
2o6tZNS7ouUj73fpdDdlYHSJvozid73vEC/LoPCxQ/srLGS0r0/AzcANL+l0
szYZ4b1kNPbL5mA9NRmz8+APdVGSP8tsu4SO6O7aZLeY52/HOs/sP/cXi5H5
dNHzYblvo3Dam/1wiY+9lE5Z/3ZKR+BPx19vfRU+h8cDjo0orfC8KmX20+YF
73ZHNiqm1096efT+JKXxLus9fLpK6GjOi94RM4roxZrLv2zXyadmGu7y6GlF
tO9D6WmHVgK/v32zqtWissGov4h6RW11Kvq2FfQVtCP/eqLGsrGq7YppbUiZ
kyUVUYCNxV2Nfg/ZvQHOv1qkNCn3/T2c1lW1SPa+zuMTM58fX+b6oaRGfFcP
z2l9FZ6FNG5dkswvQFYjDnFRyXoVleuvaVfau2y/DzxeEXFh98J6N7P4wONW
Fda1RkiuCHpMy0erXe/zfETQA05Vmb0K387zS2r96dTW8JyUAt52aKwzg8db
3s04O0Iygccnuw1fEZtwmccjD96cHX3uv+LmTt+8o3Yxi77cdwiLfSqlY7Ua
1ll/LYv6P36SXNGniCzmb7bb9JLHF5peslzraielCd8GP9Bb94KKJ3ZX7ZQi
pXcp/Ts4hr4Q7FFnj7A0KbXtaxmSk5NH18b30VniUUCnEt6MblucR26DzhjY
ruP+d+ERnxf6tChkesHHVrMeaZy4RwOPXYtN2MnjD3e0tV4etriYQu+ZTXMS
6OBtpO6XYMdiCrbxi+g2uYgSR48bKOlVys6poKdkWD5UdVzL88fezHU3URzh
98dhPadtsRtZwOa3ybj5+3XLT1DUY51hKnvjSev0hd26jU8xPWt5HZM9Nq7X
qUeWffi52yXUuI6R9hJ1Hu94x8vksOk0vj6Bfh53D1SFMrsyb7J2uaekgMIs
R18r6c/jHxEPOeCMWi1HdR4PabqreTetdjJKujTIOLR7zfhIp28rajua8vjI
2uZH75TMklLc4VIzw0UJlHhmTWGGQA/9EvKqwp8KdvukDttbCvsPeus1U/uR
JssP0CYD/ZnS6Lt0atYSR9VL+0k//Z1L/N67tNBNUlphsZ881vS0sL/P4yXV
97SKkCZG0UjyO6m3QEpHioy72QTfodZ+BmtdXfg5ZG2Ltk+s18pontb0Ue7d
syjlk9lB01Uyaurs2j4+N5MEZlXbcRn3I+i/6M57T7mMat2Y2Efr9xyaE3Q7
PfyTjNobNNvsujGHtCbdSA//IqOEGQt/keeX0Le3F/tGWPO4+D7dWnjZ7Smk
LS177zftW0jLhs27oBbA83E/vDCgt/vVIloe0zHLT6eUXpW2mxqiUkwL3wZf
M/jjAV01abo2rNcfzM/YrVf7EIcrR6mjevES307Pmb9TbP92E93LU8ii3flW
XXSiKEgr0SpG2KfTdUcKeziX7dtlxrYdDW1yKffi4pslrwsp7rfVgxQT80gt
zrSRhbSwRn7IwvXXTuoJ/H34ho5tuuy/RcYH89saOkpJorpvuurXbIqe7vJY
M1dG3rfa5IW3yqHy3+82tigQ9Dl51Z0SfR5fWz/yeYnn4hKa/nxaqNrmAnpm
08ZQsYrng0V+gV+DD1vH3C+gjd1OPkrIKyB7e8u+ii2FtHlFz1K/g3nUJtr4
vdGXNNqz9K6rqzXPtwd6HdP4QGzC8SJSqWu8MvR9DMVuWP02I/swPemy5Vtg
4xh6cuXDJYcrB5kfcde+qnsPbTnCzsHqvXP96OnE41V/v/dijetvMrIr91xi
IMui+L4yXUOBj8ZvSDyvN4HHW8KPQNOsfmx8u2iqs/m0quNuHr/a61P8Ap97
PB8c6H17Xtu15cukdGauZhsXtbvUcM6FJT6LpPT/lXXl4VCvYTuJUyokS2XJ
EimV0sk6eew6E0XWVCL7UiOhSCjnECJbkjUqKRUJh7KPJaPsW5axzQxjlC2i
nHzzXdf3e39/fH8+1zOXua7xvO97P/d7P/drbO2lpHyoDmYzYyKtruP6PB8l
uCi/awJ6G0qUBD+Pwo3K2IVgHly3KJ7P/4AgOwF6SUusYGt8Xh/bhzrOmsgl
dkyCo/bwZmLEJJhm3JQTfD8JxiuLcYQJ3NcB2+e8to02to1PgoyoyztW/zSk
7zwkrGg+BVl6ybesWqZhc5PrJuI3Jrjy/dim+O80LI9F2OTWMeGU3fmjii1f
YE3cXtiztQ7tD3xp49b0k/Vg3R2nlfgdn5c9rL0/xsoTfy8B0yfU0xrpJov4
O0VNx5pUVmIY8PN5mgRlegidaxeGiVMmLvg8bY0VicxqGIdAEyl/ee8+4OQS
NyHzTAIfR+MeRf4xSKDVSAm6sICuOlfK+pcJNmW/a9uesyC208nXu50JhsKp
Qyl9+Lw0ph+0Nqg2r0h5j+JHjwqr8mh0sIkhLQefwPXImL4wZSJmPjgN9995
/5RZJ/JADZLWZtJtretg+NLR1SrqI1C8rnshV23y/+lJ7x5+mSm6VAGTdlfP
217B38PAdCj39/il26bXQUCyTJbrgjLSn0q10LRlA1SghxI/0dtcDceeFOw9
x6sC2ipntoVvroYdIRvXOwXg87+fridvInbi874YDjF/LbK9v9wUfiS2/yVR
mArvdQeSf8wbQrbBQNCZM4/Bem1O8WmuCYSdrg9TufEEtFoGnMVLrGAPYe/S
RVIWuLD4q2+unEH8BIafr6i5hGaEq8KqXcJq1r46WJYx9iszVQXq4K54f3cy
hPIedesSVYX/VhQ8KPG1KH8o+e17eXb/d+ZbVPcqRQXNgW9d2XF+hq4CV85b
elACauHh+O9TPAUqwB9ZYrruA+6HqHncWYyjxBOWFw5kMiJewVKcjDSHnxsI
VKTLfil6BTdIewXFqt3gs174S+VDBSD/Yfu7/PNeaC6I5u2wccHXF4R1zlEp
Z99C9vdLHsqt3ogfwfq0P/g9ueOy1cEgOlFOmU6BuJ+mK3me6rC2NfONvDwF
ROkq0w3K6iChUBDub9KE8v51hbTyrRR0X4vppZ61ig+PrlOH0rtWD2yVm1BM
OFFjR7nxEa40NC3meRLQXNO+dsvAjHACnJKJyfJuw+O4zDg6y7sNNHOkL3WJ
Etj12dPH/Qeed1g+G57riOcx/RUWcxZbV83P4fEFf/1b/sqtIOadYtslqon6
NON47fk8T01YWWtXJB7qgt7AvfQGZU0QVjC+ndveCSzTBcoq5ThIXov3ITt1
ony86GhMdC2ex/RcWFx466gL1RLPHztha7Oy0oH4Jmw+sXSfcNGgvBY8GRSq
lLrXC//ILxvP0AHSSjaKOx3G44KorvWpdT0ortN0TfKW7EX332i+6f/yfdv/
DMwt6gG+7VQtngIA7V0XSGRrnN/C9FTEyM0kB1FtOFV21miFiceFQjF7iPf7
YZe740AURQtURGIzrGT6octnzj6IrgWXRV/tIQbheWydY/EfKh9CowXw/Mnp
c39H//sFvgd0LVgo6yB+yXSdqEqrrg582ygyWWxIRfFHn+0HFL8NgdTItSc/
5rXByE8oh3BnCJIWowsG5XUgYo+c4crAEDh3M8S4+rTR+YV9Pjfsxm6iF54f
2pAh4CQ8BArbok4/ytdFcxO/81iZP+Z1YeVXTfzDjhG4m9QeL1ChC6Vmb09n
5IyAtd/+NXVPXQgwL9zyzAvPbzzI+l2VNgLjdvzzFsq6SA+Hfd6Go2TvjDOe
D1o2DytUH4H6ifsdURR9dA7yJvMcbtU1gOnMN/UKt8dA+nKPEFefPqRVS/sa
W47BK6vyjZLZ+vDYsf6bjSSeDxERzbM/OQbc0r9cHET1kb5u3kjxzsFwfehg
0TtjhfD8kESokvnUKFh1T6ztziYiXuJeQdL1g+EnIdH1qyWnIg2KbA7pPson
gl7t79o8bnZ/SpO4eTD8L5jLnU8JbBuHn6ezynMSieDHf4dlszIORk/bzILo
J9A5iH0+9VwpoYyM51lVvNKklHFYl3JeUzZADc1pYueM5I+EbZ7hjaB/v/Vf
pYtqcGXxvKRpUwPiT+8JXFnJmqtHefNDha3z+Q2Q7GVfI/JAA/mdmt38ZshT
oAHuMg801um2IP3IfblRwrrwzzCv/ljyHK8GPC3xkFHO/4TymTbvVsI8PoOB
mNJ+Lb3jSFfnR/hSIfLgONhd4X1lFdyB9CfmTqSjROkOxN/avi6ScyppR/mf
EeKbU7d3AHVe+bXSRUBzQ3smX8hp6QHExz14Rxjqhjcd93ee42Wv39n9rdy3
uxH/6x78TkNRCM8rvH4qEHK1GwxbOaMOhmshPTqmdynZm/SRW+MLPDUntuQk
aoH7pssXqMN9iD/2MS00WbnWh/Imus/2Elv7IEE97FNOojaax8L0MoMVSUNt
yXgc4jrvSNYcRPwzt/t3alvHAMrPxl8icx8cBIsP0qJcfTrovMb0Nje3mvtH
Lw3D8rHB3iiKDmy7/edCSvow4q9Fm/wZxUeGgaBw2vRRvg6kkHJMqZHDwOmy
EHowXA/5xvRwmHdFUfTgg4r42OKLUbCbVmvMSdSDp2Q5N9egUcR/f+XxyAw8
gecprganJHxGwTvBTqPI3xDhWwwnJNesKppbs+tT7ZQAV58hOP0Z+cL+0Dji
zyVyN/gYL4+BEO+uZXVPQ/Aa5OmIlR6HWiNpazOKCcIjCSYFJPGSMzDT/MtQ
YgMdfv/5rs1O0RQkc4JqFEZo0KHk6XDC9DSICQhZhr6gwS//vOn9qSbAUJUp
MmilwVnH1HTXBVWEN7H6v+vUFu3fVw/jp27HhlaoQlb28nDvznoIlA3b7ten
juY5sfuFjrj2f7cmfkL52s7A1bDeZlSv2JwZFu+aJo2znuOx952QLalE/D4C
w5FYXPfx3VUyF16vQebBUk4vulC9YfOiWOz17MdaigMe35ULUlbc2AcbHiQv
Wihro7lDrL4SNZYFnWoGUJ6vUK2D5Yzfd2DzA1h8LKq4QGo3Xk+KGfqfWPVU
iJC6IzGTRoczInytrCND8L7khtzUVj00hzXVs/t9ja0e9D8ivTfQHEV5T1dK
ZqDAKGiWviXnJBqg+VWsHmoLun9WTY8h3WY6l6OPce0Y1BkYd3qtM0a4Grtv
Kbh62JIzhQZq511GLJSNwUvD5p7INRoEZDDIUtpd7L+3RYI0TIedRdOO1Mdd
YLnEz/mMjdfLFxYlSWo02FBZWZ4Xi8+/eqfYnGy2t4eg1JEMDsFncJa17UkS
+Rww+CN+6j3IgbboGOkI6kXUF9Dla3iICkwQlgo3ChWYAq1miR0z6kzI5hWO
XV1igmq84g7SESZcnRMxDq1mAt/bJtkuCSZYHOapslM8h+ZzsH1RczEm0JtM
h1M1n8oI1h2w5c+H9q4NdOhz2/W7uK0dlk31JGaq6NC7OyvVW6EL9NpnJPdd
LgMeP0Kqt2MX1Jdsnkr8rwz5Z9TOXCTT10oR3q6s2lQmr1OH6r1xn6+mKEc9
wqsjs9HdvWsUVN8Cln6u+eXNkMnwigitIMD6bZv8ydQ2VM+HajSapAjtCO+F
p9UJhhzH67k/Pdhq5VEXwmMJV8j7iGk4Prv/B7GP9aMX1aNMOFep1K9+FBen
E78WWwwg/FKUaWiwcpYKDULH9Ir8daA1p47P6R0VmPJHI0QIDFh/bNdbKQb+
jgH365xmFrt+v81M8EVq4X4e36dj18sexP1qMb+PXEmFT6wuKsIv7/J5e2IH
R1D9HriiPu67cRThCzEHso/xvTFUzynN42mrJWNQ3nZ8M1ffSUge4GH1E2hw
6sjRhiiKEXtdXLv30JEGcybHQ0XSmDBslDTVH4TPd9w7qy9JSqdBTvxpY84s
3D9k3kOlTCEW98PFfEREO2WXwZsGmgHN90VCxth9Io3CrzgBSs0BcasH2H2t
+4nuxa+TEJ8dHxe4mwli0Tf+fsichMHiSUHSFhYo394+Aw+Y8Ir/+nQVHwt8
AqpjA5OYqI8wclAlff7f9wqs89WpUdOwvtjUiHx4CpYpVUB8hOu7KiPl+gNe
vACu3f+8XYh1hBIxRebFxly4m3BuMFvJAfErSdvXNIhl90BLgCKyL7USND/8
tBDUj4YlZ6eH/h7VkMG3fF6iPxatC64E6+h57UF0L/tG+Nfd3nMMeJj4O3p+
fAAKnwqYkS8wQHWS31veexA4HY9NpLgyQPxv+yPmBikItzmUjx4kPU5Edb6r
OVvIdPAT2BOlkjg2voQ4G75riRc+I94Lwz1bfcJ7A2TzQON+jbTisXHgGtEV
p/P2wtzXBGsy4H4oew5Y7FSMmoQCG4WXUp1j8MmEcy448P/7o3hxBCwFO+L+
Jz8PCN3yvk4Hvyj9vmLCBMTl6s0FW00i3uZS8469gvbs/9fN/g+sbZOIB8L6
w3NOHWqiWY0o/lrla0a3/Yjwl0vgX1cTbVtQv3bw4myk7a5WhL/qehgNUjE4
HjN6pNMgxepAeIp4KfsSdbob9TtXFXUHWCd6ED7qD6DNFp/E+xPxLeFu5Jwv
qD+Y++K2nPJyEMXa2eFB0RuG4MrJJZrXOl0ITfuxVrVhBOQtQz0cRHXhTXeI
icSREYSvXTa5yZKKRlHs5nCmrGEY1xMzeva/sHfE8XDJTtfU1ehxsGg3qry5
YgYOd/kGfUXoYG2bfziCagVD9sd2k1TY+6dHWk/+hQp074jxRpfCLOJz0yIQ
Tsg2i4i0CqBDvHvKv/IC9bCFr0qCFID7oYh2R5GiQ+jgEZykIZrVAPHetZyy
Ifh8beqOr/u+Z2cDjyrxZmLRR5A8ukuvUuAJ6mvf7AzIVPYqgf92zr+0kuyE
n2puWguDJQjXHqp7XE5vL2fjZP1Wbu9uuDN31Ta7shwCOHwHFq/QIZmjRpJY
MghpORquFEIdOE4St0Wy62n6PMmQ/H0aXg7Un809OgVtMpG3rHqmoUEwT0bw
zBQk/kn1sC1sg5CGS9Genm8hWa6iJ0ylHfEczHMXPG3d8Xd1sP3AnJ+aatpf
AD3xB52jW6ZgxOjgpzYfBrp/9WmX5CO+Za/PoLAYwhfcL6Vu4u0L7jJ8Phjz
C7gW80yfasmAvR2rpxIp7O//vf+p8sd36Dzscxc80xdYBBUvK59bzXZBUS5r
P6/LB6T/w/SAYc7j1mSBcXRvjOFQ6s4+O9vZHsiRXeor7mPA6rsQWvFpXEfH
Z91IK947Al6X7jNSGnD/FozXLRRadc/1wd/zWLTsHC5eHANzhxFJJ85u0Fkh
R4hM0aGgwkdY8cAUWPkJveN2pcNxcc3OYqEptI9h96/NZr4Sik/pkL4ib0K9
NMLeT4wvR9ezv6e+8URGLI29X0jlGzybAMmU/qBCPxpwD9rrSmROIBzKlFx/
T0w6F/S/vRA2NfwE1s4O1QX/5UK5xoERbpMoqFO1+yhotxcmCqVDPncmoHNf
natoqJyzBeL5d+/8LvcKIm+1EtbFfYb4KrXeANM82Jj2Ldm7sBsSGemPRT0r
INX5+E4nyy9Q4tQy2stXB1vsTaw5ncdBPT6G0fZ3L6irPJmuWpoC107WRddS
BrQMfPwYazcJYiGhI4txY6BkaJYYyMZV1SIep0NJk1AU/uvuQ/a+vfz2ajPr
+DCYF4zfFXFjAGegFKPYYRi2m3wvVShhwibjO0GFuTRw72nu9K1nwpl5jSKD
GhriMw89b9xvOl6N+L3sBJ99pk9qYDKpRYVXtAgOuVy7LKrvj9bXdzP7Qu4W
Ojz6plNKUOmEZTMe89B2OjjuX3lpJdYJl/cf45Rtw/1R6rnCFbqouJ+ltXSl
LtV9Auw7gqmLxePwXwaj19cbf/9hblmB3n9/AjZm0vX7Ln2ASskNE9xe4SDr
uF2vz70cOp5TfrdpRIDzNHeUv2cjfPRcd0splA6lHW0/sgYaYH9QsjnnbTpU
tpk906U0AsWtrao5Pwv4NOlrYcwmqGua7Xrw6yl8qd/2Rv4G7qfiESNwPzqn
ExKq7t72lC5FvNs16c6SdQGl8Llqu4xTHe6fgtUBdu5g5yCmr8b4P+xeHMNz
2O+C4TWMn8fwGabjxvAZxtNj+AnTWWN4CdNNY/gI+x2xvqnS6gKnUxkd3JTz
X1sltENiy9XP/BV06J/1yZY6MgEZmu6nqS0jsPSf14gJGyee5Ey/6W3EXtdq
af3FTDrYnhIPs/rFXi9fpLiINtPwu1Dn6Aobb9dZ/zAkP5+G1YjuPYIvmGj/
bmqOe84h/xhIdSYtbZq4fwrWZ5dx/AjwfsmAjtFaUfpkL4CnabbtUA0U0iuS
5md6QHbr+/55r2rEG2xwKOqeP0FGOptTNOfb1NlQdG9v9sBuZX7xFu7nm0eJ
tLLA3zNZtZdrabPE3zPZ2qGZTLCmo/3yr+SW0ZTrTHQ+UGQ6zcizdNQns0j9
a44lE9CgFsBNfIi/r4T9vvwVx3KUHxcini7p68MC7nYGup9I9fQwpFrg/sZB
NXf2Csri/qHxl81uKZnjc+ZUkzKVlYe4/4YYSVNMkc4A4R0TszasEZjmoC5U
UXH/jS5PpX+sQibB8eKYCWfqBGgUE/956D0JvCIi/krvJ8DmQs31wpuTkO9+
ItcquwskRhZVy9j9Wnvzy37fUTrc0bV5Rpgegv8BGGK5eg==
     "], {{
       {RGBColor[0, 0, 
         NCache[
          Rational[2, 3], 0.6666666666666666]], AbsoluteThickness[1.6], 
        Opacity[1], EdgeForm[None], 
        GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJxNmwnYjkUXx5/7nkFJhCJK0UIiRUrWJIokKZJEtpKtUKgIEZEtW6RooU1l
K0IpLZJSUqG+oiyJSJI98p2f83+u13W955pzz5yZOTNz5sx/zjxvqXb333Jf
mslkjuTKZIKlfyWZzC6jS4xyW0Euo9+NP8/KzjQqZjTCvqOlJxvda+UdjSpY
XkHl5TU6zegkfZ+vesWN2ptcc6O6RgXsO4/kjtr3f0a3Gh0x+tfoaqNRRiON
BhsVUtunGJ1tVNjodKOzMl5WWDoWUP8Drc4Ao3uMLlD/yJYyKirZS62shFFe
oyeNhhsNMepg1NLousRl86vdkkZFVL+Y+mHcF6pt9KpiVM6ovNEfNjc/Gq02
uti+z1UbpSVbQrIlpdclGZ9r5uwytVtabZVSWQWVM6ZLlSK3zfpYZfSVUUXT
+1yjU4wqqo0yRpfbdymjfEZX2HfZjOtVVX3T9pXKQ69qyqOfq6QHcjWkH23v
tP7WGH1n9Kh9dzO6z6i66iFXU7KVjOab3BXW//mJr0lBrd81RpUzrlcdpejS
xqiJ0S1G9dUu/deTTujeQHn086e1v8Pa/sPoZrV1rdENKq9ldJNRbfXZWCly
16k9xn290urqnzbqSo+66j+/bZpTjRoa30x10PE2pejVz/TobHRv4vWqSO87
jRpJl9bSA31vVdvo0lQp7baSLHJ3SRa92kon6rVXHXTpZXSPUUejdiqnrIDN
T36jFsZ3kCz6Pmr63WjU0Ohu5TU36iJdW2ltW6v/a7U+jKezUUvJdZVsa9nB
XVrD/vq+X3rR9u1G3TUGdNxjev1tdK/xD0g/dHlQKfUWWHkV07F04m21Uf2H
jTpJl77SG116qG3mpqdS2n1Essj1k2w36dVA9jJA+qLjKqP3jZYYPWc0wmik
0RDNdW+jQeoD3XeZnt1Mx674FulHn6PUH3tluNFDKhuh8r5qt6/kBqs95uBx
pfQ3Wm0wr2OUou9EyaHXOKPHpNd4pbR3stnsSUZDjZ+q/tCrP3vGqLHRFOmH
7k+p7YFGY5XS7jNGwyT3rGQZxwT1gx7T1Db6zjV63ugFo+nSb7y+x6ifF5XS
z5sZ14O2Z0iWtl/ROJ82+tnm+SejSaylpZ2Nqpr+M+17snR8Se3R3xvKo923
1Dbr+Z7R6xmvN086octszRHjmKOUMcxSvan6Hq0xvK169LlQur5q9I7yGPcC
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
/Y5KcsZJHnFhZEZqXCMlEzQfIyWbW+0E1YMnnjxafZAPNuOM4KybmziO4awD
04EnOEsvSX1cjK9w6ufoeK3nJK3XEtkQ9sPZ/kziZzvrPEU2wzsIZzSYpGrq
doANvJr4/kdmbOo+BXzJuc9+Zp+WSx2nZvc3eJV9zbnEOQUu+DX1twHOeM5w
/AJ7s6Z03y3MNk1jLJ86jpye+J4DT7LvqivvS83tGK0F6wpGLaq5AXOAM25N
3R9xr+ht/M0nzBFpDc3BqxojWAPswPrck3o98MA5qZ+7xFo4HzmvOYtKpH6+
EvPbp5QzEmwAHrhe6/+41vSA2uBM5UzjrnK75mneCXP1duLYj7kH0+N/H7H8
5prrh8CPqs+8z9fc97O8FrKJabIb5rOv5d1+wpy+q3llHRYk7i+xkUWyHdZ/
sWzk8tQxSgOt7YdaX94mwD1gHs7SJbKxpmAozTtjXSpbYH0+1hpxNnBGgF/B
YeAx5v7c1O9+tTSXzO1x3GL5s42W03/qe/Iz4+sq767E/QrnKr6FdIX40SYz
yuhL+rf0ptQxIDb1keyKu8hK6cOar5KOX6hNzuPGVu9a1W2S+n4Dx01RXh2N
6Ru18yiYIPVv7i34UPbjAPGclWekXkb+HsmdrfQ78Unq+GCd+B+wT8s6S2dW
4cTPLfiySteKb6162Gp3yS3SOcg9hT1Iez+qTfzzBtlnTB1zgEmvT/37p8TP
Fs4g7HyT5a3XN+1tUpttsvWMflGbrEVD4UXyuCdwDnOmd5Y+5N2QOjal3YEZ
jyn30DkLtuV85C7N2cO582Xq3+A48OgW2Rh4GB5cwZ3pL61LZckXSDx+wHte
9rdo8Md/H5Z6Gfm5xefSOUs/YMXSqd9b86id7ZLhPsd7CW8lpLyrgJd2iudO
xF1zp/gvUn+D2am2t2pctPen2twl/bm/3KB2aZPxUMZ594R4ZMqmXre47Hq3
xv6X+Dqywb9lh1emzp+tvD0n2OEeyTKX/2g+WZv9WnfW9oBs5qDw8l6V7ZOd
1Eidb6S8/eL3pn4Hpd2sr8e310q9zSaJ3+f4LV9u2c1B9Yk9H5K9/SoeXIjs
Yclvkc0UlY4H1eaparOY5I+IB0tyfwZPXpp6Pr8hHK02sQfmtYHWhXgF/g+c
MMkK2wT3ucRCsCHkud8k2ocPCOez1zLKh68ibH9qxu8rMc25C5LfUmmQDGVB
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
qou/qR/c59xrfNHgv21hT/+rff1/i3e/Xw==
           "]], PolygonBox[CompressedData["
1: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
vV1n9D9uSXyv
           "]]}]}, 
       {RGBColor[
         NCache[
          Rational[2, 3], 0.6666666666666666], 0, 0], AbsoluteThickness[1.6], 
        Opacity[1], EdgeForm[None], 
        GraphicsGroupBox[{PolygonBox[CompressedData["
1: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
0uRIN2CPZD+L+v0ivcPcIUOpZHtwlA2K9HaU3xPPN6eyz98f6bZIq0W6F77B
bIwz2g6J9F60Pyry4ZyXgn4j6i5ONcb7It2KXGNjifphkabwfSMfGun9oO+K
uhsjtYu0VZT1ivRhlK8feddIXSKNjjQqk7wj55wbOTNOjecFPEda0zJO3euR
X5BKltfMJN+foAMjP4+zYZRfE/mfkf8RqS6VPH8ffS4X36FtpBRsEakffKWS
T2za/9ZLtrF7/xb0F0E3SSXf9ankmTbgROQTm+SVudbPDK+Xz/yuk3OtyWnx
fFIqGyO/6YGOibRqqn0DOcSOAdZAhrELzcylR5DD9plk+rtE8jfbMrswlfx9
H/TJqewc9LV7KpmlXTf0UDyfGqlLvLMu0gqWT8716PSuUdYUfRfle6SSU+qW
DfrvRGf8NaL+n/jNcpZJzvq3W26pR9cjY5z72TOQQ8766PfpzC3r33LFuf8u
yzPne/T+Y+g0y2E3+49WslzNT7QHIFdgXnR396hvQJ+mkk9sBuwNJ0Y/J0Ra
Ax0b6TSPp6ttA+wTY5GzTPK4ZvSRRuoQ7e6J5+6ZZIK5+8t64ZpcOuhbzwv9
sf4nel5p92UumwjzdQU8R/kM5DTK12YuUskFsohsoCPxa6GrkSn8FOhJ9DG+
IvTtV5Y55A15RA6RSWQZ3wy6F7nEH/OU5RC5Li0/6LFbgr4h1xhyr3v2NHQI
sohMoldviPeekknWkKHSOu1axpRK1q6LdIrl7MYoPzXTmePTSP8i56wz+E91
Vp0e9BKRPg/668ibRPoi6G8jbxrpy6C/i7w+0lde26xx9rv2wW+7XHvbTVF/
YiY70ZeR6jgPR3mr+G5fp5LTZYL+JpV8om/Yq9F16EX2c/TnctHm21Ty3y7o
malkHj3Kvo3uZf1h62Xv6BBtvkslG+hj9nz0Knszvkr24pWjzaxUsrpq0N+n
kkl0Kns++hAdyZ6PPnw0eH8k6DMjdY72s1PpAWxobc3Db5YdxjU2yo+NdHvQ
aabfMUawCjnrMI/ysz2Wx9jnIz8rlS1ueY8dvQ5OQZ9nmeqZh7bWB6xbMAzv
ZD0/Hm0eS9Uvtrt2ns+tgt456t5IhIV4J+v8iSh7POhJqbATc8bazu0HRt6e
jDZPBH0OMpQpZ95W8lpHL3C2Xdl8PhVtngz63EhFpr7pt8pUxjwvWWj/WTy3
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
7TlH8VviHCa5f3gc5fb4Cpkb5oIzFndkuLuFfiMenf+4Wds59+TR7fjv//G4
4O1P949eQd+ha9C3P3r+33Y5OpD7O9zvesJ7BfsOcbvc05ljHv7y93jZ+hv9
zjek/9nuh1gG/psDvP2J2/CueeZzHffxl3lbfMcoV9/oM3QjOpW1vMCyyvzM
N32Py+/2e3hfbY5ned6auq6LZXCaeeD98MF+eLf7RE8wX/h+sE/i34HGT00c
3jzzvNAyQzk8osfR/3ebZ+j7XH6v2/ItsC9xZljGd2/J25he0nfliEnDPop/
qOYnWmSaO23Q3GHhLgr+oZpvCPptlzUx3dQ0bYnD4P4Xd1WIz2jqcu6iEDOK
/4XYDt5B/7TDJzTZOfdG8AelpqnHT1Lvcvjit8TtJL5rRmwVsSboEPwv+Hrw
/eDf4d4bd2Z4PzEfDdYzJNrgxyHupCgaeaQ9fiXiQpbynZQmvtPXzn1U7of6
Jd0G/1Tm3+LnaWZ+mrkNdOV7dsQBsl4/8Jot3Sc8z/dv8Adxf5l4HWSbO1bc
ESJWB3zfwuXUt/BdCOKEiHtAZvAZQuOLJG9pupVp2nL+bGWasla+s8R5kvtd
xJIhN/gUkY3WliXkF9nn3cg/ZchZ7T5ja7fh98taTsjb+rsvZ5p6fInLuhzM
gx5YHF9aqB3ywr0w7jURj7S85wG5mul5YU4og0buiFVq72+Bn7B9TSYL3aeC
7mCati3cLzKG73F598/7Ovq74DPsaDnpaH6gF99pcz+zzCu/+8XrCh8WbReP
IfV9rkJrhXMwdnzOwmBq8DaxJ2Bg/p8RHAz+438ruOvAXsh/SHGu5N40NHiJ
/2Ph/2Lwi3H/gv+LaeO2G/2n/YZF4/8OQNf+X4s64nO498EdJ2zOPWt0oTv9
3O3fPFW/vKu1+eK/P9i/9vMz9GYuh3d+y50i7hOBe/qat23cZ+3OUT/3T761
y9kLodnjuN/BvXEwGznP3a1junptHuo6ymv3WNZ1H/3cD3MDD9xl6NwQ8loq
bu+rwDiPV7I/4uuHX2IG+pt/eIPfbf7D51buk7y/22OD6GK5Ze7ggXs04KHN
PCfcQeD/WDnz4jfgThE+EmJdN84Vk41NFxsvdl3w8w65zkqckXv4t/Sxtul/
3S9x+NjhuKvMXoftBJ8Q9hPiuPgPPu4+7+B+wbTEMKzjcmxX3b2f4g/ijhDY
v/DvwWx8A37L2XyxrSiXHQl/EX4afDScKThP1GJFoLFjY4fr43L+CwoZ5yyJ
vE+xPkR2mCvup9B2y1x28j6WbeSc+OLNc8UYk29qmph/4pIXxyRniged7/mk
DTZzxoetBD3Kb5hj4oao38xtnjKfvLe35Q1fOdi3q/UM+w8xvuxBH4TsvFfp
m/wYZX+Uso+uFjL2UyFf8bGR/1XIrvlq1D9VaN5OD3pUKVvU37Qpfb848vVL
+RVbU9agud496F1KnZ+GRr5Cg+yhT2LDKGRXfznKXyrl33ucdVPKDvq+9x3m
fHSUHVMq/u9ZdF6ps+Oykc8u/F9tkZ9e6F409jvu5bLfjor890J3MrrG+98p
5RdiH+YuKPsj33OOv+lmxo7gxg+s3yi/Kdp+UUp2Pgn+P6wkoym2kErf/u1o
c1qhe9pzI+9RCu+/gk4tFbM+L+i1S93xXsCaK2WT+Bl9UOqu+EdBTyzkDzk3
8n1K2Vc+D3pSIRk/NsrGlvJDcteVe8VgAXKeiXFdzTR79WzXUc4a495LJ2MH
7rqsYsxA+crWq+tZL9X6wu9ADMhq7pP9YE3vEWAT7pxwv4B5XdX9c+7q5j0F
2zr3DGt4HLqtcRa6CLzEOZH9BTsM58Fe1sfYzeGnl3lDZ2F/w96D3ecq70vY
evjtXJezR0+OeTqj1H9FbBf59YX8CKtaBpAT7qPxLs6sR/iZOzhXuE/2vdq7
eS8xJL291vjdWuazu9chtsdx1q3oVex3PfyN2K96em4PDNk5qJJtm/ExTsqX
Cz7fKmRbGh/5U5V8UQ9G+ZOF/AUv8ttS9t1bgj6x0nm3ZZS9XOneyTHMR4N8
VTdE2bhK5+OXIm9Z6e7HTZEfV2mfZ295wvvL/dHPY4V8QB9FWdUg3ftblM8v
5VNnHXzstfBood/Qfo0o27BUDMEzQZ9dSFfcGmW3lNJ5r0R5a/N5Q5Q1a5Bv
4rYoO6XSnnBN5MdU8s88hLwX2kPQQ6daFz3CHJT6P4O/sINWujezY5Q9Xegs
Pw97aqU7On9gN610j2cBNtdK94G+4vuUst/8ir220j2V+ij7odKdq+eDfq5U
fMZ1UTamkl0f/XSWdRT+jfMqnbNf5f2VYvd/ifznSne/sMVeVMke2zTovUr1
/2CUXV8qPuPGyJdqkJ/i1Sh/rZK//J5C88VcfRP516X8vcTjfJUpXv6WaLNb
KVvTjMinl/It31uoX/r8kXGV8nvPjPzbUj7kWZF/V8ovfV0hvYnORBYO9ff9
MvKbC8UxtIj63qV8oT9H/lAhO22voH8tdcdjaXR2JVlFfo8sJcNfRb5MpfiZ
yZG3bZBPenaUf1/Kv31KIQwE/pnD2m3QfZ1F0b5pgzDCu0G/UwlP3Bu/u68Q
Drkv6ANLxZWzF+3q/ahJ/O5+t3k9fvdGpRiFJwqtMXj7BL3VoPuK9NGxQf0s
G/lBhezV7YM+vJRtql3QKzbILrVc5AeXinE4INp+V+key9FR1qFBsU5rBr1K
g+4XHV5oD2b//QId3KD7fOwDU70XtIyypRt073yH+O2FpWwv7IGfVtoHV4t8
o1LxHksH3VAqDmtGtJleyC44DT1dyqfDe3Ys9C72zw+8h85EL5byszAHAwrN
w/BCugm91CX637hUPNcV9FHKz3Zg0FeUwid3VvqufNPm0U/7SnErSwbdrlIc
yreVZAU5eS7o5yv5P9lL3/V+en+UPVAJY0yNth+XilVqFWVLloovYw6+Nx54
PfL3K+HOFSrpLPTVWshkoXubZzFvhWIE2FenVtpb32BfKmX7Ydx5qbE3Jy/l
b0IGhxWSw3fYu0rZoq6spEfQIY8E/WglbPZ71L9XKs7rY/bMUj6ITtHPl4Xs
vjOj7aJC99umRN6+lJ3pC/g3z9PxzxTC3iMrrTfW2sNRdlMpfyLfeftS3/rF
oN8odfd+ViUsAg7hnZ1KvRdZGFtIHsAgvxTCIei8ptZLyOngQrL6S5R1K+W/
/Sza7FvILjsj6K8rnQ1OpW2hmCv8V18X2gNvY/5K2VlXR75KYWS+CeNkjIy1
XSl6CTBeJbxbF/Rxhe7t/Vtovpirb9Cvhe7uMq9HF5rbFYP+sJDd8Y/IRxe6
23dllJ9dKr4P/PVlJQwG5l23FO79M+gxhe4RgtfmF8JsO7KHlLpLdHWU7V8q
DgF5ObKQzBwebYZV8j8jF0cVkg325Fe837G2bii0vkYW4hU+ZxWSG2QGffmi
deZPpfZs9uslGqT70HsrIFeFbMLIy4hCMgMev9/rZadCcsa3fhtcUSquc1Hk
hxS6p7A74y0VF5nF7/JKcWk7o7cLxUXWR1lSKdbtH/beBvmMl4iyJpVi166O
8qtKxWgOjvySUr68QeyJhe97se8UOlP+HfS/pXzXnCfACuAEMO++pXAv/saL
S/kc9y6EV8AqexXCNOCZDpF3rBTT0Rc8XimupB/fq1K8wgDmrFI8y8Xoy0px
ANtFvn2leAW+51WFvunO4JMG3RnbMOgNKsWtbBz5JpX22oHRPmnQ+XSLKOtT
KQbigCifWOnu1maRb1op/oU1dGmpdXRY0K+UitFEr2xj3YJen2TdXoK7KsUO
noDureRb36MQNgIXDURnVIqfOLPU3s++f3nkO1WKu+1XSnaR27MjP6JULMMF
lTABeID5uNBzAl6eWAozn1MJc4A3JgV9bqU4EtbQrYXW0WVRdmklH9HO6P9K
MSWnlJIzZOx/9Fcqbq4/mKtSPFHzyFtUinHcsxCuAlMtVUq/o9vfDbptpXiH
ZSudSzmTgh2GFsIPrRq0D7EHMU/HF5qrT6PtjYX8uvfSR6X40Nsjf6aQ/QA5
3aWQrF7EPlbqnloz9pdKcZzNSu2p7Kd3R35XpZgv8Np9lTDbP5H/W+ncfn6l
+WKuFlJfKC5mUCGMC759oNS5lzPv35W+Gd9rYNC7Voq/OYu5LBUTcy36uFRM
M7h+QSlsz95yRqH9BVwDBgLb9I7frl/Jf98t8u6V/s9oXikdjX5Gfussw8j7
oZVk/oNoM6VU3PCHpbAa89wm2vQvdaacRlmp/4l8lu9cKu6ZPedN7zuvRz6u
kM3jpEI4HgxfRD/LV7qfRds2bj8kyg6pFMuzban38a61oqxHpZivCdHP8aXO
I/sUOv9w9lkn8nUr/Xf2qpGvUikuDPvZuFIYkjPElEo8XBZll5eKz1o9yjpX
ipcFo40shdM49/A+3vVw1D9UKW4vi/K0QXfTe0VZz0rxaytH3qlSPC4yeFop
OTyRPadQLDlno66VzkdnVNIX6ArOpt8WOp8is99ZbidE/fhSd2fBPp+Vwj9H
FJpH5nCTUpgMPPYg+1WD4qf/D2aF30E=
           "]], PolygonBox[CompressedData["
1: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
l5FmPIuvc/TdVBr+ZuEcSrmTcqalepfWSPki7zgyOIdS7tQx9do1Koy1hrcG
1xxUa1CN5wnld7RNTV0TU+71eHDurhxsdnCNT7U93bmngkcXrm2oJva9tDe6
VlMbPhb8hTQPf9XcuchjhbFyEt0FJkbnSroTrArWdGm5alZrgmOAtF81zLnR
e1Z79RTa1gVrlrRKNcmfgzVRWqia4YZgjZO2qca4kOcXRc9Na9Q/eo9qb0qj
54Hna4/nruHdHnwn0l1INRHVclrBW+eu6VQrdc1EtRK19QuuSakWpRrTIfir
l/purhrLD8ExRLFDNTPdbbVntFd0xx1fuAai2of20LfgaYX/q+aU0L+MctLc
Oeh0/GMK125UA9NZmgo/KfeZ2hGsCdICxdjDg/eI9sZknnkgukao2qByskej
a3qq5SnHkXauVr6RW0N3wddG3y37Ybt1V42uReobr5E2R/v0zN/410e/S3fM
FeCV0Xc31QC2867fgu+uiqHtCtegVXtWDffnwjmCcgPVkGeDvylca5Cm7Fvq
mohqIdIc5f6zgmt5ugN0jK4hq3asHOeJ6Bq2atfK2Z6KrkGr9qwcp0awRkmb
dAb2Yvyypa5tac2XB9cgVXtUDWczz6/n/d3xX5j77pwGY92h20XX4FV7Vw6r
b7M7+q6hb1SKb1f0XU413w26y0fXJnWnKI//r+hYpJqutLMMbfVya+hP8FsK
1w7VNjo6ZihWaE5bou+cumuqhvw/MeNOUA==
           "]]}]}, 
       {RGBColor[0.87, 0.94, 1], AbsoluteThickness[1.6], Opacity[1], EdgeForm[
        None], GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJxNm3ncV9MWxl8y5pyzz4srY+bpmpJ5LkMRSVFSKSElcylJUYqK5sGQDBWl
koqkjJHhGq+xzPM8pYvM3Ofben6fnz/WZ62zzz57Xs969vq979anX9Dq/NVr
ampeXKOmpo70EWVNzWGSrKipmZzX1FwufYp0HclvWU3Ne5KNZP9L8prsTaU3
kbwhe2PpepKlsteXrpW8JHt16Z+k35I8JnlIcq9kQ5VvIHlF9lnqp4vkC9mP
q+wxycOSfSR7S3aQnKZ3J0pOknSStPLz45JHJQske6leG+nTJZvL3kzyjuxT
JSdIWkoW52F3kCySvVByl6S7nttJ2kvOsaZOvyzeUdZA9faQ7CQ51+9p+zzr
jpLzrRnjBdaM/ULrzpKLrBlnD+szJD2tz3QbLT3Pi13WRTLI3/PdGhrHn9If
SF6Vfbqko+QyPZ/tcW+v5+0ka0v6ex6M/XJrxn6FNWMfYM3YB1ozdvb5La/5
lS5jHPW8/4zzao+1l+QmyVDJMElD1dlT8m/JCD33zWKMa+q5RvKR7CH+rrdk
pN+z9qOs+7s93l8iGe0y5jHGmnlcLxksuUpyndeL5wkeN88P6KwtkiyQ3OC6
jH2ix0E/47wWrMFYt83zja5Lva019vUk60pu0/PwLOY3VzJJcrNkpsfBuCb7
PfObYs38plozp9utmdMd1vQ/zZpxTbceL7nTeoLn2cPnaIbLrvP8enpvZnsO
zPVua/ZqjjXjnuXxsjbbam5JkksesE8fn4V/47stsvBj8AC/+pcxoKXHNdDr
Dgbg9yd57SZ6HP21B90kB+q7XaV3kTychd/jz/gJeIDftne7+Ab+Bka083g4
l/hXJ4+D9/hnBTvoFz/H19pkVf/krC80TuB7YAY4h7+BeeAKftfK39A3feJb
+FgFL7q7v3P9XMGFc7MqLvAMhuwsOSur4gLjqGDBRVkVC3p4HBf7Gdy52OOh
D85/v6zqzzyDBwuz8JE97Pe9PD7q4lfgAZiBLw2TPTQPDK1gAW318j5dnVWx
YIDHe6WfGesgP1dw7cKsiiNXeOy0cZXnM9jf0PdQ99HT73lHfJgvaZ0FXgz1
XLaUXd94wRzwnX/60uSsigWj3T8+UvHdsX5XwZSRnsN412MOE/zc322M8liv
y6r+db2fwQ/8Hn8BR/CdYZ4T9sSs6tuMD5x4IAtMGOHx3ua1wQ8qOHSD+xju
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
l6j+Utn/xbdl/yb97xQcsG4KP8fHv9TzV2Xw8l+lfykj18gYlxgTvpX+3Ziz
XPZ3ZfxG97X090XwWX7z5G+z+HuKryXnpLgzLZb+zVjH3znwnt+I+F2Nb8Bn
fluY7zMPVvLbGO8fcLvXuO4C18c/7rMvzbfNt6X6ejoF1u6qveuUIg+xg+wt
U5zxyjf4Zh2VnZEiHzfbfgSWvoAvpsjj7qhvt07h39z3yBdXfPde90s84HcQ
uN4irwNj/lH60RQxc12/o3znFHvA+j+jstoU+d8e0lNS3Lue09rul4LPg2fk
srt6/RZ5DckH8tseMeduY0Ezx4U5xoSRrsMYWcOFHgNl84rq2LHhtHDVubaJ
s3A1+NYU28Rcfn8G68htztQYZ6W4+12PP6W4o+wpvWkKXjRbevMU+Hq59GYp
ct/3Stf3vuysdd4hRW56J9nbpbi/TlSbN5XBR2ZK95FsLHup9E+cLeIp51ny
q+zXVP6t7F9kbyP9cxl3lWtkP5AiV76t9NgU9/a79P4yySaq86L06yr/Xx7+
uq999hTpmhT3eMY+3ONnfi09xz2kJyXzB+kLU9xHDpWuo3bPJi7LnpDifr8X
MbSIXPMKvV9cBCd6R+VvSH6Q/QmxTvIT85J+SbJC9kuq/67sH2W/IvtT2SvB
AbAhRe7vG+kvmL/saarTQ7KR+rhTupekHnsofYHkX7LXkK6R/Kn6zaWPkRTg
J2Vq5w+VfyB7C8kaKn9Lek3JXyrfnD2R1FF5Jr2O5G+Vbye9FfXwZ+ntJWvJ
Plr6SEkue1fpnSRr45OUMQ5wH0yS1JX9CVyAdmUfCm6BoeC7dAP4iuw/2HPJ
7+r3PeYkWR0sly4lq3GupQdKNsPXpS+XbIp/SA+WbC77fOnukg1lnyl9mmR9
2SdLn0hbss+W7iLZQPZDkhkpciInsk5F5IHayP6riDxQK3BbksAG6dGsCzgk
PYQ1ld1Jur2kFh+VHiHZUvZPkptScO8FKrtGUl9l44h7KfK634CFKX4LWi57
Wgq+zF2DOyo+fb1t7h0z/YwN9vJbMPdd/JrfBfuYk/C7NdwAPcl2T9vcN+D+
3AHg/PxdAfeHD32fwOaO8Y3xgjZ7+xvu97zjm1V/f+N2eH+U69Amud2b3Sa/
P97ouMDf20w0/qDv8rhn2f44q84ZLg12wrPhwwf7eYu8+g1tkgee5W/5jjWC
2433t2AwnHCyMXCyMRGbtWCNXsuqWLm5uSG/7cEPwfcZXvMZbh8bnAavwe16
YEMRv31tLAy8OEUebn/pV4lVsg+X3lZ7f57sg2R/LTlL9iGcfUk35gh+SLrK
PkD6bcmZsg+U/ljSRXZjcFjtnCv7CNm7wDlkf6f+1/L5+Vn29BR/19NIegPV
OSeP87iyiDPZBWyvDS73MeuRIp8DlzmvDD5zmOz18CvZZ8peI0Uucwt9t1lt
3JUHgK8p8ouDickp8pQPMh7VOZDzo7IGKe6/A4ntKfKaF0h/VUTu8zzZk8vI
x31GzErxW+sjsv8uw1/gBZ3NDW6QvjFFzvLTIvqg/bVrg1fBqS5TWb8UOWW4
6qkp+Opnej+pjHv/aSpbrTZyW2NU1kLPfYkRtRHXien81sTvROTDGcs4j6dG
dTZJkW+jnzq10Rc4MdZY8QdYW0bO7M8y4g2xBj54RhmcEEzqalyi/25ljAHc
am3sAldGGVvAnmHGH2LCJY4LYOQg4+RQ6ePU1iVq56QyeC2cFry82pgJD+1Y
BhcllvZ3PCVW93W8Jv5c7BhEzLnIcQc8G25MA48HGJOvkj5W7fbOIyYkxwVi
0d+OR02lDye2yT5adlPZPWUfQ+ylP9lNZB9Cf7KPkr2/7Avz4Fajza/gIHBE
eMiOKbgIPGT7FFwEHnKk7L2Il3mMq00ZY2sGByCm5hGj9nCcYs3albFu8JSf
zVWImWs7bp5Vxr2FOwvxqp5jVr8y5sNciO2fO74TP3d0DCUOb1lGLL60jLVg
HeAF75sbvJfC//F9eMRH5hIfSmea1yHqd11ijuzDs/D1X4rwd2IIWAAOEFu+
LSK+4E/97VNwjb7mG8SuUx2/9lR796fIX82V3iJFHpJ7/9AUd//PVW9Rirv2
wynqUedJ1jxFzg0++GKKvaDuXa7/axH3Cu4Ue6uvPAXn7FDGHYz714oi2qVN
eN+1KbjfE9JLUvwmQC7hoRT5hAdT9E2/P5Rxl+AeAW99LAV3fUF6YYq/HYDj
1C2D58CzvkrBtb6UzjWmQ7PgU6uXwamWpsBxMPyvFHgNVr8sXVf1D8qC972V
gvt9lgKvweoWZdxXuau+CZaq/sFZ8MFXUnDCrVLcVbinwDVOMN9YqwwOCv/s
XMZdl3suZ7Otz+fKFDGDeAHfOd2cZzXWQW02zoJf/y8Fxz6ljHsvd14412/J
vKuId5R/lyI+EZt+lU5qp5HKryjDP/FNePryFFz9yjJ8CT+C3x1cBsdjbaaW
sT7M+44y5g5/bFIGh9wZLNG7JlnkDMg3kTdgH2aUsRf0P7uMMRxURl6AnMBG
ZcQ24hq5wFll5APhlQ3L4JbPSj9Txm8nR5WRdyDnUJQR24hr3BuWpbg74FvT
y/CvRmXkLMhXjNH7TWrjt8PFKv+hiN9neqaI98R6+PI2ZXBm5rSojHmdU8bd
nns93PzYMvj5hvia7KNU/gp7UsbvQOur/F7ZR2Txf4GNy/jfwA1Ufp/sI1W+
dRnf8+2FZWAc+EYO774Uebz6ZXAFeAI5P3IB5AF6loGnYGnvMnAWjN2kjD5o
v1uKvB45vYbSe9VGXpscz4IUeR7iGXlX8rLcHfFnfBnuv18Z/H/fMnJA5H+a
lZHHIYfTMcU9nzi+rvQ6tfE3XODZvDIwbXfZ3VPk5bkHrF/GXaC2jDVifbi7
bFrG/WWHMjgW/Ip7wLll3AV2L4MnwZG4r/y7jDsL/jGnDB+ByzQwn9mzjPwL
uZenZf+niN/B/g9SHfA2
           "]], PolygonBox[CompressedData["
1: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

           "]]}]}, 
       {RGBColor[1, 0.85, 0.85], AbsoluteThickness[1.6], Opacity[1], EdgeForm[
        None], GraphicsGroupBox[{PolygonBox[CompressedData["
1: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
5yfzE/yDXvqdeXOy+jhT9XsjT12yzleIPlr4oUnccdDg4a9MY7+OzUJP/aUW
euxcr/nXen6Y1xyddp7XHP0QXRTdsJ95k7P7m/kbfuYOgUfRe/cSvqXgN+H7
qdzXevOwLGxU6Ny16MPtBQemgaOTNkriGfRtjHcQPM05EVyOPBaMEwzMog36
M7rnfVnYuty593D/CJbX71XVfwvBrCTud+b3uNss9PwmJGEPLxK+uuquJpit
36eq/JYzkoSsSJOQt1ckcYfxe03VWUPwvfARWdif3OOsF3o7Ou2tot8iOBjZ
r71uJmiQhy6K/oweeree3SU4XtBUzxoKVkziGbo0eumJejYIftbvSUnYzA0E
z8Jrgiu4JwRXClYSfWIS/oK/1PaiJGykZQUDOPuCJsJXSWLdWfNVk1gz1px7
i/sLvYI7i7HshxxMQl/h9xDRBwvWEX6K1uCtJPR97jHe3xdeS+Nso2+ck4Q/
gD5fyEI3hT5U5cmCEexREnctet5otT0mDXvuNJXfwXOCXGuT5XEHJnnsQ82A
XnGR+k+tG4KjJ6O3oxuj03D/cfc9mYX/YgvBVUnc5WUSz7nPuSOnZEHLDYXp
e4o+RWO6Ur+vEX5qFmf8asGB7gfaKl7bZdPQAbF10DdX9Trfn8XZRV88UXVe
TOI8ottxn0z2OaLd3uadFm67vdpdozZXp/Gc/rmnKNcyfnoW5xL98tosfrNf
Q9TmFZ8jzte6PmPLp6F78vsm1b1R0BqeE/2QNPrlGXW4B8eL1jNdqrO2NP0k
0V5L4tw9kMU8V09iH9b3Xuwg2nXoMGnQNvB8V0wDh/aieQKbEl9X7v1Z2eeE
e5izv6n7Xi6NtV7i63LJ+q2QxtzgGfhsE8+7cRY6L3dwkzTeTV/oy9CwobDf
t/I+YithG3Km3vDZ6WNZRz1s/OPT0DMY3wK3py11N3d95CR9zrcsxBeAPEPG
be39/d1ycIHlHLY9cmvFPOQZv5vk8RvZN9My8A/LNvwIXd33Nu7znyRkG8+Q
i8g96v6bxDN+I+/xOyDDRiKfk7h7l7Gc4xkysrXrIsPYH2RVgzTq8exylWeo
7CX4wiX32YAk9B50HmxqeBBZsWIW+8GzCdgagsPZU81v2Tz4lfXb1eu/hdtC
Q/bt6n6wsdqYX/DXtfeaX+xn0PFJgqOrY1Nj/7O3+yZhT3X1OW5vvsDOpU9s
d2ysDj7Di42j4032sxMtP3dPlr5zd78Lfb/Tf/ru5LHhg9sjWdoHODobfrmO
xhljZ4+Tck+33dz0Pu4TejvPu53Hzxi7eJyUe7nPjsZ5jn3YxXR0E3Q79JM+
aejd/GZ9unku3fy7q2l7m97WOOu1xF9lelevLb4jdGp07Dv8fF/XQb/eP4l1
WknjWSELXhqbhS2K7o5+jYydpDpNuOet47fxONgjeI926OiPZmEPYwNg76AH
oiOiP6PXoedh16Czoav9nYVOhb6FLYPuhE6GrYGOhM7Eeezr83Y7Po00fq+a
hS3HucUm4syzltht2M7YcbwbnRsdFbvgSPPCoWno+P08B9YLPxbjQ6dHF2V8
6OLok/9Lwz7g92Fp2A3UeykLubmT54Bdh97IXYE/gvvhSOH3JqFfMzf0cnTO
w9OlejrzRC9HPzwiDduC38dad8ZGRk+kD3RF5jHAc2mTxbnBRkcHH+g13zWL
sWLr75bFHLDp1xF+k/Vv9OgTvRe7ZLEutEeWDPZ6thW9bxp2P7rwEM8V/fck
z+msJOx85nF2Er4Axov+uMRnUwvdBx8Qsha9Ed8NOmS7LNaCvg4V3t+6ILoZ
+g863gmizUviN3rXaUnoV8xhkM8V+gt6zdXC1+Y+tU1yiOtR52CvEeuDbsi+
IVOZH3YG+9fL82funMGzPK/10C0tZ3t7LViHlqLfajuB8zvaa4JOd475cn3V
uc02w0CVlyeh13In42PiDh5kHadeN6LkDu6Qxd2Pv2pd4Tfb/kFfgIYukLo/
9DB48Dyff87I+UnI+d2z4B945oUkdB/08Lo07iR+v5SELose2zCNO4bfjdK4
7y8U/nISugz68ATzIL6Uxmnc/TxbKY07Hp3k1SRK9gvfO3otOm1Pnz/OHjY9
chmZPDWNeEm9nX+p6Xu4Dr4afCZt0+Aj5s16oo8iTz6yPQZvw+PY2/jKrvA6
tchiD/h9vsreafhwWG/WH70T3obH3/N9McXvhf+RA9jnv6VhG0/3ueH8fGj+
hq8/Mr/C+9jVv6axRuiC2NDY1DMt+5H52Pbvuj/G/EcatjR+gffqy1r4KmZ4
DIvTsIGx7T+oL5GraegB+Ag+rC+Rq2nYsfgLFqZhb9PXR6YxZnwb+BzwESyT
hU3L70+S8BV8Yll1j+vAry/4LB2Vxhni/DRS27PTOEd11rd3r0Uf2MDYh6f5
fHA2enP//GdNX/c6cT+h/3Hn4pMFv9y0N43/aJy6lG+Z3k31v0xjbVjvt73m
S86F13mq15e1XbK3Xtu7vHasW1f184X9RHd6rVnnTqLfkUa/e7NW9lkQb8Xn
jB1XE/0fr/s+wr+2j2bJ+nkN9xV9Vhq/mwr//T97T4nfpJnof/5nzyjxiaws
+qL/nANK/CHNRf/rP+eAEp1wfhr8+Zr3nHHBL4nq1/1nvynxO9zt88HZ6KLn
n6Wxdtjq6MYdRR/mfUZWYNfP8RnAJ/CNzwblt8Z5PtvnYXvji03/zm1/SuI3
de5knbnDsrgDuAuwsxpm4Rf4IQld5kefgQ2y8CnMTSI+ie6IPnZcGv3SJ7o1
OjY2C/YHtgnx3PPV9hf/xlcPjh9sXeHrpOEXW8sl9X9PQmevrwN+RS3KBcb7
pVGPOvT3q/ERadjh2Fj4N4nFYDdjf4FPMm2hcey7uV5zYgUL3Q4Zhh8UOdbB
88VHzfNFbrut9wsbZK73j35YH+x+7k14FF7lLjjW/gBiu9gq2Cz1e/WP15Dy
X+P/ui34BNNph32CncJ6X22bcY9a0LhfOtXi3DSwLdPAZwk6MaC/PDbsS9pi
f3MOlnGdZX030Se+n+Vsi1I2Mh27Gpu0ey3KFYxzV61gWxW53DhdSmvsOtio
2KrYyNSjPXY5tjT0w2txv3Hf1ddtYjo8tpLvQeI2f/kcNjEPUge9k1gvPipi
y8gN9HbKpsbZQ3Rx9nEv1fk8DZm15G5JQiYT5yZOgs+EEr//ROPNTScmTwyI
+AIxCuLmxCmauy31aUfcZWot4nCJcWipcWLBtJ/g91aml6bTzzT/Bp+URTye
mEHmfhgPPARPNTW/wVfwFP4E+PqfWtjOyJF6GQI+y+cQ2xi50do4coO4KnMc
43Pbwm15vrrrzLGcmm0ZwPuQA3dYnkCr53P4dJTnPNLzXcXr9YtlBGPH57iG
x0y7td2WmCxxLmIQ6BaZ5868kRfIB+JLxIyJ8REjxM+Lj/eGNH6zRxNN/6wW
/E0sCh5nrtt6T/EHkz/RrhYxXOrAO3u7H/okl4D7ibsJ3+hGxpuZzpkjVs14
TrJ8gA/r37mh++Q54ybOTexxK6/5MO8BcW3yPoj74Mvl3gUndoBPeUuPk/Oy
ns/SLO/XQq/JZm77gPtifZgfbeebtqnpyFvWk30jD2Vrj4f+c59DaNukS3Ns
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
Otfr1ru4S3uWcZ9+W0T8ktgl4702jzH/H0nnMkM=
           "]], PolygonBox[CompressedData["
1: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
9bfWnfGDYJ+QL+h/DI2Ca1jVrurJ/w+NmgAW
           "]]}]}, 
       {RGBColor[1, 0.85, 0.85], AbsoluteThickness[1.6], Opacity[1], EdgeForm[
        None], GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJxNnWW4HUXWhS/BZTI4OX36dPcNHlwTNIHgEHRwgluAwd3dgrszMPggw6AD
Ax+DDQ4JmuABEiQQgjvferPWfcKPeqpO9e7q6uqqLWvvqtO94z4b792rq6vr
xOm7uqZUPrzT1XWG0i6trq71211dQ5SuUfmEsqvreKVrVR6pfITS3Sp3F11d
T/fp6npB6QzRDlc6SWmLluteUapF85N+v0g7una80kpK7+naG0qjlPYWzYvK
X1V6O/lrSq8rvaQ0QmlF0aygtKXaaZT/pnyE0vKF6d9S2kzlTZXmK3z/i7n/
nT+0925ynn2d7j9GaSulwbrnc9V9r/Sl0lilcUorFW77Q6UbRHe80jYtX387
bY9LTtsfJ+f9Pkq/oNtE4zpIaWWlT3L9faVV1f4qSkPV5qDCz6EfX+SZtDEx
z6Dtr5LTxoRcpy/76979GB+lr3P9U6XV9Xs1pe3U/kDlKyttrfKm6sc6Sqsq
3aTfJylt25r8DJ75wx/68lOex9j8nByaNQqPWS/d+2vu5fm/Jf9GaXM9Yw2l
1ZR+yX3QraV711TaQffOrmu3KD9VacqW2+T5U7Wc/6g0dcs5fZmu5bZ45vR5
Ns+cpuXr9PHPLfeL9mZo+frvSmsXru+tNHOu85wt1IdVNDcHKa0rmnWUdlL9
Rso3VNpV5VlCS18apVmVZkvi2dMqrVe47bbSHC33lT7OmZy+3Khn3aA0I++e
+6BbX/cOKbwGl1beT2kBpTL95Z06yel7lZx+dacftNc3Oc+vc33WjN8X+ZZz
5zr9WkbPeFv5W6GbOu8zT67PpXSaxuVUpT7pL2PMN9ig8LsuoPRPlQ9R+rvK
C6d/PH+h9JvfS6bdeZUWyXXGctHkvMd2GpttleZTefG8D/1dLNf5vUTqaGsO
0d6q/GylqzpudwWljQv3a1mlnTrux3JKh+o9+ikfAA9J/+jv5UoHKK2t9Bfd
u4nS7iqvmL7Sx5WS05eVk9PHgcnp16DkvOuW9EftLKy0oJ67b/q2osorKJ2n
8jvKD1A6n/EX/SxKF1Cve+ZROlfli5T2SX//qusXKt9baZU8ZyneU218kv5e
IpoJ6eNn6fcapLb7upbSrh33lfcdrPoFlfdXuqbjdtehTT3/A+VjlK5Q/eXw
DZXfF/2BSpfxLVX3oeTCybwn9bn3ANV/o3xd5pHKa+vaeiqfLNqTlO5oWWYg
L5AlR6j8nOoO4TuprQFKT/G9+B4t03womkOUrtbvQm22OpZFG6q9DZQOa1kW
IWeQAcgc5A+yAFm0WcsyBbnzSuTXi5ERyJJ51N77tKPrdyNfRH9P7n89dEuo
fvHIIeQScujNPua/r0dmwY+RUcgaxpU1wjrukXPIBmQC8uTTP8ind3J9bPg7
8gx5gaxEviGvkB33IudUvjfPeC/3v5X7kB/we2TYB3+QVWP/IKvG5b5P8vt+
+q/27mtZLiGTxveZLLd4br+8B+v5w/CTz9PWxMiG1/7wHh+F33yRZ3+Z3/B+
ZMB3ef7XkQvIJWQRsgPZNTg0Dyh/Q/X3t0z3a/jP55EV3+cZP+Z3jxz69Q9y
q0eO/RS6iWmDa8in3yKzfoosgQ/+R88dpfzfrckyqUdGkSNLeuQT12gDHg+v
R+5t37Lc4RnwTdr9JTKM3z0yjN/InhlCDx+GH8IfkUXIrT+p/LDy0cofyP3w
+dnSD+RC7/Rv5vym3TlCRx9pt0eOzRK6HvkEHXKJ8gytyfKG741cQrYVLcsv
5BJy4QWtleXallV8U3SCKVT/CGtC+YPwLNEPiHztnfbarckyrJO+1PmNXsL3
Y13wbt0ZC/oHz++b/s6T37THvGSdIaeQY8iXC9WHd1uWbY+yjvieLcsx7p0r
/eA+5ARyHnk2f/q0UNqlTwvnN31cJL/pBzx/sfRjifzukWfQIUOQQ8ukv0uG
7nHVva/8oZZ577LpA3JvyfQfObhby7x9mnxnvh/yq3/6PUrl15Web7t/yIfl
8hx4+KD0A5mwQmuyDFuxNVmG8Ru5uXzeq0eG9ci0gaFDhq2S/vw5cm2Yyt9q
Dsyt5/8Ef1J5S6Wxqh/XshxDTj2q61coLdCerKPwXT9uWZYh254qLcOQV8jr
ARn/21uWf8jOpduWo8g55Nsa6T/yDtm2Zstyba30G5mF7EIGIbvWybjso/Le
Hculi9Tvj1qWc1+3LNPQA6bVtWmU7lT52dKyDXn2z5Z1BeRcrbppIrfWF+0Q
pTPV3mVKv6juZ/qh6ysrbaryNujgSv2V/qV0htJdLctK5OP6Kp+i/OS2Zd75
ql9OaSnRHao+HKJ0tsp/ZawLy7PDkVdK5+j3jrpvB6XHmAPMZaXNVT6yZdsM
mXeY2jtU6Wj93hKbTekRlTdW3cCOZcxm9Ffp/7hXdUcoHafyRqrbUOlztfsX
1Q2ODFtF+bEtlzfR9Y2VHlb5GJ6jdCJtKl89/H1d5Se0XN5GtFsr/Vfl43mO
0imsKT2jb+F+r6m6k1vmp9uJdlulR1X+Se/9Y+n651S3qtJpKp/EM5VOV3mK
6KSMwam0rTRc5f8T7XRK0yrtorSz0uOqn4m5ofLySnsq7aH0ZMs28unYySrv
rrrdlJ5Q+VzVnUOif3z/ltftWZSVzlL5GvXhBKVF4eWqm1mpd+E1t0/W7OFq
7zClv/LtlC+m6/9TeX6V56MvKv+qd/2ldPurq241pb1U7qP25lK6ROVdlO/c
8bobozbOV5pd6W+qu7rjdfQ3/T5WaSHkidrrp3Yubln3Wzvrfy3Wk9L+rC/R
TVT+pdI3ov9a6VL0Y3hUx+vlI/2+ALmgtK7uW0fpYNW/LdpFWP8q/12013a8
dqZWvljb+t5Z2DlKz7MWRL+t0rMqP9Py+kAHPJU1Q9+VftB94/X7dnSxttvZ
r+W1BS264sXY9SqPz5pCN3xG9eu1vSYP1+/3Sq+lI8KP4InwSDCHI7Ne9lA/
hynN0LEdzbpB3+tVWDfk9wa6dmPLc5p1BLYwRjTXt7wuKE9VWLdiLWD7s57Q
zaYsrMfxmzUFzvBZH9vv0KKDTVNYB2E+39zyWvgWvaL0GsB2Rp9i3aAvbaa6
TZX+od8zoJPn+7EGT8q92LmT1gffReWjCvOZaQvrF6wRbFJydI8ZCstz5j9y
lXk+X+YnNgoybsbCMpY5jw1Fjjz9rfTcxUY7oLC9xv3YN+fk3pkKy0N+Y3fz
nCLzHDsJGbkE9pGuzVx4vWAz9c+cR9YgM2bTtVkLy5WpC+uMp2SdXZi1xlpA
prD+5sj64DdygDWEnVKK5k31+URd+135B6XXBHMeGYGM6ZP5fnnmNjnrZyl0
jMiGx5QuVFpUaYm25+uVoukF7yy9ViqV31H5FHi4yjt0vD7G6dpYpbbqD1Kq
Cs//r7B3VP+xft8iupt5/47nLLwOngmfBueCnyOLwPCQFydlDjEHmKfXZ34y
d8GDts38ApPZPvMX/Avezty8MfNzKvXhn3rGfYXnIXOtS6kFj1LdE0pTdfzt
b2t5fSNLWe/wHOQ6vAjehS3I+h1eeEyRsacX/jbQPa7nXJTxg59wHR4yb8YZ
vrCO6s9su+7Q8A1k6G/6fbvSXcyZjuUf6/ZV0b9SWgYf27GsYn22mauqe1Kp
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
2znzjbodU79ayoP/MO+Ze4NDx7rYKfdSv0Zovk95l8yrtVNmjZDvmvr1Mpd6
Z97u/oc5uWvmMeOxR+bAkNCsl3mxR+bPBpln87cmX+upH5Z5Cx/i28GLeubl
Avlu+2ceMI/2yryFt8GPXsk8+Wu+Kb5pfNXIQWgo40M+Prglc2H53P9qaPcp
JvM02lw+z9sv8wqbcL+0f0VhPA5sA70enR4dfr/0c2R4yPaZ2+Dl4FBgUOdg
OxSW4XvmXRgTZD96QqcwFsX1LfJddsuYw1+RO6wL8KQjC+NPc6tvtdIXavu0
wnIUmTK+bdmD3MEuwj4Cp3uptJwGy+a5p6Zv4E7IS2Ql9ttxecdX28biuQbe
eVraP6603wZbHtwP7Al9rX9pPZLfYHTgU+hiA0rrW/wGZwJDAmvapLQtQVt/
b1t/OitjxFihuyCr8QUgr7HVuY4uhl2Nff1SdEZsPPRGdFVsP/RV7Ej8VdiK
l2IntE2Hnoi9hK6IXoq9iB8BuxY/KHbtjW3btPzGbgMfx67D1sLmwkbj216V
scRGwlbCNjkb/KptvxYYAvjAyOg5+BLQcW7GdincFjrm5YV1Tuwn7vs53+3K
fDu+yRX5LufC28rJ3+aajNNupe1//PBvto1BME7oKuguzCPGA5uZeUH8BvgF
2AX2042F9RliVLAteVfG/uaMP2PBmDBHTittH/Le4KnYg8RAoo9jZ4EZguXc
mW+OPXZH5vj5pdcDMVDXt62DonfdmjpodiiNfRC7cVvb/j/a2a40hkK8CTjl
3XkWfT8i/ceew74DY1wqc5d5C/5K3Aa45U6lcRl+gx0yZmCG2HbYemCMu5TG
WYinwIbDNgQnxK57MPRgGA+EflhpnIW4A7DGh0MPdohPHUwMm+y/KWPnYfeB
N+5ZGoshFgCs9N70H/zykdBM8omk/38tjfvQLnYd9h0yZZ/SmAsyBj4NT4eX
gDeBO4E5gjmBR4H3ga+AF4EbgiWBKYEVzofOE3saTAjsCKwQnAi8CPwR3PrF
tAm+A84DJgjGAx4FVogtgU0xyTeHT6i0Ld4VzJLnLqD6QaXtcjDgkenDguh7
pe3sfiqvWtoW7xX8kj6APYObgpkuJJrBpe3vKYJ90ueF0fdK2/drgfGBuxW2
BT8KP1hUdWuUtsWXKn19enhBYRsS+3HKYKK812LofqVt8S1Cg/xaXPVrlba5
wYZHZUy4/lZosDveyZzHxsWWhYdhB2MXw8PeCw22Gvm7oQdfH5Fv91rbdNAs
0rHe81ph+3hM2vyX6s5qT+bL5DwTPPHJjBs28NiMAzwaXk3dkuiQwWhZ3+Oz
xr9K3STMFv9F27/hZfA0ZCO0H4f+L8zttnk9fn9ysKPzsDtK04LRoP+Njk5I
GV8M9WA4R7VsV2Nf4xc5v+1r0LOGWcvMa/jBxMz3Hfk+4SM7Ky+z5rdX3id8
hHX2VcYDvH905iprmrXPmthftP1K28fwCXgs62Zv1c2XdchaZ+2zVvZQXd/w
AtYu65p1s7vqmvBo1i33sVb2Ut08Wf+sW9Yv62lf1S2Q9bwUekj6wDr+Jevu
Suzi0r+/zXXW3F0qn932t+Q7/5pvfbXqF42fZlflVXjcVcoXKU0Hb/gtcwx+
8HvW4990fbHSv+EZrGHW77Xge3/wqZCz7q5X3TLxkcAzWLes2b+rbsnSv+EN
jDtjfp3qlv6Dv4SctXaD6pYtTYdfAD/hRqr/T9v+WuYbcQnoW+gzB7X9G7rL
Uz4o/Im+sB6XSj30T4CFZe2jH6AngEsRP4I/AB3j6LaxG35PCC38m/qZ6G8f
x5XgJ0DWr6DyceB2YHW8U/jY2PBU5OH/Md5t88Nx4YvIz4f55m3TfRy+iEx7
ROWu/KZtsCee90naRj58Gh6JHHuUscrvx5RPH974WXLkGH3/U/r/uOpnCp8E
a+jB+MenDhm4emkfQB+lDTvOobupbb0C/eJJ+hjeSBwQ8Qz4HyeGLyKv/kcf
8hu9B8wN3w62ANgEOlun7TI8s2/bWAK0j7SN4/ON1i7tM4D24NDwrcm7U8Zm
wEbFJsX3OU++OzpX37SJDkJcFmuHdphDPfFK82S+ndt2TNaeaWPe1BObTPvY
v+Tz51lfZgyQ+QuknnuvUf3ipdcP8VnEk+Dbxd/A70mxZxm3Ici10KzWcs5v
4k+4Dh2xImD9jPU6qV84914QGsp7J4Zkg5b9dUtm3eFjx1cMznli27HF0BF3
zDV8zfPn3c8NzeKh75d3oG/gZ7R5TsZnqYzztClPE9qlQ4/vhPInyZdJPXg3
8UQ7t+xXIc4N3wp+Gcqrq7xixzTLpa5/2lku94IPUIevhucMCA33XpV6yufl
+/Ht2HdD7Bl+PepWzPfim66QMteJlyY25prQ0Aa2J/X4G4mtXjk0z7QdP0M8
G7HY62T8wQDpa5+0OTDPJT6L2FbiWolJIUaLOAHyVVImjmn19HmFjmNGuU6M
I/GR2M6DQj9j6lYLPTm/iQN5Pu0QE0XsEjGBxGmsnX7iA5oUJ9i2v+nAlKGZ
Ic+gfWjXDf3A3IMP58W2Y0D2T/trpR3o1844rJfn4e8akXaIg2I81suYIHvA
78DuiNsAowF7eTk0xCahLxDDgc4APgMNfmTy9VP+uG0adAl0E2JC0E82CA1l
rm8UGvQLyrSNHw3fPXybnN/IXxK4J5gn2CdlfG20R7vP5PomqcfPj98CWfxi
2qINfoOBgn+Cg1LGr3FAvl3/XN8s9eCB+JzwN4GPgpPiw0JmUwYvBb9k3E5M
3Zah2SrlRzKu24SGOq5NGR1zq9AMDQ3fAd18aMro78QeoAOAc+Ibwy8GLTTI
o55r4J/o6Zvn3cFEtw0970R9r7S3Xdok5zey7LG8M/gnOOgOefedMg5cv6Ft
Hs06Rc8A9wTz5Dp0yDv0CTBN8EwwUWiG99CmDN4JDT447AziJWhv19A8njZ2
D82wlGmbWAl8b+gY4J3gnvjgsBuGhQZayugPtEe7yFbugR6MlFheYpcXTN2e
aQd7Yq+0Tx1l5AuxkNAT04UOC3+Ht8MLwUynizwH40CmIy+Rm2XqkOnvtCzP
Kc+Va2Aok2J9QwfNfrn3Q5W/DQ3lPTuO++N552fuMm8vC+9YK/yH+h6eQz38
AVmLzEVGIEPoP3rCtKnvkenI5h7ag1MPP4G3wjeIBaMMbwErAlPCbmBsDkt/
iC0nrp0YB+KviY0D/+H64aFBz0Pfw5eGXoJMRN4hFynjB8SPiv4HLT5v/Hro
UdxDGR84bRydenyA+ArxKSEr2G+DvMDvjT6HLoc/G5qX+zg/NuUj0x/a6Z16
2kMOI48XS91xocf/R/vwT/ITUma/1GGZJyunnr5gK++UdQQ2R0x1z55V9h0h
3xiz0zJu7GOFBhnHPldiRrnv9NAg1/pknOdKe6eEnrl4emigpYyfC9sUWxV7
GHqecVLS8PZkGTs87RyRd+e7DA899SfnHvqPjkacG3oathA2EbYuOBMYFFgj
fmv818xZcFZsS+xKbEVsRuyhLUrLe2Q9WNTFbeOY6E0XpQ/oAvjE4T/Y32CO
2BPoqvi8Z4seSGw/ehTYw2VtY5GjlV/Ztq5CbBJ4KPOXscCex5YHAwAvAwcA
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
/5O1beg7Vf5fbftzR5VvrCyH11D+Qcfj/bSuP1Nb991D+bDaNkuX8ilq2/Zt
tV02ttUr+GXjvWgTdf2r2nrb7KqbrfF+uxbv1Hjv2py8d2PdcXs994bK+/2m
1xg/3nh/7UIqj6m8Rm5CtlaW3SPUx10rfx/WzZ8qr52ZRP+pyvcgC1Wepdty
sa2602rPZ3Qr/H/o9TPq+v8a7185STR7Vp4n+4q2T2UeNZXyuWrbfFeovE/l
M2SmVn5wbV1jCrXRq7EOPVz1m1U+m2Um5WVtW216XZ+hsT49jfJpG+vfa+n6
rLWxhzdEP6qyTJlJ12dsvO+tl/o5pdKdKk+luikb7427Xfm4jvctfsq6q63j
/lv5/bX3H7+u9qbuNuZxoMoTdM8ZuvdvKk/TbTyCbw9/g8+vqvoxHe+xfE5t
PFt7b+JRuu/IxvrFMcqPbqxfHKH88MZ6wa/wicb4C/tmnol8OUx1hzbWR09V
fkpjOYavjH0l+Mjgs5Txp52u66c1lm/HKZ+ism58Bu9eWS89WeWTGusU3Pdc
2tlXdQdV1sUPUHn/xjo3MWTIO/xaz6uf3zXWIW9QfmNjnRJ5jX8LXeEc5GRl
m3g/lb+qrPszz55Oe4uh7zS2bQ5SfmDj+cVzns67H8L8aqx/0cfn08/hqjuz
sZ79gsb4xdo25LGqO76xPfB17mFsRuj6SCVsyN3Vl2trf/dDVf6l4xi9D1X3
Qe09XmOVj6tti36i/NPatugjyv9b29Z9TPnjtW3joWrnuspxjg+r7qHa+0S3
Vt3fK++/fVB1/6ltT66M3tTxnttF0Dsa7++8UvVX0RY8U7QTatuorH9iJrDb
iBHGhw3W/Zauv1l7ny7PZo86+3bfUd27tW3gV+C1tfezjlI+urYN/Brrr7Yt
PV75Z7X3pE4P36rsr31X+Rq1caj3lY+pbUsPUf3HHesUy6h8YeWYv/07Pg8L
HQJsd+rI4ktKx/lhaxOfRgwHtvLFpX9j719eOj4Mm5qcOBVs3CtKx4dhO39X
Op4EnkZ7xKZgK7PmscfQVy8rHZeGfU1OnAo2NHFuxLhgB7OWiG8ADyCmjjgb
cNMLSsfqgUWwjwR5SGzeUaVlJPgJOMpRKaPvst8J3QD5CQ1879LSzwMrIIaX
WF7OH+A9iI/BXuc5xPRg9/NOxOtgi19YOo4QfOOi0v0Dx6CO2CAwg406jptq
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
MegClX33/w/PNgNn
           "]], PolygonBox[CompressedData["
1:eJwtmXncTsUbxp8QWbJG3vc5z5l5pUVClEop7fsi2vfNL6lIRdYUIm1KiiyR
EpJ9T0gohESWUpJC9jUiy+97fa7+uD7Pfc09M2eeMzP3dgoeadGoeaFMJrPx
uEymCL/dQiZTOs1kduRlMs/nZzJ9kX/IZTIvIQ8G1eFv0ef3bCbzB6gD7wX/
E3kjOBd+HXiOvgPAIsY+Ah/JfK+Cy5AvB8ORu4CiBZnMKvgG+o5k/A3I14Oe
6D4H5ZE/AkPRr0E/lvlK8bzeyDehH4LuHtAe/TDQD3kJfToifwyugl8NPqNv
N3Aq8uuMX8v4deBh+Hc560aAK+FXgFfyvMbd6PrFTKZhksk8AP6EP8j4RYxd
DS6lbwPQmb6fgvrIF4FOyJ+AMvS9Hcylb23wM7q/QAnkL8G1yNekfjda40ie
9Wbw2u7leZ/Bq8A/gt8Fz9C3IWjFfztBe4BcHGxibC/aitH3V9Y4BH4YLNP+
gbLoyoHNksFedL3hk5DPZA9WMPcb8C7wBJRGLqN3ynyPsIbz0Vdh3pbwZ8EK
nt0Z/UfIj9H/ReRttH0GH0L/xvT/CbwGD6nnGgHaIj9A23f0fRP9xfBLUr+7
l8CjOgs8p0e+93Conqf3g7yMMS8g12S9qxl7K/2ron8qWJfSp5Xmgm+H16fP
WcjtdJ7yfYae09lmfa+jmwzawz/X+ZCeMfchz895LUO1Jp01+l9P31OzXlsT
7W++1/gJ+o/B+DyvsQO64+Hv0PdTMJL+fRh/I+O/rUw7upr0yafv++hbI2/M
+azrzuT4b//QlqL7CjRGbgQWM/YU9N8yfiJ8PPIo9DcjB8YsZP7tzHEj/CYw
BrkvGMPcWcZ8SN+r4O9rLG2tGf+h7jRrGxQ9tg98IbqHUt8F3YH7GXsfWJj1
ni1D3xT9qDzf0eHIVXn+0sQ2ohV9v6dtHfJK+m9BXsD8bdBPAn3R9wG5fK/h
V/R1Gb8P3QfwnbqP9G8H/wIs4Hn30zYsz3fsbe1latvRQe8D/b2p90p3riXy
aK1P+8P47jyridbEWpaCD9DNZUw79EPALfDI8xfTdz/jN/Psp3T/ZY/Ai8iP
B4/dBZajv5C2rvTvAobC94KeyP10xtHVof8w+u4Do+Dnwocj7wevIOeDgbIF
YAljF4MOjO+Y+O4tBr/m+w7eie47+Crkc9B3Ra7Fen9B7sN6X9Pz4Ot1luHn
MffLqd+l3sFU/utA5miE/jH0x2Tf6DOdZy8A43I+EzoLsil9Up85nbVBYGnO
PkC2X2f+vdRnTGdrIPz7nG2ubK1sQH/kc1jPBu2nbKD2JvVeaQ+PIl/G87/g
2fNBNeQzQCP1pU839Gcz/jfGD6BtXs57pr2Sja9N32m0Dc/3Oz6e/zYTPE3/
/qAmch1wKvJ39KmGXAOcAl+odyhbBk6HL4JvZ76p8Md1NkFQXxCQ56P/C/02
UAI+HV4V3RmgQGdT9lPrAf+wltHwdfKFoBj6afDL6fscuAQ+TPYO+TJQHXkJ
+guQ64Nq8MXwfxh7GJSFz4IfQf4S/ZM6X7L/yEVABeTZ6E9E/gq00PsCu+i/
D5yIPAP933rX6J/QfoB85BTkZI/QV0TOA1n4N/CyyCepDT5PPga5FKgEnyN/
itwKNIAPB9civwAuRR4BbkBuq/8o3wWqsXfLU/um8uB01nMauIK9/QV+iWxB
ankq7/ABxr4GrmXsWHAv+nsUb+i+oj+dvkvBO/n2afXQXRA8t/psR3ci52cq
Yw/yjAboIm2/oZvG+NuYuxO4Ev0o+RDkjuAK5M/1PORXwTXIY8BhxhYChxh/
CuN3cvaqMf9ydBOZv67uEm1bdPfRP83YDfLJsjXgSfjXoKXsC7gu2IfLd88C
C+X/mK8Gc6xkjrvo2w1cTd/RurPIH4Cb9DxQnfFr6NuLsR+DYoydCO+JPAH9
UfpOgb8Nfxd+N/Ovhb+btc1ryvgZ8FasvYC2hvBaqeXZoAzyQVAp3zHCccE+
V772TfR58MrgSv13+bfU70jvRj50G3P/C88ij6NPD91nUAV9f9pK6i4F267q
tO1G90y0r54OmsO/lD+ULQB74C3QX6S7A06A708dyyjmKRscwyh26cN8pYNj
LsVaA9GfgFw8+FlacxHe1wTmfws+nvluQ7c1Z1+sGK0xfAv8PeQ5eoc8OxP8
3xUD3AxvDy5HHgnaoluVs63SmL2KdXjGDHRHaLsK/W/od7K+GejP0X3M2bfI
J8yCH4veq7G0BZ1X3Yms70gOOdU717uH34VcimcMgn8DKgbHdIrl+sHPTx0T
KRaSj70buYrsN7pvwQHtVfBdUoyxVetRTJC1jVsjewgfCy8CX4l8NOe5FaPf
ir4IbQPgX4NywWdSZ7EvmEzfGvBPFP/key91R3Q3tKdLUsdcirV0J2egG6sY
DH5IMQZ8snw48tGsY7dSBY4dFMMtRz9F8Q2642i7FD5I8VvWPuVy+ODUuYR8
XJHgNWutiskKgmM0xWZ6JzqbugM6+zqjW+E3y34ilwL/yv7SNjFrm7xX9x0+
IWsbW5Daxsi2KOYpzF7OoG1S1jb6GnTXBr+bJezf1cF3RHdjJm3HcrYJsgX9
wZrUOYJyA9kU3V2dIZ0d3eGS8nfoJ2dtky8OtiGyHVN0RpDrB8uKGQoF+1z5
Wp35wsExgHy/bMbmnM+8zrpyqpKpz5jOlmLGU1KfIZ0d5SB3BtsA3f15OkOp
bbhst2KWP/QuaBuXtQ8sgXxHcF/FPLvgLaPvchl4LXRnB/932aTOil8Us+c5
5uyP3C84l/pL94X1NoP/gNyatvbaz2Dbopj66eCcUbniclAZ+dXg3DCjnAL5
Qs5T4ZznaCP/Ac/kHCM+Cn8sOBZWDryHtc5B92PWMd7XyM2D59Yak+CYTrGc
7mSn4JxBuYJygoeQu4KftP96R8gTmfNR5nofrIb/EnzXpvDMFcjj0T8Mfw9s
0H2AN1G8B5bCfww++5PoPx95UfBdmaDx/N8jOfue9ToTwTGKYpMDtC3WfWO+
BxnfG7QIzhmVK+o/fq9YQPEn8ouJ13684s+s/8PJwTG+YnvZANUCzkS/Puua
QA3kt4NrA/Ihqg3Upm1D1jWCC5B/4BkvJbZPa5Hvom0ruu6Jc2vllMollWMP
Cq5JqBaxWc9EHhice/dgzZsUuwbrlFP3Dq5JqBaxSTYBPjPYtoxhjtHIY4LP
UkfGj9f7CI5199D2BnJHxu+Ufcq6VlA1tayawab/cmDlvsqBmqG7mPOTo70r
bT2DcwblCnon78I7wXdn/Q4mBucEygX+1p4F5wzKFfbKRgafcZ1tjZEvHxe8
Nvn0orqbOa9dPmU28uTgvb2N9/e43nV07eVl/Sf05eCV0T2k/CI6BlTsl8BP
jo4BFfvly77Rv1K0/AjYp/wxuu9joHx0jKjYUHPuR38qPCI3lT2MjqEVO6fw
06JjZsXK6lOZd7VbPgx5LmgdXONQbUNnbGHwmdZZPgL/MngPtXcH4eUZPz1Y
nqkYONiHynf+S9tc2XowDn5Y75P1zQmWb6b/eN7PvODcWX0qMN+C4GfNQr8s
+I7pbmUS+6IlsplZ+6S/mS9G/7f/JfZdXwU/Wz5sT3AMrthb//FQcEyvWL6M
4heeVxw8p/xE9iE65lWsex4ojO64At/dcXpGdAyo2K8eKIeubIFtp2KMmsE5
s3Jl+VzFSoqpFEspZipB35KgdeKYuXSBfZx827TEvrNQgZ8lH/pwdIyk2Eg1
n0ejY0zFlheAQtE5iHKP8ol941HWUC6xj5Rv3A8vndhHlojOIZQ7VKQtq/8f
LX+b2JeVhp+c2Kctja6BqfbVSfmK3kf0s75J7FuLKkdJ7GPz0B8MfrfzwEnw
H4L37qvEsc0OeMnEMY5800b4CYl91IXROZhyrzNo+4f9raUzi/wUODs6p1Qu
qba60TmkcsfTtL/0rxc99hk9k/mvVs6J/CGYpXwbfhbyQPAv/S+Bn4n8LHhC
uSfYxXwXKmdBf2703M11vhl/ndagvQLz4Q9Gn5VPdYfgjeC1kYfoHcBvh9dB
/hj0CK4hqHYgmz4H/S3ws+EfyZ8pn4fXQh6sdyx/Dz9X5wkMDz4D2vsdsqHo
m0SfxV7aQ/h98LrIQ0GD6BxXua3+o3KVptH/TTnLOvo3i4599J/7Rt9R3U3l
OD8H+0T5wsLwiuznT8HybFA9OqdXLl8lcay6Vj4qccyq2HAlvFDiGHF9cE6u
XLwobVuCc3rl8sVl/5h/c7A8B1SC/x7c92twgLWdGf2sZmBb6hqiaoeKETuj
exmsVaxP25vIb4A/4dfpPCH/yBx36v4J8F7Rvkk5Uj/k/uDWxDXmEcjDQZd8
jxmms5mzr7tDexZt82XrVWPdyFqaR9cKlXO+hdwz+tnKIT6JrlGpNtUGdEHu
Gr1W5RTKlXektgXKme+PzoGV+2pP74nOSZWL6kxMiraBsn2KSeZE18hVG5dN
GxPtc+RrFGOMi/Yp8iWKaaZE+wz5CtVcZkXfId0d1TBmRN8BnX3VdKZH30nd
RdVAZkffId0d5dQTon2UfJNiqhXwldG1OdXA81PHNIplVAObL3smG5Bnm1gU
+Rvank/cthC5QuragWqWi+CVUudyqkmqllsP/nLimu6P0TU41d5UExwcXNNT
LU8xzWmpbZpsmZ6xTHc3deyjGGha9BnT2VKN5mfkUbTdL/vBnPuQR8me0f/t
xLXCzqll1Qx/hq8B3RLXfG9X7Bade7XVGUodYym2Uk18HfLv0WdJ32T+RF4f
HSu8qndO/y3RtT3VQFVr+yNap5rbE3p30bV8ndHPo2uuqrVqzdvg26NtRXf0
vwXHvIp1dUdVe39e+XriGvwh7Wd07KM7tDznO6O7om8Mete74G8lfucDor8h
6NuB7swE5EyBc3/VxL8PjnEV28pnrwqOqRVLyyZMDbZhsl2q2R1mviPRsZju
7E7k21LfFa3xJ/jq6FqC3rFiw4eDY3nFiJuCY3TF5vIpqiXrG5W+TammfH10
jUy1MdnwxtE1J9WaZLMbRtcUVEuQTb4puoam2pls8pXRNUTVDuVDLoq2ubK1
qhleE12TUy1OPufZ6BhJsZFqjpdG+wz5CtUcz4u28bLtqoHWjvYZ8hWqmZ4V
7VPkS1QzzUX7IPke1QyrRPsM+QrVSO+IrqmpliafUznaB8r3qaZYIdoHyvep
plgmumapWqV8frHoGq5qt/Lpx4Jrnqp1KqY4PdpnyVep5vp8dMymWE01yNbR
Pl++XjVI1Y67p/+dvcS18ldSx+aqmb8YHYMq9lQN8JXoGEKxg2pu3aNjDsUa
qgF2iPYR8g2qEbaJ9knyRapxtov2GfIVqgnpW4hq7qq165uIaoWrU8d6qhnq
W42+yehbjL7Z9IiOiRQLqea5M7gmrVq0YhZ9m9uVc61R3+jWM9d5Ba4lqiap
2v/rqe+6vgHo21ib1LUGfSPbHf1NTt/idIdUmx+QuramGr2+vfyS+tuHvsHU
h19UYNujHFm58QvKN5GVI9eDr8y5tq825T76Rqhvg8qBDgTXnFVrVgyo2uaC
1LUr1Tj/Dz5Y19g=
           "]]}]}, {}, {}, {}, {}, {}, {}, {}, {}}, {
       {GrayLevel[0], Thickness[Tiny], LineBox[CompressedData["
1:eJwl1Xecz3UcwPEfd6UpwkklVOJClGtIiQjZjpSMOFnhrpAOSSWcTWSdQlnX
sIrMbFntvbSnlj2Pnu9Hfzy93p/P73e/+/6+v8/vlMvISs8skEgk9vmnSFIi
EXOTgolEbYMkClGYFMqQShq1aUo7epJNDtPJYw172Mt+DnCQQxzmCEc5xnFO
cJJT5HOaM8QFFYhrIYl8WtGVcS4wl2TzzuREYhdrWc86PvJ+3tBP9HX9WJtp
U6rQ0nqwttC32WHerrN1hj6qA6hhfk1v0b/5h+LWxfjNPJ2b43eQwTD7g3Sc
dqUbKdYvagktSQ9zdz41X6Dnx3XFc5jLtrgme1v1BZ2m/bQ/N5lf1Ru1vP6l
DbnY/KtOJY1lLGcgGz1WPF6LYmywztYmFDY31oOc4TSled7+FJ2lz+lKVlCd
yTQgxWMl+dO8jxt42XoUo8lhLGOo77HHGMBSOpNr/1mdoZN0pl6uBTWJLeba
uoylnEVzex31ATrQmU78ZP8oRzjOCT6gA+d4vKN+SHvmcbW9q+J1zNV0c3yW
OlEf0b5cb35Fq+mVWo674n3EeWCCuSpL6B9nhnpx7+Lz4C3P6aedmGYer1N0
atxTLrNOaAE2me/QJSwmmWb22ur93Ed72vGj/cMc4hjvstv+e1pIz6at+f34
jM1V4+fMT8draU+9VDfrxjirXBffF6owlrqMphKrqMyYOOvxGXGn+Zo4h6SR
x7X2HtYsJsdnywZ7o0hlcdxb+lInnktWfL+oSE7cM0ZSIc45fciMc0BvesUZ
i8+FEUzyO4bretbxTFwXefE+eSjuKz3oziLKM4y1cU/iLLCQrnSjVpxlr1s9
zgC1uJ1FcWY89jufsS329UK9TZ9kS5wTfTPODFutn9I1cY/jc9Sy8XwW8lL8
XDwnvtsMtZ6oT2gNnaVt9Du9R7/Xe/VbXa1rWMUPsU9RcxsdGq/BXnM+pyjF
BHuP63gdogvYbp6vw/XBuIc6khHcal1Ca+oflDGX1fm6gEz60JvB9udqrs7R
mfpVXDdFrL+M+6Lf6Er9WltzkbmVDolr4wvzCp2jJ7mETdarNZ3S5isoY66p
lePsUYlScbbju8Vsj//Cz/Ea1o10Pwc4z/pcWpMev58KVCSVzz1nkA4km3es
/+Vullvv1ka6RxvrznhMd2l9bUgDilp3iftKc1rSgh3268XfE+pQN75T8b7i
zGqvuPfMizNCF/sZyf//P/0f8nDxRw==
         "]]}, 
       {GrayLevel[0], Thickness[Tiny], LineBox[CompressedData["
1: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
         "]]}, 
       {GrayLevel[0], Thickness[Tiny], LineBox[CompressedData["
1:eJwl1EVzFVEQBtAbXKK4LtiwowqXCAkEDR60WOIe3N35EcACd92xxKFwieLu
EBxC4NxicfJ1z3T1m9w3SatxBfmzEkIIbfw4lRxCemIIreWypBAayNP6cvV4
PpGhb+h6gbq2PKP/op7AZzL1jVyfra4jz+q/qSfylSx9Y9fnqOvKc/of6kl8
p7u+ietz1YnyvP6XejI/ydY3dX2eOkle0Feop/CbHH0z1+erk+VFfaV6Kn/o
oW/u+gJ1irykD3Ka/i899S30C9Wp8rK+ipyuT5C5+pZykX5MaghjGZgSwma5
hU2c5AT10kJIi0kqDahPjvlGsjENuc+9yN4RciTDGc0oBpjfIDeynuMcI83+
2rIOtUikLtnmk2UKSZRRGtP+IXIog8lnGHnm18p1rOEoR+Iz258gqxCoRlW6
m68ha1KdEorjZ9ifF5+X/gyKZxNr86vkalZymEPx+ez/6d4vflDBb7Ko5C9/
KDJbGD/H/t6yD73oR9+YZpbLFSzjIAdItv+Te+V85AufyeQb3/nKXbN34u9g
f47sEc+QXHrGzzCzRC5lMfvZF8/W/lfuveYlb3lDBu/5wDtum71Fkf0ZMpP0
eI5kxd/HzEK5iAXsZU/8Pu1/5N5jHvKUJ6TznBc846bZG/GM7O8su9CJbnSl
t5l5cj5z2c2u+K7YX+xeSTxjyiilG/d5wD2um73GXfvbyfa0pSMd4ndhZrac
QwE72RHfS/tvxOeLO+I5cIuu8cwp5A5XzV6J30H8O5MzmMYsZsb31cw2uZ2t
8b2zt0ba//9X/wA4CqeR
         "]], LineBox[CompressedData["
1:eJwl1Vd0VUUUgOETQlVaCD0hhSQmQCAKlmf7i+ISK0VKqFGKXcDeFVABFRVQ
IPRelABRescA1lcbvURAkCIIfnv58Offe8/Mnjm5c8/NLR3RbXhKkiQ/+5Pa
MEluq58kWTyyQZKk8W55bR4mr8W3y7N5lLwJ75HX5eHyOnyHPIdHy9N5r7yA
x8rvFFdyV+6BMozGOEzDdMxAOWZiFmZjDuZiHuZjARZiERZjCZZiGZajwh7V
cW6+K86OFfKStCS5Fhlog0wMbOS5eDDX5EE8pXGSTMZ68Rlrj4tP8wbewtnm
3WisJb6TF/NebsE/cTPezZ14DzfnG9AUVfIO/C2n84+cxju5I+/iJnw9Nov7
cyq+iPNhAD5zju3cGKfF26Jv9MSn8hrOl4oX5M9jHkpjXYyjBnJRaE4Ob7JP
F26EHdbvxC60l//DH/B43BR7yKvwgzWT47njnNiC1fHc8cy4Bu30L+SG+Mua
BvFcarv4E/kkpMj7yj8W9+M+KFbrHXOQguzop5bFX2IF1mE5VuE6Y13QGdud
66JeO3h7/G9Q35zO2Kg2kfNQho7mD+FpcT5jdThLba34dfH3PItH4k28gW1q
5/W8gK1xH7AZVxv7m8/iDFrJE7168UfyR7gnemBSjKE79uuXE/dRvAxrcUqt
rVqF+Gtrn+ErauX8JFobezruHz/FrXgCbzDnlPn1xCf5qvgM0N54EW+NfvgG
S7AU6605Z27biHkd1uKk+jGupV5gfW3+U20On4jvM1diDKrls/k4v8vzYw/x
y/wKnsNreDXOoJ7PRXoWcN3oa58Tce/i/uFD8ZU4S7xH5KPwOaaiBP8au4xL
eFi+z7wZ4mHi6Tycy3kot7DPE9ycH+f3sRAL4ozmPBR3Lz4jXNbnQX4bj+FY
9OWjPCL25Qf4/jgjLsnv47fiOfSvhyN6HsURY9PVD/Nh+SFcFFfzpiC+W/FO
4Qu8kTOxGIuwBofUV8a9Nf89Pi+fy+d4HGfgJbyImTio/g5/hW7Id56zalPi
bnKe/N64P/GdQYd4H/KzOGA8V/6ouBNPtedBHMAfxgbxYAxEGYbgHnMn8ESM
RyXWoJn17eL9gSIUowNujd5cgo7Yj334Xf9+XIq+GID+6BqfV7x/4vmxGqvQ
VP/cuLPIQT7ycEu8J7gQBXHu6I3f9O8V30H0RB/0xt3mj+VxGIMKrES6/q24
NVoiExm4Od4PnI020Re/Bvp351+4yu9MTR7a4P/f0/8AORQHHg==
         "]]}, 
       {GrayLevel[0], Thickness[Tiny], LineBox[CompressedData["
1:eJwl1FVTlAEUBuAPuwNUvPUHeGmhqFh4bXdgJ3aOP0Jn7O5EkQYBY2wwUaRE
wEBCxUbFeHa8ePad98w5u7PfzmyvuPgxy8OCIOjtJbJ7EPTpGgTNugXBrfAg
eB0h9fPygJ4g++pvZJJeIG/rifKgfkH206tlsv5E3tGT5CH9ouyvv5Up+lN5
V0+Rh/VkOUCvkal6oczT0+QRPVVG6bUyTX8m8/UMeVRPlwP1OpmuF8l7epY8
pmfKQXq9zNCL5X09Wx7XL8lo/Z3M1EvkAz1XntBz5GD9vczSN0cGwRaqPLer
8hpXCOvpgbKfTnpnOtKVLuTbj5DdCCfW3ihGm6/XN7COTWyk0jxXXiaHv/xh
n5tWsjUtaUsb8uy3lx1ox0h7I4g1X6WvZiVrWUOF+SWZTRa/aWKvmz89fB6/
CTMLuGu/uWxBM4bbGxb6DubL9OUsZQXxvDDPkJmk84uf7HHzzft+5ys/aOSO
/V+yiZ/E2BvKSPOF7haxgCUsptw8VaaRwg8a2e3mvfsPvOMjDdy2/1l+4RND
7A0OPSPzOe7mEsd85vHcPEkmc5HvfGOXmzfuq3lNDW+5Zb9O1lNLtL1BDDef
4W4m05nNLMrML8hEzvOVL+x0U+7+Bc+ppIKb9l/KV1Qx0F5U6Dcwn+xuCpOY
xlRKzc/JBM7ymU/scFPo/hlPKaaIG/ZLZRklDLDXnxjzce7GM5aJTKDE/LQ8
wyk+0sB2N/fdP+Aej3jIdfsF8gmP6Wevb+g3Nj/m7jhHOckJakLPU9ZTyza7
W3v+/7/6B9De03Y=
         "]], LineBox[CompressedData["
1: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
         "]]}, 
       {GrayLevel[0], Thickness[Tiny], LineBox[CompressedData["
1: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
         "]], LineBox[{6820, 6482, 7978, 7976, 7977, 7838, 7837, 6820}]}}}], 
    {PointSize[Large], 
     LocatorBox[Dynamic[
      Which[And[
        Part[$CellContext`pt, 1] <= 0, Part[$CellContext`pt, 2] >= 1], {0, 1},
         And[Part[$CellContext`pt, 1] <= 1, Part[$CellContext`pt, 2] >= 1], {
        Part[$CellContext`pt, 1], 1}, And[
        Part[$CellContext`pt, 1] >= 1, Part[$CellContext`pt, 2] >= 1], {1, 1},
         And[Part[$CellContext`pt, 1] >= 1, Part[$CellContext`pt, 2] <= 0], {
        0, 0}, Part[$CellContext`pt, 1] >= 1, {
        Sqrt[Part[$CellContext`pt, 2]], Part[$CellContext`pt, 2]}, And[
        Part[$CellContext`pt, 1] <= 0, Part[$CellContext`pt, 2] <= 0], {0, 0},
         Part[$CellContext`pt, 2] <= 0, {
        Part[$CellContext`pt, 1], Part[$CellContext`pt, 1]^2}, 
        Part[$CellContext`pt, 1] <= 0, {0, Part[$CellContext`pt, 2]}, And[
        Part[$CellContext`pt, 1] > 0, Part[$CellContext`pt, 2] > 0, 
         Part[$CellContext`pt, 2] < Part[$CellContext`pt, 1]^2], {
        Part[$CellContext`pt, 1], Part[$CellContext`pt, 1]^2}, 
        True, $CellContext`pt]]]}},
   AspectRatio->1,
   Axes->{False, False},
   AxesLabel->{None, None},
   AxesOrigin->{Automatic, Automatic},
   DisplayFunction->Identity,
   Frame->{{True, True}, {True, True}},
   FrameLabel->{{
      FormBox["\"b\"", TraditionalForm], None}, {
      FormBox["\"k\"", TraditionalForm], None}},
   FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
   GridLinesStyle->Directive[
     GrayLevel[0.5, 0.4]],
   ImageSize->400,
   LabelStyle->(FontSize -> 20),
   Method->{
    "ScalingFunctions" -> None, "TransparentPolygonMesh" -> True, 
     "AxesInFront" -> True},
   PlotRange->{{0, 1}, {0, 1}},
   PlotRangeClipping->True,
   PlotRangePadding->{{
      Scaled[0.02], 
      Scaled[0.02]}, {
      Scaled[0.02], 
      Scaled[0.02]}},
   Ticks->{Automatic, Automatic}],
  Appearance->None], "\n", 
 DynamicBox[ToBoxes[$CellContext`k = Part[
      Which[
       And[Part[$CellContext`pt, 1] <= 0, Part[$CellContext`pt, 2] >= 1], {0, 
       1}, 
       And[Part[$CellContext`pt, 1] <= 1, Part[$CellContext`pt, 2] >= 1], {
        Part[$CellContext`pt, 1], 1}, 
       And[Part[$CellContext`pt, 1] >= 1, Part[$CellContext`pt, 2] >= 1], {1, 
       1}, 
       And[Part[$CellContext`pt, 1] >= 1, Part[$CellContext`pt, 2] <= 0], {0, 
       0}, Part[$CellContext`pt, 1] >= 1, {
        Sqrt[
         Part[$CellContext`pt, 2]], 
        Part[$CellContext`pt, 2]}, 
       And[Part[$CellContext`pt, 1] <= 0, Part[$CellContext`pt, 2] <= 0], {0, 
       0}, Part[$CellContext`pt, 2] <= 0, {
        Part[$CellContext`pt, 1], Part[$CellContext`pt, 1]^2}, 
       Part[$CellContext`pt, 1] <= 0, {0, 
        Part[$CellContext`pt, 2]}, 
       And[
       Part[$CellContext`pt, 1] > 0, Part[$CellContext`pt, 2] > 0, 
        Part[$CellContext`pt, 2] < Part[$CellContext`pt, 1]^2], {
        Part[$CellContext`pt, 1], Part[$CellContext`pt, 1]^2}, 
       True, $CellContext`pt], 1]; $CellContext`b = Part[
      Which[
       And[Part[$CellContext`pt, 1] <= 0, Part[$CellContext`pt, 2] >= 1], {0, 
       1}, 
       And[Part[$CellContext`pt, 1] <= 1, Part[$CellContext`pt, 2] >= 1], {
        Part[$CellContext`pt, 1], 1}, 
       And[Part[$CellContext`pt, 1] >= 1, Part[$CellContext`pt, 2] >= 1], {1, 
       1}, 
       And[Part[$CellContext`pt, 1] >= 1, Part[$CellContext`pt, 2] <= 0], {0, 
       0}, Part[$CellContext`pt, 1] >= 1, {
        Sqrt[
         Part[$CellContext`pt, 2]], 
        Part[$CellContext`pt, 2]}, 
       And[Part[$CellContext`pt, 1] <= 0, Part[$CellContext`pt, 2] <= 0], {0, 
       0}, Part[$CellContext`pt, 2] <= 0, {
        Part[$CellContext`pt, 1], Part[$CellContext`pt, 1]^2}, 
       Part[$CellContext`pt, 1] <= 0, {0, 
        Part[$CellContext`pt, 2]}, 
       And[
       Part[$CellContext`pt, 1] > 0, Part[$CellContext`pt, 2] > 0, 
        Part[$CellContext`pt, 2] < Part[$CellContext`pt, 1]^2], {
        Part[$CellContext`pt, 1], Part[$CellContext`pt, 1]^2}, 
       True, $CellContext`pt], 
      2]; $CellContext`xx = $CellContext`k; $CellContext`yy = 
    If[$CellContext`k < 
      1, (-$CellContext`k + $CellContext`k^2 + ($CellContext`b - 
         2 $CellContext`k $CellContext`b + $CellContext`k^2 $CellContext`b)^
        Rational[1, 2])/(1 - 2 $CellContext`k + $CellContext`k^2), 1]; Show[
     Import[
      StringJoin[
      "http://students.washington.edu/bsegal/NLSfiguresMathematica/xx-", 
       IntegerString[
        Round[10000 $CellContext`xx, 100], 10, 5], "-yy-", 
       IntegerString[
        Round[10000 $CellContext`yy, 100], 10, 5], ".pdf"]], 
     ImageSize -> $CellContext`imagsize], StandardForm],
  ImageSizeCache->{1., {0., 1.}}]}], "Output", "PluginEmbeddedContent",
 GeneratedCell->False,
 CellAutoOverwrite->False]
}, {3}]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Dynamic", "[", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"xx", "<", ".8"}], ",", 
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"Import", "[", 
       RowBox[{
       "\"\<http://students.washington.edu/bsegal/NLSfiguresMathematica/xx-\>\
\"", "<>", 
        RowBox[{"IntegerString", "[", 
         RowBox[{
          RowBox[{"Round", "[", 
           RowBox[{
            RowBox[{"10000", " ", "xx"}], ",", "100"}], "]"}], ",", "10", ",",
           "5"}], "]"}], "<>", "\"\<-yy-\>\"", "<>", 
        RowBox[{"IntegerString", "[", 
         RowBox[{
          RowBox[{"Round", "[", 
           RowBox[{
            RowBox[{"10000", " ", "yy"}], ",", "100"}], "]"}], ",", "10", ",",
           "5"}], "]"}], "<>", "\"\<.pdf\>\""}], "]"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "400"}]}], "]"}], ",", 
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"Import", "[", 
       RowBox[{
       "\"\<http://students.washington.edu/bsegal/NLSfiguresMathematica/xx-\>\
\"", "<>", 
        RowBox[{"IntegerString", "[", 
         RowBox[{
          RowBox[{"Round", "[", 
           RowBox[{
            RowBox[{"10000", " ", "xx"}], ",", "20"}], "]"}], ",", "10", ",", 
          "5"}], "]"}], "<>", "\"\<-yy-\>\"", "<>", 
        RowBox[{"IntegerString", "[", 
         RowBox[{
          RowBox[{"Round", "[", 
           RowBox[{
            RowBox[{"10000", " ", "yy"}], ",", "100"}], "]"}], ",", "10", ",",
           "5"}], "]"}], "<>", "\"\<.pdf\>\""}], "]"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "400"}]}], "]"}]}], "]"}], 
  "]"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 DynamicBox[ToBoxes[
   If[$CellContext`xx < 0.8, 
    Show[
     Import[
      StringJoin[
      "http://students.washington.edu/bsegal/NLSfiguresMathematica/xx-", 
       IntegerString[
        Round[10000 $CellContext`xx, 100], 10, 5], "-yy-", 
       IntegerString[
        Round[10000 $CellContext`yy, 100], 10, 5], ".pdf"]], ImageSize -> 
     400], 
    Show[
     Import[
      StringJoin[
      "http://students.washington.edu/bsegal/NLSfiguresMathematica/xx-", 
       IntegerString[
        Round[10000 $CellContext`xx, 20], 10, 5], "-yy-", 
       IntegerString[
        Round[10000 $CellContext`yy, 100], 10, 5], ".pdf"]], ImageSize -> 
     400]], StandardForm],
  ImageSizeCache->{400., {192., 196.}}]], "Output", "PluginEmbeddedContent"]
}, {2}]]
},
WindowSize->{1497, 1999},
WindowMargins->{{43, Automatic}, {Automatic, 0}},
Visible->True,
AuthoredSize->{1497, 1999},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.1 for Microsoft Windows (64-bit) (March 23, 2015)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 27350, 720, 1006, "Input"],
Cell[28839, 757, 2110, 52, 53, "Output"],
Cell[30952, 811, 172269, 2870, 435, "Output"]
}, {3}]],
Cell[CellGroupData[{
Cell[203255, 3686, 1623, 43, 117, "Input"],
Cell[204881, 3731, 767, 21, 388, "Output"]
}, {2}]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 9xp07kMZlK7n0C11ebrEVTtk *)
