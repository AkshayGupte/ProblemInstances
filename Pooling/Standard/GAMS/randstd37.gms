$ontext
	 randstd37 pooling problem data.
	 Author: Akshay Gupte, written from AMPL.
$offtext

$eolcom #

set i    /1 * 87/;
set s(i) /1 * 30/;
set t(i) /53 * 87/;
set k    /1 * 10/;


alias (i,j);

parameter c(i,j)
	 / 1.(33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 29
	   2.(31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 39
	   3.(32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 33
	   4.(31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 37
	   5.(31,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 39
	   6.(31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 31
	   7.(31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 38
	   8.(31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 35
	   9.(31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52) 	 36
	   10.(31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,48,49,50,51,52) 	 40
	   11.(31,32,33,34,35,36,37,38,40,41,42,44,45,46,47,48,49,50,51,52) 	 36
	   12.(31,32,36,38,40,43,48,49,50,51,52) 	 36
	   13.(31,32) 	 37
	   14.(31,32) 	 31
	   15.(31,32,42) 	 30
	   16.(31,32) 	 30
	   17.(31,32,46) 	 38
	   18.(39,41) 	 21
	   19.(34,39) 	 29
	   20.(31,32) 	 32
	   21.(31,32) 	 33
	   22.(31,32,47) 	 20
	   23.(31,32) 	 35
	   24.(31,32) 	 36
	   25.(31,32) 	 31
	   26.(35,37) 	 44
	   27.(31,32,43) 	 17
	   28.(31,32) 	 22
	   29.(31,32,44) 	 31
	   30.(33,45,47) 	 32
	   (34,35,36,37,39,40,41,43,49,50,51).53 	 -92
	   (31,35,37,44,47,51).54 	 -62
	   (32,34,37,39,42,46,50,51).55 	 -38
	   (32,36,41,42,44,45,46,48,51).56 	 -42
	   (33,35,38,41,42,46,47,48).57 	 -71
	   (31,33,34,35,38,40,43,47,49,50,51,52).58 	 -95
	   (31,36,37,42,44,52).59 	 -91
	   (32,38,41,44,45).60 	 -62
	   (31,33,36,40,42,44,45,52).61 	 -79
	   (31,35,36,38,40,44,47,48).62 	 -73
	   (31,32,33,35,36,38,42,44,47,49,50,52).63 	 -82
	   (34,37,39,42,44,45,46,51).64 	 -64
	   (31,32,33,34,35,37,38,41,44,45,46,49,50).65 	 -30
	   (31,33,35,36,37,41,42,45,47,48,50,51).66 	 -67
	   (31,34,35,36,38,41,43,47,49,50,52).67 	 -41
	   (31,34,39,42,44,45,46,52).68 	 -31
	   (31,41,45,46,48,49,50,52).69 	 -62
	   (35,43,50,51,52).70 	 -86
	   (33,34,35,36,39,40,41,48,49).71 	 -55
	   (35,38,39,42,44,45,51).72 	 -21
	   (32,33,35,39,41,43,44,45,46,49,50,52).73 	 -30
	   (31,32,34,37,38,43,46,49,50).74 	 -57
	   (33,35,36,46,49).75 	 -48
	   (31,34,35,38,41,47,49,50,52).76 	 -17
	   (31,36,37,41,42,44,46,47,48,49,50,52).77 	 -48
	   (31,32,33,34,37,42,46,50).78 	 -56
	   (33,36,37,48,49,50,51,52).79 	 -82
	   (31,35,42,43,45,46,48).80 	 -57
	   (33,37,38,44,49,50).81 	 -60
	   (31,38,40,41,45,46,47,48,49,50,51).82 	 -33
	   (35,36,38,44,45,46,47,48,49,51).83 	 -36
	   (35,36,41,42,45,47,48,49,50,52).84 	 -81
	   (31,32,33,34,35,36,41,42,47,48,51).85 	 -26
	   (31,32,34,35,36,39,43,46,51,52).86 	 -59
	   (33,34,36,38,39,40,41,42,44,47,52).87 	 -29
	   1.83  -7 , 2.86  -20 , 4.87  8 , 5.72  18 , 5.73  9 , 
	   6.56  -11 , 6.62  -42 , 7.57  -33 , 7.74  -19 , 7.75  -10 , 
	   8.73  5 , 8.83  -1 , 9.54  -26 , 9.56  -6 , 10.55  2 , 
	   10.61  -39 , 10.79  -42 , 10.82  7 , 11.86  -23 , 12.80  -21 , 
	   13.73  7 , 13.78  -19 , 13.80  -20 , 13.84  -44 , 13.86  -22 , 
	   15.75  -18 , 15.86  -29 , 16.63  -52 , 18.64  -43 , 18.77  -27 , 
	   19.55  -9 , 19.56  -13 , 19.73  -1 , 20.59  -59 , 21.82  0 , 
	   23.70  -51 , 26.72  23 , 27.66  -50 , 28.78  -34 , 28.84  -59 , 
	   30.65  2  /;

parameter a(i,j);
a(i,j) = 1$(c(i,j) ne 0);
a('21','82') = 1; 

table qu(i,k) 
                     1           2           3           4           5           6           7           8           9          10
1                59.87       44.38       14.40       62.07       52.57       27.35       35.51       47.85       16.38       52.56
2                12.05       72.12       64.49       28.87        9.81       58.51       36.73       73.17       10.40       42.43
3                35.67       13.93       50.17       58.51       21.72       67.51       19.08       27.65       67.52       11.98
4                53.35       31.92       33.47       38.60       20.86       31.09       66.13       45.09       45.65       57.93
5                72.75       23.92       26.63       15.11       53.63       18.25       37.58       19.65       40.82       45.28
6                35.81       28.30       69.83       57.89       56.19       19.17       19.38       15.82       31.33       70.58
7                64.24       19.35       11.20       29.85       62.51       28.55       22.22       55.72       36.56       42.68
8                19.22       31.42       72.46       52.84       48.36       31.63       63.46       12.69       61.63       26.52
9                 8.58       35.57       37.76       60.72       73.53       70.75       54.92       67.07       73.22       65.46
10               11.38       24.09       42.49       31.66       10.58       40.40       17.25       50.69       36.96       29.16
11                8.57       29.43       37.79       15.08       24.98       40.08       27.82        9.21       38.01       46.25
12               38.51       59.98       27.89       15.71       10.60       42.10       49.47       36.87       39.07       59.08
13               49.01       13.30       61.89       70.10       16.98       73.29       14.67       62.27       55.17       56.09
14               58.31       35.36       19.59       52.91       25.22       26.57       26.82       48.81       27.91       65.17
15               52.21       68.86       37.07       47.09       65.86       35.23       37.19       73.17       69.31       53.88
16               43.73       18.01       62.14        9.59       41.61       73.75       19.60       27.91       40.23       58.38
17               33.40       37.80       38.13       13.05       19.56       16.74       24.25       55.11       47.75       58.70
18               47.07       30.28       41.57       73.41       64.75       19.22       20.28       28.80       10.74       16.20
19               33.43       60.48       18.54       15.28       18.53       47.28       59.99       35.73       62.04       70.46
20               59.44       49.72       20.47       38.65       54.29       30.04        9.97       73.92       42.17       12.59
21               69.23       49.90       59.87       61.29       47.78       63.03       60.01       32.23       47.87        8.03
22               16.14        9.08       11.12       43.81       41.42       54.81       40.02       16.63       71.40       27.57
23                8.95       64.89       12.74       17.73       23.95       45.06       24.76       56.71       27.87       38.17
24               53.74       30.83       50.21       37.37       54.72       40.45       14.03       69.58       58.96       42.12
25               56.46       36.23       25.62       58.31       14.90       67.52       12.91       30.90       21.59       37.93
26               11.61       33.22       73.00       63.73       45.34       52.25       19.80       19.95       58.83       22.02
27               50.81       47.05       47.88       17.24       42.70       49.30       68.67       37.42       32.25        8.87
28               73.44       72.01       18.71       13.65       16.72       47.39       26.67       71.63       48.38       26.45
29               64.51       61.55       41.05       54.64       66.51       52.34       28.51       67.22       23.30       18.80
30               74.83       14.66       29.09       44.28       15.91       39.08       51.57       49.48       70.53       30.07
53               28.42       43.30       52.09       34.68       34.83       38.65       55.65       23.85       49.11       38.96
54               43.73       18.01       63.12        9.59       41.61       73.75       19.60       27.91       40.23       59.63
55               60.57       48.15       34.69       59.06       36.31       64.04       24.41       46.47       27.37       35.65
56               65.82       62.81       44.11       57.10       67.29       55.02       32.33       68.13       30.06       26.43
57               67.35       64.91       65.70       66.07       66.18       63.68       59.52       65.85       65.90       63.52
58               62.39       27.49       17.66       42.40       52.27       28.98       36.31       54.13       35.04       48.59
59               66.10       64.91       65.70       63.09       66.18       66.38       61.80       66.53       65.90       63.52
60               67.35       64.91       65.21       66.07       66.18       66.38       61.80       66.53       65.90       63.52
61               18.40       30.34       45.67       36.48       17.05       43.38       24.04       53.32       41.45       34.17
62               19.21       38.90       73.00       64.43       49.24       53.99       25.13       27.87       60.72       26.15
63               67.35       64.91       65.70       63.09       66.18       66.38       61.80       66.53       65.90       63.52
64               33.39       15.76       54.06       60.48       23.96       66.57       19.15       26.92       67.54       12.93
65               16.72       28.16       45.00       35.29       18.29       43.15       21.96       53.97       40.84       33.33
66               55.09       44.12       44.49       30.64       36.98       46.03       67.68       44.61       41.56       35.57
67               24.04       48.15       49.41       29.42       29.71       47.26       35.70       43.40       30.40       45.42
68               67.35       64.91       65.21       66.07       66.18       66.38       61.80       66.53       65.90       63.52
69               67.35       64.91       65.21       66.07       66.18       66.38       61.80       66.53       65.90       63.52
70               42.97       61.50       33.58       20.79       17.67       44.95       52.10       41.90       43.07       60.78
71               67.35       64.91       65.70       66.07       66.18       63.68       59.52       65.85       65.90       63.52
72               61.11       46.84       19.12       63.40       54.26       33.34       39.54       50.71       22.91       55.22
73               40.98       59.54       26.06       29.35       26.47       51.89       54.67       40.05       57.00       64.91
74               38.87       41.28       38.13       13.05       19.56       16.74       24.25       55.11       47.75       58.70
75               22.61       35.76       52.11       59.11       60.94       61.49       54.20       49.58       69.89       50.74
76               29.66       63.34       56.27       33.55       24.00       54.38       39.22       69.40       23.00       45.87
77               47.13       45.11       37.24       33.55       23.88       39.06       56.30       47.07       45.01       56.88
78               73.44       72.01       18.71       13.65       16.72       47.39       26.67       71.63       48.38       26.45
79               67.35       64.91       65.70       57.36       66.18       63.68       59.52       65.85       65.90       63.52
80               49.56       21.61       62.43       59.14       39.98       48.54       24.04       43.52       46.10       56.72
81               67.35       64.91       65.70       57.36       66.18       63.68       59.52       65.85       65.90       63.52
82               19.29       29.65       46.42       35.50       16.51       44.40       22.40       53.67       41.52       33.32
83               67.35       64.91       65.70       57.36       66.18       63.68       59.52       65.85       65.90       63.52
84               69.09       63.03       26.84       32.07       32.34       45.02       36.26       64.93       44.11       39.50
85               69.93       30.54       30.75       53.50       35.17       40.15       47.89       52.55       53.71       41.10
86               53.55       49.21       51.61       23.44       45.26       51.54       68.67       42.08       37.49       17.57
87               66.02       63.05       45.61       57.02       67.08       54.78       32.10       67.98       27.94       24.23 ;

table ql(t,k) 
                     1           2           3           4           5           6           7           8           9          10
53               26.83       41.06       48.67       30.02       30.81       36.85       54.08       22.26       46.77       37.37
54               40.49       17.55       62.14        9.59       39.44       73.75       18.37       26.11       37.94       58.38
55               58.94       44.02       30.37       57.18       30.78       62.85       17.71       42.08       22.12       32.04
56               64.51       61.55       41.05       54.64       66.51       52.34       28.51       67.22       23.30       18.80
57                9.43        9.99       12.23       14.36       10.79       18.41       18.98       10.13       11.44       13.18
58               60.54       25.81       16.91       38.38       49.66       28.27       34.71       51.41       32.49       45.93
59                9.43        9.99       12.23       10.55       10.79       18.41       10.97       10.13       11.44        8.83
60                9.43        9.99       12.23       10.55       10.79       18.41       10.97       10.13       11.44        8.83
61               11.38       24.09       42.49       31.66       10.58       40.40       17.25       50.69       36.96       29.16
62               11.61       33.22       73.00       63.73       45.34       52.25       19.80       19.95       58.83       22.02
63                9.43        9.99       12.23       10.55       10.79       18.41       10.97       10.13       11.44        8.83
64               31.91       15.61       52.33       59.01       23.17       66.06       18.94       25.16       66.70       12.85
65               11.38       24.09       42.49       31.66       10.58       40.40       17.25       50.69       36.96       29.16
66               51.93       40.36       41.50       26.69       33.04       41.24       67.55       40.81       38.18       30.58
67               17.38       44.72       45.90       25.16       25.05       44.55       30.37       38.28       25.78       42.60
68                9.43        9.99       12.23       10.55       10.79       18.41       10.97       10.13       11.44        8.83
69                9.43        9.99       12.23       10.55       10.79       18.41       10.97       10.13       11.44        8.83
70               38.51       59.98       27.89       15.71       10.60       42.10       49.47       36.87       39.07       59.08
71                9.43       15.32       12.32       16.59       10.79       20.08       18.98       10.13       11.44       13.18
72               59.87       44.38       14.40       62.07       52.57       27.35       35.51       47.85       16.38       52.56
73               37.68       57.74       20.51       22.26       20.57       49.87       52.94       36.79       55.39       64.06
74               33.40       37.80       36.20       12.72       18.41       16.74       22.57       50.34       44.62       54.21
75               15.16       31.46       48.64       58.33       59.67       59.99       52.17       47.24       69.37       47.73
76               22.19       62.18       54.71       28.71       19.64       52.56       34.33       68.99       15.48       42.54
77               43.08       40.62       32.66       29.87       16.06       36.02       54.38       42.95       42.32       54.79
78               68.72       65.06       18.04       13.40       16.30       44.00       25.52       67.12       43.57       24.78
79                9.43       15.32       12.32       16.59       10.79       20.08       18.98       10.13       11.44       13.18
80               45.23       20.51       61.23       57.92       35.15       44.89       22.78       40.28       43.17       55.08
81                9.43       15.32       12.32       16.59       10.79       20.08       18.98       10.13       11.44       13.18
82               11.38       24.09       42.49       31.66       10.58       40.40       17.25       50.69       36.96       29.16
83                9.43        9.99       12.23       14.36       10.79       18.41       18.98       10.13       11.44       13.18
84               68.44       61.89       18.98       27.40       25.64       41.18       32.25       63.62       40.50       35.45
85               69.28       25.69       23.64       50.88       29.52       34.73       45.61       48.88       50.43       38.42
86               50.81       47.05       47.88       17.24       42.70       49.30       68.67       37.42       32.25        8.87
87               64.51       61.55       41.05       54.64       66.51       52.34       28.51       67.22       23.30       18.80 ;

parameter bl(i); 
bl(i) = 0; 

parameter bu(i) / 1  176, 2  102, 3  123, 4  155, 5  21, 6  63, 7  95, 8  84, 9  77, 10  159, 
		 11  101, 12  176, 13  106, 14  166, 15  100, 16  165, 17  176, 18  12, 19  75, 20  116, 
		 21  148, 22  68, 23  173, 24  17, 25  138, 26  97, 27  138, 28  129, 29  143, 30  61, 
		 
		 31  91, 32  117, 33  53, 34  63, 35  86, 36  57, 37  116, 38  100, 39  102, 40  83, 
		 41  100, 42  95, 43  75, 44  107, 45  50, 46  101, 47  97, 48  65, 49  129, 50  52, 
		 51  100, 52  126, 
		 53  94, 54  150, 55  217, 56  73, 57  78, 58  136, 59  184, 60  102, 61  165, 62  123, 
		 63  125, 64  175, 65  202, 66  194, 67  187, 68  98, 69  188, 70  182, 71  90, 72  128, 
		 73  90, 74  102, 75  205, 76  155, 77  175, 78  96, 79  154, 80  212, 81  110, 82  176, 
		 83  83, 84  199, 85  107, 86  130, 87  80 /;

$include xmodel.gms