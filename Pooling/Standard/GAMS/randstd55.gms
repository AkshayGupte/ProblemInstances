$ontext
	 randstd55 pooling problem data.
	 Author: Akshay Gupte, written from AMPL.
$offtext

$eolcom #

set i    /1 * 120/;
set s(i) /1 * 40/;
set t(i) /71 * 120/;
set k    /1 * 14/;


alias (i,j);

parameter c(i,j)
	 / 1.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 39
	   2.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 36
	   3.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 36
	   4.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 30
	   5.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 35
	   6.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 37
	   7.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 37
	   8.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 35
	   9.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 34
	   10.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 34
	   11.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 36
	   12.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 37
	   13.(43,44,45,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 30
	   14.(41,42,43,44,45,47,48,49,50,51,53,54,55,56,58,60,61,62,63,64,65,66,67,68,70) 	 37
	   15.(41,42,43,44,45,47,48,49,50,53,54,55,56,58,60,61,62,64,65,66,67,68,70) 	 34
	   16.(41,42,43,47,49,56,66,67,68,70) 	 33
	   17.(41,42,54) 	 38
	   18.(41,42) 	 37
	   19.(41,42,50) 	 30
	   20.(41,42,45) 	 31
	   21.(41,42,63) 	 39
	   22.(41,42) 	 38
	   23.(41,42,52) 	 34
	   24.(41,42,51) 	 32
	   25.(41,42) 	 38
	   26.(46,51,55) 	 35
	   27.(46,69) 	 32
	   28.(41,42,57) 	 31
	   29.(48,52) 	 32
	   30.(41,42) 	 34
	   31.(53,59,64) 	 30
	   32.(41,42) 	 40
	   33.(57,60,62) 	 34
	   34.(58,61,65,69) 	 34
	   35.(41,42) 	 37
	   36.(46,69) 	 32
	   37.(41,42,46) 	 30
	   38.(41,42) 	 27
	   39.(59,63) 	 33
	   40.(44,52,57,59) 	 32
	   (41,43,47,48,50,51,54,55,56,57,59,61,62,64,66,68,69).71 	 -93
	   (41,42,43,44,45,46,48,49,50,51,52,53,54,55,58,61,63,64,65,68,69).72 	 -54
	   (41,42,48,51,54,56,61,63,66,68,69).73 	 -43
	   (42,43,44,46,49,52,53,54,58,59,61,64,65,68,70).74 	 -42
	   (42,43,45,46,48,51,56,58,59,60,61,67,70).75 	 -32
	   (42,43,45,47,48,50,54,58,60,61,62,63,67,68).76 	 -89
	   (41,43,52,56,59,60,63,65,67,68,69).77 	 -30
	   (43,52,53,54,56,57,58,62,63,66,68).78 	 -72
	   (42,47,49,50,53,54,55,60,61,62,64,65,66,67,69,70).79 	 -67
	   (41,47,49,51,52,61,62,64,65,70).80 	 -71
	   (41,43,44,46,47,49,52,54,56,57,59,62,63,65,69).81 	 -42
	   (43,44,45,46,47,48,49,54,58,59,61,63,67,68,69).82 	 -49
	   (44,50,51,54,55,57,60,61,62,63,68,69,70).83 	 -40
	   (42,43,44,49,51,60,62,64,65,67,69,70).84 	 -30
	   (41,46,47,54,62,66,68).85 	 -41
	   (41,48,50,52,54,55,56,57,58,61,62,65,69).86 	 -50
	   (43,46,47,49,52,53,56,57,60,69).87 	 -35
	   (42,43,44,45,46,50,61,64,66,68).88 	 -87
	   (41,42,43,44,46,47,48,53,57,59,63,64,66,68,69).89 	 -37
	   (41,42,43,44,46,52,54,57,59,60,61,64).90 	 -41
	   (42,43,44,45,46,49,50,52,54,55,56,58,62,66,69).91 	 -46
	   (42,43,44,46,47,54,56,59,61,62,63,64,65,70).92 	 -41
	   (41,42,43,44,47,48,51,54,55,57,58,60,61,63,64,67,69).93 	 -83
	   (44,47,50,52,54,60,63,64,68).94 	 -66
	   (41,43,46,47,52,53,54,55,56,60,62,65,66,67,68).95 	 -68
	   (44,50,52,57,58,59,60,61,64,66,70).96 	 -84
	   (43,46,47,51,53,55,56,57,58,59,60,61,62,66,67,70).97 	 -18
	   (41,43,44,48,50,59,61,64,66,70).98 	 -38
	   (42,43,44,47,48,50,51,53,55,56,57,58,61,62,65,68,70).99 	 -38
	   (41,44,46,47,48,49,54,57,58,63,64).100 	 -44
	   (44,47,49,50,51,56,59,60,62,65,67).101 	 -16
	   (42,44,45,47,49,55,57,59,62,63,64,67,69).102 	 -65
	   (42,45,50,52,55,58,59,60,62,64,68,69).103 	 -87
	   (42,44,47,48,52,53,54,57,59,60,61,65,66,67,68,69,70).104 	 -22
	   (42,43,44,45,53,56,57,59,60,61,63,67,69,70).105 	 -49
	   (45,46,47,49,52,53,54,57,58,60,65,68,69).106 	 -26
	   (43,45,48,49,50,51,54,55,56,57,58,59,64,66,68,69).107 	 -29
	   (43,46,48,51,53,56,58,59,61,66,70).108 	 -16
	   (41,49,57,59,62,63,70).109 	 -19
	   (42,43,46,47,50,51,55,56,59,60,61,62,65,68).110 	 -46
	   (41,42,45,47,49,52,55,56,57,58,59,62,63,67,69).111 	 -61
	   (43,44,48,49,55,56,57,62,66,69).112 	 -62
	   (41,43,46,48,52,53,58,59,60,62).113 	 -24
	   (41,42,48,50,51,54,60,61,67,69,70).114 	 -50
	   (41,42,43,44,46,50,51,57,59,60,63,66,67,69,70).115 	 -78
	   (42,43,48,50,53,55,56,57,60,61,62,67,70).116 	 -35
	   (42,43,45,48,49,54,56,59,61,63,65,67,68,70).117 	 -33
	   (41,44,48,49,50,52,54,56,59,63,64,66,68,70).118 	 -35
	   (41,42,44,48,49,50,52,54,55,59,60,61,62,63,64,69).119 	 -19
	   (42,45,49,50,51,52,53,54,59,64).120 	 -34
	   1.78  -33 , 1.84  9 , 1.98  1 , 1.104  17 , 1.113  15 , 
	   2.83  -4 , 3.75  4 , 3.97  18 , 3.115  -42 , 4.83  -10 , 
	   4.84  0 , 4.99  -8 , 4.106  4 , 6.71  -56 , 6.80  -34 , 
	   6.90  -4 , 6.91  -9 , 6.105  -12 , 6.107  8 , 7.88  -50 , 
	   7.90  -4 , 8.81  -7 , 8.109  16 , 9.75  2 , 10.75  2 , 
	   10.93  -49 , 11.104  14 , 11.115  -42 , 13.81  -12 , 15.71  -59 , 
	   15.75  2 , 15.100  -10 , 15.111  -27 , 16.100  -11 , 16.103  -54 , 
	   16.110  -13 , 17.73  -5 , 17.113  14 , 18.114  -13 , 20.95  -37 , 
	   20.108  15 , 21.81  -3 , 21.88  -48 , 21.111  -22 , 22.73  -5 , 
	   22.82  -11 , 23.95  -34 , 24.77  2 , 24.103  -55 , 25.94  -28 , 
	   25.104  16 , 26.95  -33 , 26.118  0 , 26.119  16 , 27.87  -3 , 
	   27.94  -34 , 28.71  -62 , 28.72  -23 , 28.99  -7 , 28.103  -56 , 
	   29.81  -10 , 30.106  8 , 31.81  -12 , 31.116  -5 , 32.87  5 , 
	   32.114  -10 , 32.118  5 , 33.72  -20 , 33.102  -31 , 34.82  -15 , 
	   34.84  4 , 34.97  16 , 34.116  -1 , 35.78  -35 , 35.88  -50 , 
	   35.97  19 , 36.102  -33 , 36.120  -2 , 37.78  -42 , 39.91  -13
	     /;

parameter a(i,j);
a(i,j) = 1$(c(i,j) ne 0);
a('4','84') = 1; a('26','118') = 1; 

table qu(i,k) 
                     1           2           3           4           5           6           7           8           9          10          11          12          13          14
1                30.17       52.55       32.87       20.11       50.22       68.20       25.18       23.52       58.46       51.21       17.91       36.89       14.22       44.37
2                59.38       18.94       27.25       31.86       11.57       63.31       33.93       64.94       34.71       74.49       48.53       50.34       61.21       50.14
3                50.90       16.52       56.40       17.45       50.37       43.50       16.45       11.75       63.72        8.47       18.99       53.37       45.07       71.26
4                66.53       35.93       40.51       48.79       39.40       59.41        9.96       27.35       43.21       63.97       71.70       30.28       47.49        9.07
5                24.54       72.45       13.50       72.46       18.95       27.35       10.27       14.36       57.13       58.19       66.00       14.89       23.35       39.43
6                63.53       29.04       66.65       40.87       53.63       55.29       74.50       56.84       21.66       55.60       26.78       54.32       44.49       39.20
7                27.48       66.68       29.57       21.97        8.70       68.30       74.18       66.46       18.46       39.86       45.04       47.03       27.61       52.47
8                45.52       69.63       36.14       29.01       67.67       27.99       32.58       52.50       69.34       70.74       59.57       35.98       66.29       71.77
9                18.85       64.04       46.52       56.26       11.73       45.90       42.04       39.98       21.25       18.20       32.87       35.02       61.86       16.63
10               61.14       35.44       28.07       70.54       17.93       37.46       38.82       48.19       62.69       69.13       52.82       48.86       72.22       69.24
11               21.78       65.86       47.79       13.60       42.44       20.75       66.44       55.28       71.00       37.06       56.00       54.47       21.84       54.92
12               20.52       72.81       63.49       22.92       29.13       29.49       13.30       17.39       37.82       69.80       72.70       38.37       38.85       61.89
13               44.35       28.81       67.21       52.21       66.88        8.99       69.84       71.69       58.65       24.62       47.89       38.57       70.51       24.06
14               26.41       17.10       62.40       50.66       66.78       54.70       44.11       35.34       27.64       68.52       58.28       29.18       43.87       21.99
15               38.44       56.05       20.96       65.45       45.67       12.97       39.29       55.40       22.56       33.97       25.55       38.15       35.97       49.58
16               55.88       40.03       65.52       68.91       11.44       11.64       68.64       13.00       44.19       70.26       62.88       23.81       18.87       44.18
17               20.84       10.86       15.80       55.56       57.08       71.04       13.26       65.20       39.46       29.74       53.18       41.12       68.29        8.86
18               69.69       66.01       16.49       28.10       74.39       67.18       51.07       26.02       54.59       17.81       25.86       31.78       31.76       67.73
19               29.09        9.58       26.07       37.82       56.10       73.02       20.06       35.97       47.45       42.99       46.59       12.99       40.85       46.06
20               53.84       67.31        9.14       38.51       60.76       54.09       34.23       23.91       69.56       71.54       27.97       47.16       61.08       58.54
21               29.68       14.45       53.08       37.78       47.69       43.41       18.32       74.88       51.84       62.65       21.90       51.90       44.57       51.40
22                9.28       38.58       14.47       24.25       38.17       74.36       47.64       44.15       70.32       41.23       60.55       21.65       57.19       51.04
23               67.19       57.03       68.78       13.34       43.16       22.98       24.03       53.62       35.22       32.51       12.25       39.09       60.46       55.09
24               18.65       74.65       51.63       38.70       50.56       41.08       28.90        9.03       63.40       29.61       32.55       26.24       44.88       70.64
25               24.45       49.06       18.79       74.36       65.24       16.81       30.83       10.52       23.47       30.83       57.51       27.53       53.71       63.57
26               33.91       65.61       28.87       72.40       21.64       21.55       66.95       12.42       31.83       24.28       62.73       51.86       46.92       54.00
27               19.30       40.91       51.73       54.91       60.22       42.08       66.79       55.38       12.54       53.07       61.62       18.77       56.59       62.24
28               21.19       50.22       63.14       64.85       72.71       13.90       62.85       47.69       29.99        9.16       28.91       14.37       37.89       39.15
29               51.43       50.30       13.49       22.87       61.23       35.68       62.92       50.20       26.85       38.51       62.23       15.74       66.69       24.27
30               38.79       58.65       15.37       48.08       23.26       46.41       36.70       59.31       56.82       58.21       18.35       44.09       66.43       72.95
31               28.81       54.96       38.02       37.30       33.31       62.46       72.03       62.31       11.82       54.05       26.57       36.50       65.54       40.80
32               17.25       54.72       70.70       70.04       54.83       64.38       32.38       40.99       34.20       53.27       55.23       14.06       62.51       57.02
33               59.66       49.91       17.15       68.52       60.60       73.50       64.36       13.81       29.00       68.46       38.78       48.87       42.98       58.07
34               44.02       47.19       63.49       18.43       63.53       29.93       14.86       24.93       21.21       71.30       20.83       63.55       11.99       19.55
35               56.16       70.26       26.03       13.92       63.61       72.96       37.69       63.22       39.53       11.61       12.24       69.65       74.98       28.07
36               52.48       43.85       45.47       16.26       61.45       32.90       42.47       43.34       46.01        9.52       25.44       17.67       27.24       70.39
37               67.49       70.45       64.22       36.20       65.41       21.20       70.18       15.22       64.13       13.79       44.00       67.14       56.42       45.34
38               21.77       55.03       27.11       30.85       73.41       56.20       69.16       21.05       23.62       24.35       72.31       35.63       41.42       12.61
39               13.63       33.25       30.48       35.95       36.26       73.60       63.66       69.78       36.03       22.25       35.78       23.62       36.21       28.40
40               55.16       40.57       22.67       26.18       68.65       36.62       19.56       16.94       73.74       39.30       53.06       50.56       50.27       62.41
71               43.46       46.55       48.40       38.49       50.84       31.21       50.10       39.04       38.53       33.67       43.38       18.72       32.63       62.57
72               51.81       27.36       31.83       56.64       32.49       49.36       34.74       42.53       59.03       56.45       48.26       40.71       61.18       63.04
73                9.28       38.58       14.47       24.25       38.17       74.36       47.64       44.15       70.34       41.23       61.21       21.65       58.05       51.04
74               62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
75               18.51       41.05       34.87       37.79       38.82       71.17       66.20       68.37       33.00       33.48       37.09       30.12       43.79       32.31
76               62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       63.90       67.04       65.43       62.69       67.48       65.66
77               62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
78               64.78       54.99       59.26       18.23       48.79       29.97       24.30       48.42       44.03       37.23       22.36       42.64       59.45       57.91
79               35.12       57.97       25.49       57.91       32.98       32.60       24.36       27.55       49.96       45.49       47.76       29.77       34.88       50.54
80               46.72       46.93       27.90       23.88       61.11       73.08       34.25       53.46       44.74       24.68       28.58       47.61       61.32       35.57
81               32.03       17.79       54.23       38.67       49.69       46.04       22.30       74.88       52.79       63.52       23.27       52.88       46.08       52.56
82               33.25       25.52       62.91       47.04       64.52       50.49       43.09       35.15       28.32       69.20       54.23       36.86       38.84       23.75
83               63.24       30.62       35.64       43.24       27.64       61.98       24.69       46.45       40.62       69.33       60.76       41.35       55.28       31.53
84               31.52       67.66       46.10       20.33       53.18       27.79       55.26       55.50       70.65       50.77       58.39       49.04       38.31       61.95
85               62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       63.90       67.04       65.43       62.69       67.48       65.66
86               23.25       52.25       63.72       65.52       72.76       16.39       63.55       49.56       32.40       14.20       32.60       16.23       39.99       41.23
87               60.74       65.53       63.63       65.21       65.44       66.15       67.05       64.52       66.37       67.04       65.43       60.43       65.00       64.59
88               62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
89               40.86       34.07       54.78       35.29       53.72       41.56       42.88       34.26       46.41       21.18       25.17       41.32       49.44       57.78
90               33.55       44.93       55.65       52.41       41.54       48.95       60.86       51.85       18.48       43.17       40.47       35.89       54.45       39.18
91               31.73       67.46       44.69       19.04       52.87       26.89       56.20       55.89       70.48       49.53       57.84       49.89       38.78       61.86
92               41.98       45.12       27.84       63.98       56.17       34.56       22.13       17.53       31.69       44.64       63.68       30.18       53.16       42.28
93               63.01       27.56       33.98       40.45       25.70       62.16       26.14       48.25       39.02       69.52       60.29       41.25       54.92       31.17
94               29.03       55.31       36.44       48.28       41.53       53.61       62.93       51.53       16.56       49.52       34.48       36.07       63.20       47.76
95               62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
96               45.81       51.62       48.80       70.11       15.89       16.69       49.88       13.44       49.65       66.38       64.17       20.94       20.31       42.65
97               57.53       31.49       49.53       45.79       45.87       43.86       30.26       36.50       55.72       43.80       50.78       41.70       55.06       40.07
98               62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
99               59.16       26.01       27.12       33.71       29.19       57.12       31.76       53.33       47.44       65.33       51.44       51.11       58.85       54.02
100              41.85       26.90       62.43       53.02       65.84       15.58       64.65       71.20       56.61       25.16       48.45       38.84       70.47       22.45
101              29.57       66.62       33.13       26.72       11.42       68.26       73.91       66.25       20.95       41.37       47.08       47.62       30.50       52.60
102              62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
103              24.70       73.12       31.11       54.07       38.12       36.54       23.48       12.80       61.75       46.86       48.04       23.51       37.34       56.13
104              49.09       58.33       31.31       30.21       62.86       38.71       34.02       40.78       66.91       56.36       56.49       45.10       56.76       66.66
105              20.07       70.74       58.89       31.97       24.41       36.13       21.10       23.52       33.32       55.80       61.89       37.46       45.09       49.61
106              41.34       59.29       18.04       49.32       25.55       47.80       38.29       59.88       57.16       59.40       21.56       45.05       66.83       72.95
107              59.88       67.19       60.49       65.21       65.44       66.24       67.05       64.52       66.37       67.04       65.43       57.20       65.00       64.59
108              21.01       64.88       48.12       57.45       12.91       48.25       43.80       41.31       22.79       20.33       35.07       35.83       62.61       20.28
109              62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
110              62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
111              36.08       17.80       53.25       42.76       48.78       38.79       29.31       72.65       55.11       58.56       28.72       51.74       50.47       49.47
112              30.61       57.89       39.87       21.09       48.01       55.40       27.15       25.43       51.44       53.86       35.82       34.61       26.30       45.86
113              59.23       52.47       20.66       67.40       59.86       73.41       65.39       20.18       31.81       68.11       41.38       49.57       43.60       58.26
114              64.90       62.17       24.48       30.81       72.19       62.40       52.52       30.82       52.08       21.15       29.94       30.90       36.40       67.93
115              33.55       44.93       54.81       51.68       41.54       48.84       60.86       51.53       18.48       43.68       40.47       35.89       54.45       39.18
116              45.68       48.76       63.71       19.79       64.00       31.50       17.12       26.25       23.47       71.46       24.38       63.95       16.09       23.17
117              62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
118              24.12       40.91       56.67       60.22       56.07       67.53       31.72       40.93       39.79       51.98       52.78       18.69       56.41       53.88
119              62.72       67.19       63.63       66.92       66.95       66.92       67.05       67.39       66.37       67.04       65.43       62.69       67.48       65.66
120              45.87       44.81       56.59       52.32       53.32       16.15       62.65       53.46       50.96       27.71       48.03       44.71       63.46       39.28 ;

table ql(t,k) 
                     1           2           3           4           5           6           7           8           9          10          11          12          13          14
71               42.90       44.73       47.78       36.03       49.71       29.52       46.10       36.48       36.04       31.31       41.02       18.37       31.00       61.76
72               50.80       25.92       30.64       55.25       30.23       48.34       30.95       40.63       58.43       54.89       47.27       39.07       60.20       62.81
73                9.28       35.54       13.89       23.31       36.11       74.36       45.16       41.67       70.32       38.84       60.55       20.70       57.19       46.96
74               10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
75               17.13       38.26       32.22       36.26       35.58       71.03       65.59       68.06       30.44       29.59       33.65       26.59       42.98       31.26
76               10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       20.31        9.32       13.46       14.29       13.19        9.75
77               10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
78               64.65       53.45       58.92       16.47       48.22       25.92       23.23       46.00       43.41       34.22       21.02       41.54       58.45       56.72
79               33.38       56.83       23.91       57.04       29.24       30.14       23.52       25.97       48.05       44.85       46.87       28.34       32.50       48.38
80               44.88       44.98       26.05       22.85       60.48       72.98       30.34       51.87       42.83       22.91       26.55       46.04       60.76       32.99
81               29.68       14.45       53.08       37.78       47.69       43.41       18.32       74.88       51.84       62.65       21.90       51.90       44.57       51.40
82               30.31       22.71       62.69       46.31       64.12       49.15       40.47       32.84       27.27       69.02       52.58       34.36       37.90       22.47
83               63.01       27.56       33.98       40.45       25.70       61.33       21.76       45.86       39.02       69.15       60.29       40.16       54.25       29.29
84               30.16       67.19       43.68       19.04       51.34       23.31       54.49       54.30       70.41       48.95       57.26       47.94       37.53       60.87
85               10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.79        9.32       13.46       14.29       15.64        9.75
86               21.19       50.22       63.14       64.85       72.71       13.90       62.85       47.69       29.99        9.16       28.91       14.37       37.89       39.15
87               18.98       18.17       14.84       14.67        9.57        9.89       10.96       12.93       13.00        9.32       13.48       15.47       13.19        9.98
88               10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
89               38.78       33.24       53.95       33.36       51.99       40.54       40.06       31.71       44.00       18.77       23.08       40.16       47.88       56.70
90               31.16       41.51       54.81       50.80       39.04       47.68       57.14       50.60       17.91       42.00       38.21       34.45       50.98       36.14
91               30.16       67.19       43.68       18.56       51.34       23.31       54.49       54.30       70.41       48.95       57.26       47.94       37.53       60.87
92               39.44       43.59       26.40       63.71       54.47       32.16       21.29       16.60       30.44       42.40       63.42       28.68       51.12       40.86
93               58.99       25.69       31.53       37.70       24.40       61.33       21.76       45.86       36.05       69.15       55.82       40.16       54.25       29.29
94               27.81       53.61       33.62       45.78       40.62       52.01       62.60       50.45       14.49       48.73       33.65       34.45       62.83       46.01
95               10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
96               42.66       50.45       45.62       70.05       13.85       16.11       46.14       13.34       48.35       62.03       63.88       20.26       19.45       39.95
97               56.92       28.87       48.82       43.26       45.30       41.95       27.49       34.41       54.67       40.84       49.40       40.94       54.56       37.60
98               10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
99               58.17       24.68       26.20       30.31       26.79       56.20       30.15       52.08       45.06       64.90       49.55       50.39       58.27       53.44
100              39.05       25.37       61.75       52.57       61.35       14.97       63.83       71.00       52.53       23.79       45.09       36.73       70.27       21.57
101              27.48       66.13       29.94       22.30        9.32       68.12       73.85       66.10       18.57       40.18       45.19       46.83       27.78       52.14
102              10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
103              23.01       72.97       29.69       53.06       35.77       34.73       21.50       12.42       61.35       46.00       46.34       22.79       35.34       51.70
104              47.69       57.66       30.10       27.20       62.48       35.28       31.28       39.51       66.29       55.17       55.57       42.89       56.18       66.18
105              18.95       70.43       55.88       30.17       22.80       33.94       20.24       22.13       31.09       53.06       58.60       35.26       43.06       47.14
106              38.79       58.65       15.37       48.08       23.26       46.41       36.70       59.31       56.82       58.21       18.35       44.09       66.43       72.95
107              14.99       10.54       10.05       14.96        9.57        9.89       10.96        9.93       13.00        9.32       19.70       14.29       13.19        9.75
108              18.85       64.04       46.52       56.26       11.73       45.90       42.04       39.98       21.25       18.20       32.87       35.02       61.86       16.63
109              10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       15.64        9.75
110              10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
111              33.88       17.30       52.86       42.05       47.71       36.93       26.12       72.44       53.50       55.99       27.42       50.06       49.84       45.31
112              29.97       56.87       37.42       20.56       46.80       50.95       25.66       24.28       49.87       51.36       34.88       32.99       24.95       42.30
113              58.59       50.47       17.56       66.97       58.87       73.33       64.69       15.56       28.65       67.51       38.99       48.81       42.47       57.88
114              64.77       61.91       21.99       28.17       72.02       61.61       50.91       29.77       51.19       18.79       27.82       29.34       32.61       67.74
115              31.33       41.86       51.79       50.80       38.03       47.68       55.99       50.60       17.89       42.00       38.33       34.36       50.90       36.87
116              44.02       47.19       63.49       18.43       63.53       29.93       14.86       24.93       21.21       71.30       20.83       63.55       11.99       19.55
117              10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
118              21.17       39.77       55.92       59.37       55.25       67.24       28.30       39.33       38.59       49.87       52.37       13.71       55.34       53.39
119              10.21       10.54       10.05       14.67        9.57        9.89       10.96        9.93       13.00        9.32       13.46       14.29       13.19        9.75
120              45.02       42.00       56.28       51.48       52.55       14.87       61.58       52.72       49.48       26.09       47.25       42.37       62.66       36.83 ;

parameter bl(i); 
bl(i) = 0; 

parameter bu(i) / 1  63, 2  179, 3  124, 4  164, 5  175, 6  42, 7  112, 8  121, 9  171, 10  95, 
		 11  66, 12  116, 13  177, 14  83, 15  21, 16  80, 17  12, 18  88, 19  117, 20  17, 
		 21  152, 22  42, 23  95, 24  80, 25  115, 26  17, 27  87, 28  143, 29  12, 30  95, 
		 31  120, 32  103, 33  87, 34  87, 35  111, 36  95, 37  101, 38  12, 39  80, 40  134, 
		 
		 41  84, 42  70, 43  77, 44  109, 45  93, 46  129, 47  87, 48  117, 49  102, 50  82, 
		 51  57, 52  121, 53  109, 54  113, 55  100, 56  126, 57  108, 58  82, 59  104, 60  88, 
		 61  132, 62  90, 63  94, 64  64, 65  114, 66  112, 67  59, 68  101, 69  139, 70  50, 
		 
		 71  166, 72  108, 73  218, 74  217, 75  122, 76  123, 77  152, 78  110, 79  133, 80  127, 
		 81  75, 82  102, 83  110, 84  98, 85  144, 86  84, 87  113, 88  90, 89  99, 90  80, 
		 91  182, 92  142, 93  137, 94  83, 95  186, 96  74, 97  174, 98  140, 99  156, 100  211, 
		 101  89, 102  198, 103  173, 104  213, 105  129, 106  159, 107  134, 108  107, 109  80, 110  172, 
		 111  96, 112  115, 113  91, 114  107, 115  94, 116  218, 117  186, 118  191, 119  116, 120  210
		  /;

$include xmodel.gms