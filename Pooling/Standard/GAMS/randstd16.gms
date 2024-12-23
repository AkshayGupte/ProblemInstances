$ontext
	 randstd16 pooling problem data.
	 Author: Akshay Gupte, written from AMPL.
$offtext

$eolcom #

set i    /1 * 68/;
set s(i) /1 * 25/;
set t(i) /44 * 68/;
set k    /1 * 8/;


alias (i,j);

parameter c(i,j)
	 / 1.(27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 26
	   2.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 32
	   3.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 31
	   4.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 31
	   5.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 0
	   6.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 31
	   7.(28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 9
	   8.(26,27,28,29,30,32,33,34,35,36,37,38,39,40,41,42,43) 	 35
	   9.(26,27,28,30,32,33,34,35,36,37,38,39,40,41,42,43) 	 25
	   10.(26,27,30,31,32,36,38,41) 	 31
	   11.(37,43) 	 19
	   12.(26,27,42) 	 27
	   13.(26,27) 	 35
	   14.(26,27) 	 28
	   15.(26,27,31) 	 23
	   16.(26,27) 	 34
	   17.(26,27,35) 	 36
	   18.(26,27,33) 	 8
	   19.(26,27,39) 	 38
	   20.(26,27) 	 24
	   21.(26,27,28) 	 37
	   22.(27,31) 	 38
	   23.(29,40) 	 4
	   24.(26,27,29) 	 23
	   25.(26,27,34) 	 33
	   (29,30,31,32,34,35,39,42,43).44 	 -98
	   (26,27,29,30,31,32,33,34,36).45 	 -54
	   (27,29,30,32,34,36,39,42).46 	 -88
	   (26,27,29,30,32,34,35,38,41,43).47 	 -44
	   (29,31,34,37,38,40,43).48 	 -92
	   (26,28,29,30,35,36,43).49 	 -36
	   (26,27,30,31,32,33,34,35,36,37,39,42).50 	 -46
	   (27,28,29,40).51 	 -60
	   (27,28,33,36,37,39,40,43).52 	 -23
	   (29,30,31,32,35,41,42,43).53 	 -16
	   (28,31,32,33,36,37,40,43).54 	 -32
	   (26,31,34,36,37,40,43).55 	 -43
	   (27,28,32,33,34,36,38).56 	 -46
	   (32,33,34,36,37,39).57 	 -17
	   (27,29,31,33,35,39,40).58 	 -98
	   (26,28,31,36,38,39,43).59 	 -56
	   (27,31,34,35,37,39,40,41).60 	 -60
	   (31,32,34,39,40,41).61 	 -39
	   (29,34,38,39,40,41).62 	 -23
	   (27,30,31,35,39,40,43).63 	 -72
	   (26,32,36,37,39,40,43).64 	 -22
	   (30,32,34,37).65 	 -36
	   (26,29,30,35,37,39,42,43).66 	 -82
	   (29,30,31,32,33,34,36,38).67 	 -31
	   (26,27,32,36,38).68 	 -53
	   1.46  -62 , 1.54  -6 , 3.58  -67 , 6.56  -15 , 6.65  -5 , 
	   9.56  -21 , 9.60  -35 , 9.67  -6 , 10.58  -67 , 11.47  -25 , 
	   11.57  2 , 11.59  -37 , 12.50  -19 , 12.66  -55 , 15.57  6 , 
	   15.62  0 , 16.51  -26 , 17.47  -8 , 17.60  -24 , 19.44  -60 , 
	   19.60  -22 , 21.55  -6  /;

parameter a(i,j);
a(i,j) = 1$(c(i,j) ne 0);
a('5','32') = 1; a('5','26') = 1; a('5','27') = 1; a('5','28') = 1; a('5','29') = 1; a('5','30') = 1; a('5','31') = 1; a('5','33') = 1; a('5','34') = 1; a('5','35') = 1; a('5','36') = 1; a('5','37') = 1; a('5','38') = 1; a('5','39') = 1; a('5','40') = 1; a('5','41') = 1; a('5','42') = 1; a('5','43') = 1; a('15','62') = 1; 

table qu(i,k) 
                     1           2           3           4           5           6           7           8
1                25.43       11.24       11.07       10.78       73.27       48.99       25.01       14.85
2                61.94       52.99        8.85       37.28       58.29       13.40       48.32       24.18
3                73.33       57.77       61.06       33.32       46.89       49.65        9.43       43.09
4                21.79       38.92       59.68       28.57       56.04       73.85       22.96       42.25
5                69.24       25.66       32.23       25.10       36.82       37.49       21.24       65.13
6                28.74       43.70       56.44       22.57       69.83       39.81       21.06       13.55
7                58.82       45.37       38.29       16.69       14.90       70.43       18.26       26.74
8                40.09       42.87       43.54       54.07       66.36       53.21       28.84       51.49
9                73.93       39.49       41.02       52.65       18.59       52.47       46.04       37.26
10               16.99       74.05       13.02       40.38       10.69       17.48       56.45       18.41
11               63.18       65.65       12.34       36.49       28.78       13.00       58.99       49.26
12               23.55       63.31       58.35       73.06       21.58       11.61       39.04       42.91
13               29.58       57.90       27.83       73.02       41.26       62.19       21.54        9.43
14               31.59       49.27       47.41       45.74       73.54       15.66       39.82       10.52
15               58.45       32.54       31.90       66.48       59.50       42.61       46.63       61.18
16               59.91       74.74       59.31       69.69       73.40       11.95       64.72       35.37
17               16.31       22.73       38.97       52.37       65.77       49.36       66.89       28.12
18               49.72       37.14       38.81       31.70       32.36       69.97       59.90       10.09
19               62.81       47.53       69.66        9.23       57.15       45.01       53.58       65.89
20               70.09       33.27       39.55       16.67       24.34       50.09       54.39       31.93
21                8.85       43.71       25.62       43.29       25.97       17.67       44.10       28.87
22               30.06       19.16       41.36       10.37       41.83       42.11       68.32       35.82
23               56.37       70.78       21.08       41.19       37.39       69.06       32.09       37.12
24                9.05       47.02       46.36       60.40       22.27       28.63       72.97       63.04
25               38.19       67.07       16.66       39.24       15.18       45.76       41.84       54.70
44               66.54       66.64       62.69       65.75       65.94       66.47       65.67       59.30
45               56.01       43.56       35.81       39.54       30.83       55.28       44.19       26.68
46               65.19       44.04       19.49       33.29       52.38       21.29       41.18       37.59
47               16.31       22.73       41.29       53.27       66.22       50.73       67.25       30.43
48               35.96       45.18       48.69       43.57       67.88       50.53       26.01       37.69
49               26.07       43.89       54.36       40.87       51.96       60.84       37.16       48.98
50               52.04       52.37       35.81       22.20       14.95       59.19       26.09       26.50
51               66.54       67.27       62.69       65.75       66.19       66.47       65.67       59.30
52               72.16       41.38       42.91       52.50       22.86       55.30       48.08       37.90
53               66.54       66.64       54.95       65.75       65.94       66.47       65.67       58.62
54               25.15       72.23       22.12       40.58       17.99       24.87       52.10       22.68
55               23.59       41.04       34.99       45.83       40.34       26.84       41.37       34.38
56               66.54       67.27       62.69       65.75       66.19       66.47       65.67       59.30
57               62.98       47.37       34.30       26.33       26.83       51.20       29.76       42.13
58               53.53       40.17       45.15       27.99       39.05       66.15       59.83       21.33
59               66.54       67.27       62.69       65.75       66.19       66.47       65.67       59.30
60               47.35       36.03       31.60       40.75       59.77       41.07       44.62       29.68
61               56.37       71.01       21.08       41.72       39.33       69.46       34.89       38.03
62               40.65       52.70       29.68       48.93       42.26       31.71       47.43       36.82
63               61.19       60.13       58.61       50.96       66.72       27.04       59.37       50.38
64               26.21       72.20       23.01       40.62       16.77       25.45       52.56       25.26
65               66.54       66.64       54.95       48.66       65.94       66.47       53.09       58.62
66               29.28       57.18       53.61       65.55       37.29       25.07       39.13       43.85
67               28.36       15.03       14.69       12.21       73.27       50.69       27.46       16.77
68               66.54       67.27       62.69       65.75       66.19       66.47       65.67       59.30 ;

table ql(t,k) 
                     1           2           3           4           5           6           7           8
44                9.96       12.36        9.74       10.15       11.76       12.77       10.37       14.91
45               54.56       42.71       35.06       38.27       29.27       54.73       41.80       23.31
46               64.33       41.31       16.51       31.35       51.26       20.48       39.45       35.00
47               15.80       21.74       38.97       52.37       65.77       49.36       66.89       28.12
48               34.44       43.17       48.23       42.62       67.62       48.34       24.79       36.19
49               22.54       41.35       53.89       39.98       50.91       60.55       34.51       48.32
50               50.39       51.81       33.61       20.88       14.51       58.60       24.94       25.46
51                9.74       12.36        9.74       10.15       11.76       12.77       10.37       10.37
52               72.07       39.31       40.85       51.04       19.65       53.82       47.11       35.17
53                9.96       12.36        9.74       11.41       11.76       12.77       10.37       14.91
54               23.88       72.06       18.90       39.52       15.12       21.41       50.70       21.43
55               22.26       38.80       31.59       42.51       37.82       26.07       37.98       32.49
56                9.74       12.36        9.74       10.15       11.76       12.77       10.37       10.37
57               62.37       45.14       30.91       23.25       23.43       49.31       28.24       41.27
58               51.88       38.86       43.91       26.56       36.46       65.85       58.86       19.31
59                9.74       12.36        9.74       10.15       11.76       12.77       10.37       10.37
60               45.64       33.85       30.45       39.61       54.51       38.30       42.56       28.45
61               53.82       70.78       19.79       41.19       37.39       69.06       32.09       37.12
62               37.45       51.75       27.08       47.28       40.79       30.75       46.31       35.21
63               60.54       59.48       57.83       48.72       66.18       26.24       58.34       48.88
64               23.88       72.06       18.90       39.52       15.12       21.41       50.70       21.43
65               18.69       12.36        9.74       11.86       11.76       14.30       10.37       14.91
66               27.44       55.73       52.33       65.25       34.71       23.22       35.92       43.32
67               25.43       11.24       11.07       10.78       73.27       48.99       25.01       14.85
68                9.74       12.36        9.74       10.15       11.76       12.77       10.37       10.37 ;

parameter bl(i); 
bl(i) = 0; 

parameter bu(i) / 1  153, 2  76, 3  17, 4  81, 5  77, 6  85, 7  152, 8  135, 9  169, 10  178, 
		 11  37, 12  103, 13  74, 14  109, 15  115, 16  92, 17  176, 18  161, 19  112, 20  37, 
		 21  85, 22  74, 23  137, 24  28, 25  113, 
		 26  60, 27  121, 28  132, 29  134, 30  82, 31  53, 32  126, 33  107, 34  113, 35  118, 
		 36  139, 37  105, 38  77, 39  50, 40  113, 41  128, 42  136, 43  121, 
		 44  213, 45  113, 46  105, 47  197, 48  154, 49  176, 50  87, 51  143, 52  205, 53  215, 
		 54  85, 55  185, 56  71, 57  197, 58  115, 59  75, 60  167, 61  171, 62  152, 63  103, 
		 64  73, 65  151, 66  144, 67  154, 68  201 /;

$include xmodel.gms