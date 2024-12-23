$ontext
	 randstd48 pooling problem data.
	 Author: Akshay Gupte, written from AMPL.
$offtext

$eolcom #

set i    /1 * 115/;
set s(i) /1 * 40/;
set t(i) /71 * 115/;
set k    /1 * 10/;


alias (i,j);

parameter c(i,j)
	 / 1.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 46
	   2.(41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 35
	   3.(41,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 44
	   4.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 48
	   5.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 40
	   6.(42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 46
	   7.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 43
	   8.(41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 48
	   9.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 45
	   10.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 47
	   11.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70) 	 41
	   12.(43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,65,66,67,68,69,70) 	 37
	   13.(41,42,43,44,45,46,47,48,49,50,52,53,54,55,56,58,59,60,61,62,63,65,67,68,69,70) 	 43
	   14.(43,44,45,46,47,48,49,50,52,53,54,55,56,58,59,60,61,62,63,65,66,68,69,70) 	 41
	   15.(43,45,46,47,48,49,53,54,55,56,57,59,60,62,63,64,65,68,69,70) 	 43
	   16.(41,42,45,46,47,48,49,53,54,56,60,70) 	 41
	   17.(51,67) 	 38
	   18.(41,42,52) 	 37
	   19.(43,44,51,57,69) 	 46
	   20.(41,42,65) 	 37
	   21.(55,57) 	 30
	   22.(41,42) 	 34
	   23.(41,42) 	 38
	   24.(51,61,64) 	 28
	   25.(64,66) 	 53
	   26.(66,67) 	 35
	   27.(41,42,68) 	 34
	   28.(41,42,52) 	 44
	   29.(44,57,64) 	 44
	   30.(41,42,50) 	 38
	   31.(41,42,67) 	 42
	   32.(41,42,58) 	 40
	   33.(41,42) 	 31
	   34.(41,42) 	 44
	   35.(41,42) 	 35
	   36.(62,66) 	 55
	   37.(42,63,64) 	 35
	   38.(58,61) 	 21
	   39.(41,42) 	 36
	   40.(50,51,59) 	 43
	   (41,44,46,51,52,54,58,61,65,66).71 	 -17
	   (42,43,50,53,56,63,66,67,68,69).72 	 -53
	   (42,46,49,50,54,55,64,65,66,67).73 	 -52
	   (43,44,45,46,47,48,49,50,51,53,54,55,58,59,64,66).74 	 -84
	   (42,45,46,47,48,49,52,53,57,60,62,64,70).75 	 -79
	   (42,44,46,50,51,52,54,55,56,58,59,60,61,66,68,69).76 	 -27
	   (52,53,54,58,61,64,65,66,68).77 	 -85
	   (41,45,46,47,49,53,54,55,56,58,60,63,68,70).78 	 -21
	   (42,45,50,51,52,54,56,57,58,60,67).79 	 -35
	   (43,45,46,48,51,52,55,57,66,69).80 	 -40
	   (41,42,45,52,54,58,59,60,62,63,66,67).81 	 -98
	   (41,48,51,52,57,62,63,66).82 	 -17
	   (48,49,56,57,58,63,67,68,69,70).83 	 -63
	   (43,45,50,52,55,58,59,61,62,65,68).84 	 -53
	   (41,43,44,46,48,49,50,51,53,54,55,57,59,60,64).85 	 -99
	   (41,44,48,50,51,55,56,57,60,61,62,64,66,67).86 	 -27
	   (43,46,47,49,53,54,55,58,63,67,68,70).87 	 -32
	   (41,42,44,46,47,48,55,56,57,63,69).88 	 -44
	   (43,50,53,54,60,64,68,70).89 	 -40
	   (41,42,43,44,45,50,51,56,58).90 	 -18
	   (42,43,45,48,52,54,55,57,62,65,67,70).91 	 -94
	   (42,43,44,45,46,48,49,53,54,56,57,58,59,60,66,69).92 	 -75
	   (45,46,49,50,51,52,53,54,55,59,61,62,63,67,69).93 	 -88
	   (41,42,45,46,47,48,51,53,58,59,61,63,64,65,67,68,69).94 	 -45
	   (42,44,49,52,55,57,59,61,63,65,68).95 	 -50
	   (42,44,46,48,50,51,53,55,56,57,58,62,68).96 	 -53
	   (41,47,50,51,54,55,60,61,64,65,68,69).97 	 -75
	   (42,43,44,49,50,53,55,56,57,60,61,62,65,66,68,69).98 	 -27
	   (43,46,48,50,51,52,55,56,57,62,63,66,68,69,70).99 	 -93
	   (42,43,46,50,53,56,58,60,61,62,64,65,66,68,70).100 	 -98
	   (41,42,46,50,51,54,56,58,59,60,62,63,64,69).101 	 -75
	   (42,49,51,56,58,59,61,63,65,70).102 	 -94
	   (41,43,44,47,54,56,57,61,63,66,67).103 	 -83
	   (41,43,44,48,50,54,59,62,66,69,70).104 	 -89
	   (45,52,55,59,65,66).105 	 -60
	   (41,50,52,53,54,56,62,63,65,69).106 	 -51
	   (42,43,45,51,55,56,58,59,63,67,68,70).107 	 -20
	   (42,47,49,50,52,55,56,57,58,60,61,62,63,65,67).108 	 -35
	   (41,44,46,49,50,53,54,55,56,58,60,62,63,67,68).109 	 -83
	   (41,42,44,45,47,52,54,55,59,61,65,66).110 	 -76
	   (44,46,49,54,56,60,67,69,70).111 	 -82
	   (41,50,52,54,60,62,65,66,68,69,70).112 	 -40
	   (44,46,47,58,59,60,63,64,65,67).113 	 -16
	   (41,42,44,48,49,54,55,56,57,59,63,70).114 	 -99
	   (41,42,43,44,49,50,52,53,55,57,59,62,63,66,67,68).115 	 -88
	   1.82  29 , 1.108  11 , 3.86  17 , 3.95  -6 , 4.100  -50 , 
	   4.114  -51 , 5.81  -58 , 5.90  22 , 7.94  -2 , 8.86  21 , 
	   8.110  -28 , 9.89  5 , 9.94  0 , 9.104  -44 , 10.96  -6 , 
	   10.102  -47 , 11.97  -34 , 11.98  14 , 13.104  -46 , 13.109  -40 , 
	   14.73  -11 , 14.81  -57 , 14.86  14 , 15.111  -39 , 16.77  -44 , 
	   16.89  1 , 17.83  -25 , 17.94  -7 , 17.101  -37 , 17.106  -13 , 
	   17.114  -61 , 17.115  -50 , 18.86  10 , 19.72  -7 , 19.109  -37 , 
	   21.73  -22 , 21.89  -10 , 21.100  -68 , 22.87  2 , 22.89  -6 , 
	   23.85  -61 , 23.97  -37 , 23.115  -50 , 24.88  -16 , 24.91  -66 , 
	   24.102  -66 , 24.112  -12 , 25.83  -10 , 26.96  -18 , 26.110  -41 , 
	   26.111  -47 , 27.92  -41 , 28.97  -31 , 28.108  9 , 29.106  -7 , 
	   29.109  -39 , 30.91  -56 , 30.106  -13 , 30.114  -61 , 31.102  -52 , 
	   32.96  -13 , 33.88  -13 , 34.99  -49 , 35.72  -18 , 35.86  8 , 
	   36.80  15 , 36.107  35 , 37.76  8 , 37.87  3 , 37.101  -40 , 
	   38.84  -32 , 38.90  3 , 38.108  -14 , 39.108  1  /;

parameter a(i,j);
a(i,j) = 1$(c(i,j) ne 0);
a('9','94') = 1; 

table qu(i,k) 
                     1           2           3           4           5           6           7           8           9          10
1                25.72        8.20       60.04       55.52       22.65       53.14       44.76       19.90       52.33       64.37
2                26.26       16.19       25.77       52.61       44.89       72.78       50.28       56.70       61.51       74.80
3                39.04       47.01       33.29       29.96       45.53       55.01       17.28       14.73       62.27       73.68
4                41.94       53.83       39.85       13.73       28.31       11.12       56.18       37.69       36.04       42.90
5                26.63       57.84       34.29       14.92       55.16       45.77       67.79       56.10       44.33       12.48
6                47.65       33.57       50.81        9.71       44.28       54.80       55.50       73.58       52.66       66.07
7                56.71       43.34       15.87       44.80       37.65       35.84       69.84       39.14       51.82       57.37
8                23.28       51.19       23.30       33.88       32.26       74.84       12.64       18.31       59.29       49.19
9                 9.47       53.09       33.03       53.69       28.71       45.97       13.15       23.03       64.85       74.36
10               72.57       13.08       70.25       35.22       42.98       48.38       54.86       67.83       16.03       43.72
11               58.28       44.57        8.29       54.49       35.36       63.03       30.04       10.92       17.70       40.58
12               47.76       37.06       58.80       36.12       39.87       47.64       35.01       48.05       50.46       45.77
13               35.05       15.86       57.69       10.49       63.10       14.99       39.21       54.93       52.13       73.49
14               31.91       16.89       13.14       45.69       41.88       68.56       64.59       65.18       21.79       56.40
15               20.33       13.13       44.38       37.01       46.81       59.28       16.34       10.36       70.45       61.49
16                8.80       71.80       47.96       37.73       38.70       36.71       10.30       46.54       35.79       51.03
17               44.90       66.35       52.66       50.60       65.39       72.94       15.02       28.38       68.96       41.03
18               24.98       66.06       50.43       19.88       54.27       42.58       49.99       31.43       74.62       21.85
19                9.77       64.91       27.75       31.27       53.29       59.02       27.16        9.36       71.51       50.06
20               52.06       66.81       12.74       51.95       59.05       51.22       26.60       44.42       66.45       71.46
21               71.15       24.94       29.46       66.62       12.54       28.06       15.76       61.05       66.52       35.58
22               14.22       13.48       30.24       51.73       51.29       57.63       43.15       53.30       49.61       26.91
23               46.81       26.18       14.20       67.96       37.06       38.32       58.36       23.29       11.01       65.39
24               12.05       41.79       49.45       52.14       11.49       49.66       18.57       36.47       21.57        9.52
25               35.64       70.00       15.12       54.71       48.89       44.02       27.58       51.88       38.73       42.72
26               27.97       23.28       19.33       34.64       70.40       59.42       45.96       57.68       33.18       49.90
27               60.12       37.08       65.44       24.82       25.83       46.49       67.18       60.54       46.41       26.36
28               20.54       62.09       56.96       21.34       21.10       19.26       26.60       74.63        9.20       58.13
29               51.54       36.17       13.99       27.93       32.00       35.44       10.20       41.11       11.44       29.39
30               24.08       44.53       56.15       29.95       58.33       42.72       19.98       29.40       36.48       39.27
31               47.55       57.28       19.50       13.09       46.80       45.16       59.84       40.55       17.20       29.11
32               55.89       68.16       34.27       70.77       44.34       17.07       71.70       47.31        9.99       29.10
33               51.21       37.52       43.86       12.36       50.82       31.51       29.42       10.59       12.64       21.98
34               54.19       66.60       31.61       10.10       33.47       28.29       61.11       67.90       22.00       41.59
35               11.48       60.35       59.98       34.52       31.33       15.85       39.02       13.78       56.11       41.62
36               53.30       72.31       61.03       28.14       35.83       33.32       31.61       55.35       36.45       26.51
37               30.97       24.55       72.35       16.59       13.71       11.41       18.63       42.02       54.49       15.97
38               66.91       40.69       72.20       34.38       62.63       53.54       20.96        9.96       70.35       65.37
39               17.58       18.65       52.21       64.91       41.57       47.02       21.92       71.33       37.00       14.34
40               68.88       24.17       57.47       27.58       69.76       40.81       10.72       57.49       62.20       62.48
71               39.05       39.99       32.00       42.19       60.86       48.97       54.25       55.10       34.58       49.38
72               18.88       61.54       61.45       39.02       34.87       23.65       41.66       20.46       58.73       44.89
73               53.97       67.41       18.71       54.54       60.71       53.16       33.20       48.82       67.60       71.82
74               65.31       65.08       65.11       63.69       63.36       67.36       64.53       66.22       64.36       67.32
75               54.87       20.16       44.31       40.51       39.13       21.19       28.09       59.44       60.28       58.18
76               65.31       65.08       65.11       63.69       63.36       67.36       64.53       67.17       67.16       67.32
77               22.43       65.23       41.02       44.71       37.78       43.96       15.74       40.54       36.35       50.48
78               55.94       31.80       54.95       39.07       42.53       60.58       42.13       51.80       36.81       48.95
79               65.31       64.62       65.11       63.69       63.36       67.36       64.53       67.17       67.16       67.32
80               41.50       37.40       32.19       42.99       43.71       60.29       56.59       63.95       32.36       50.40
81               35.05       23.05       31.65       36.81       44.60       62.35       58.49       67.45       39.52       57.58
82               40.29       47.55       28.36       46.28       36.94       69.68       27.84       23.37       47.84       49.97
83               31.64       51.19       21.44       40.23       33.61       66.03       26.94       23.52       59.39       53.51
84               65.31       65.08       64.98       63.69       62.78       67.36       64.53       67.17       67.16       67.32
85               29.21       53.24       37.73       40.11       37.57       52.83       19.03       35.08       53.51       39.22
86               55.32       72.31       62.30       31.55       38.77       37.03       37.09       57.56       42.17       31.73
87               33.14       57.55       39.34       20.70       56.04       50.30       66.11       56.81       49.08       22.58
88               45.92       45.49       41.93       21.03       53.15       38.14       41.80       26.87       25.15       20.46
89               52.20       27.06       48.28       42.73       59.93       49.93       29.28       57.80       59.29       50.69
90               48.26       51.65       36.04       23.08       35.29       24.94       46.48       43.86       33.36       44.15
91               24.38       44.54       55.20       30.30       57.61       43.45       20.02       29.03       36.71       39.51
92               65.31       65.08       65.11       63.69       63.36       67.36       64.53       67.17       67.16       67.32
93               26.26       16.19       25.77       53.74       44.89       72.95       52.92       58.24       61.51       74.80
94               49.89       67.13       53.13       55.60       63.65       67.37       26.09       36.78       63.29       44.61
95               65.31       64.62       65.11       63.69       62.78       67.36       64.53       67.17       67.16       67.32
96               65.31       65.08       65.11       63.69       63.36       67.36       64.53       67.17       67.16       67.32
97               39.73       45.48       36.05       50.89       35.89       35.93       47.14       48.52       18.81       63.34
98               33.50       24.10       51.78       41.28       51.36       59.49       22.72       20.14       70.29       63.69
99               56.30       67.07       35.36       18.12       38.50       32.36       61.86       68.75       28.57       45.24
100              65.31       65.08       65.11       63.69       63.36       67.36       64.53       67.17       67.16       67.32
101              12.41       30.58       34.78       55.13       36.96       55.77       35.82       41.16       51.72       42.40
102              66.05       41.66       70.09       32.86       61.54       50.41       23.56       12.01       68.72       63.71
103              11.91       61.99       30.28       34.65       55.89       57.23       28.18       13.22       70.49       52.04
104              65.13       31.13       62.76       32.88       42.02       42.27       57.36       61.06       28.96       48.01
105              43.19       47.39       54.33       34.58       44.75       49.98       40.07       44.19       57.87       42.81
106              54.34       67.37       20.12       54.12       60.00       53.44       30.23       47.04       67.51       71.86
107              47.69       48.81       54.01       25.53       43.33       48.94       68.06       60.55       48.59       25.72
108              22.78       25.47       53.82       65.55       44.66       50.84       26.40       71.80       41.48       22.87
109              35.04       32.41       45.31       30.84       51.03       36.86       34.54       39.91       54.18       66.88
110              29.91       64.63       52.40       18.21       24.54       21.77       36.21       72.98       12.76       55.65
111              39.04       49.42       33.29       29.96       48.77       57.90       17.28       14.73       63.04       73.79
112              65.31       65.08       63.23       63.69       63.36       67.36       64.53       67.17       67.16       67.32
113              56.01       48.76       21.92       42.47       42.11       60.27       43.27       29.51       25.48       44.39
114              65.31       64.62       65.11       63.69       62.78       67.36       64.53       67.17       67.16       67.32
115              65.31       65.08       65.11       63.69       63.36       67.36       64.53       67.17       67.16       67.32 ;

table ql(t,k) 
                     1           2           3           4           5           6           7           8           9          10
71               34.84       35.58       25.02       37.54       59.51       44.82       51.89       52.85       29.70       45.30
72               11.48       60.35       59.98       34.52       31.33       15.85       39.02       13.78       56.11       41.62
73               52.06       66.81       12.74       51.95       59.05       51.22       26.60       44.42       66.45       71.46
74                9.68        9.02        9.12       10.68       12.64       12.23       11.22       10.30       10.99       10.47
75               52.16       19.09       39.71       37.10       37.54       20.63       26.13       57.83       58.95       55.52
76                9.68        9.02        9.12       10.68       12.64       12.23       11.22       10.30       10.12       10.47
77               20.73       64.30       37.03       42.35       34.75       41.18       15.27       36.73       30.81       48.15
78               54.17       27.31       52.72       34.72       38.98       58.26       39.10       49.34       32.18       45.76
79                9.68        9.02        9.12       10.68       12.64       12.23       11.22       10.30       10.12       10.47
80               38.35       33.58       27.56       40.40       40.06       57.95       54.66       62.22       26.21       47.40
81               32.92       21.61       30.39       32.15       41.38       60.93       56.92       66.40       37.18       54.88
82               35.04       44.96       21.81       42.71       32.38       68.91       21.39       16.03       44.93       47.78
83               29.79       49.23       20.48       36.61       31.15       65.09       25.91       22.09       57.42       51.23
84                9.68        9.02        9.12       10.68       12.64       12.23       11.33       10.30       10.12       10.47
85               27.21       51.19       32.11       36.76       33.44       49.64       18.05       33.43       51.31       35.59
86               53.30       72.31       61.03       28.14       35.83       33.32       31.61       55.35       36.45       26.51
87               26.33       55.69       34.78       15.98       54.76       46.42       65.31       53.90       45.59       14.84
88               43.14       41.38       38.11       13.13       51.66       34.68       37.06       19.80       19.65       19.20
89               49.86       20.48       45.43       39.50       58.23       45.60       22.57       56.33       58.15       47.61
90               44.57       48.99       32.76       17.62       29.32       17.79       43.57       38.63       29.29       39.20
91               22.78       40.18       51.51       29.14       54.78       39.74       19.20       27.95       34.12       36.69
92                9.68        9.02        9.12       10.68       13.79       12.23       11.22       10.30       10.12       13.73
93               24.97       15.28       24.30       52.61       43.17       72.78       50.28       56.70       57.39       74.80
94               46.24       66.57       50.42       53.06       62.82       66.13       21.93       30.69       61.77       39.58
95                9.68        9.02        9.12       10.68       12.64       12.23       11.22       10.30       10.12       10.47
96                9.68        9.02        9.12       10.68       12.64       12.23       11.22       10.30       10.12       10.47
97               35.44       41.72       32.70       47.79       30.15       30.07       44.62       45.51       10.23       62.25
98               28.40       18.17       49.14       36.52       48.86       57.61       18.01       10.78       69.74       61.93
99               54.19       66.60       31.61       10.10       33.47       28.29       61.11       67.90       22.00       41.59
100               9.68        9.02        9.12       10.68       12.64       12.23       11.22       10.30       10.12       10.47
101              12.07       29.18       33.32       52.38       35.24       52.67       29.59       38.74       48.65       37.45
102              65.07       38.26       69.81       30.20       60.10       45.55       22.01       11.68       67.82       57.81
103              11.73       60.76       28.64       29.51       54.12       55.29       26.84       12.84       69.87       48.41
104              63.89       24.63       61.64       29.13       38.82       37.82       55.23       59.29       21.70       43.49
105              40.15       42.30       50.97       31.03       43.05       46.35       37.45       41.12       54.90       37.28
106              52.06       66.81       12.74       51.95       59.05       51.22       26.60       44.42       66.45       71.46
107              45.40       46.20       51.75       20.47       38.72       46.17       67.45       58.59       45.50       20.26
108              17.58       18.65       52.21       64.91       41.57       47.02       21.92       71.33       37.00       14.34
109              30.73       27.87       41.88       28.84       48.22       35.40       28.62       35.48       51.48       65.79
110              28.42       63.35       49.90       17.48       23.81       20.46       33.06       72.76       12.32       53.53
111              36.07       47.01       31.00       28.52       45.53       55.01       16.71       14.31       62.27       73.68
112               9.68        9.02        9.12       10.68       12.64       12.23       11.33       10.30       10.12       10.47
113              54.56       46.59       15.37       39.75       39.08       57.79       39.96       24.58       21.12       40.34
114               9.68        9.02        9.12       10.68       13.79       12.23       11.22       10.30       10.12       13.73
115               9.68        9.02        9.12       10.68       13.79       12.23       11.22       10.30       10.12       13.73 ;

parameter bl(i); 
bl(i) = 0; 

parameter bu(i) / 1  10, 2  12, 3  21, 4  91, 5  137, 6  62, 7  17, 8  150, 9  81, 10  90, 
		 11  118, 12  121, 13  134, 14  113, 15  124, 16  71, 17  144, 18  121, 19  119, 20  177, 
		 21  72, 22  155, 23  97, 24  37, 25  17, 26  88, 27  74, 28  144, 29  17, 30  70, 
		 31  17, 32  42, 33  37, 34  177, 35  60, 36  129, 37  12, 38  113, 39  101, 40  99, 
		 
		 41  123, 42  97, 43  130, 44  62, 45  127, 46  58, 47  83, 48  137, 49  75, 50  51, 
		 51  93, 52  62, 53  122, 54  98, 55  127, 56  68, 57  64, 58  83, 59  110, 60  71, 
		 61  122, 62  104, 63  89, 64  51, 65  137, 66  108, 67  69, 68  132, 69  66, 70  60, 
		 
		 71  160, 72  99, 73  104, 74  134, 75  140, 76  173, 77  156, 78  149, 79  149, 80  147, 
		 81  169, 82  150, 83  152, 84  136, 85  218, 86  163, 87  73, 88  129, 89  180, 90  196, 
		 91  72, 92  136, 93  116, 94  164, 95  177, 96  79, 97  171, 98  154, 99  136, 100  156, 
		 101  191, 102  100, 103  178, 104  105, 105  178, 106  129, 107  172, 108  132, 109  121, 110  208, 
		 111  131, 112  210, 113  174, 114  161, 115  118 /;

$include xmodel.gms