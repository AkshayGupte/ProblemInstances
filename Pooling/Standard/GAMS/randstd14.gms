$ontext
	 randstd14 pooling problem data.
	 Author: Akshay Gupte, written from AMPL.
$offtext

$eolcom #

set i    /1 * 68/;
set s(i) /1 * 25/;
set t(i) /44 * 68/;
set k    /1 * 8/;


alias (i,j);

parameter c(i,j)
	 / 1.(28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 29
	   2.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 28
	   3.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 29
	   4.(28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 33
	   5.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 27
	   6.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 29
	   7.(28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 29
	   8.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43) 	 35
	   9.(26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,43) 	 33
	   10.(26,27,28,29,30,32,35,39,40,43) 	 26
	   11.(26,27,34) 	 29
	   12.(26,27) 	 22
	   13.(26,27) 	 20
	   14.(26,27) 	 25
	   15.(26,27) 	 26
	   16.(26,27,31) 	 30
	   17.(26,27) 	 24
	   18.(26,27) 	 23
	   19.(38,42) 	 37
	   20.(37,41) 	 27
	   21.(26,27,36) 	 26
	   22.(26,27,42) 	 26
	   23.(26,27) 	 23
	   24.(26,27,33) 	 29
	   25.(26,27) 	 25
	   (26,27,30,35,36,42).44 	 -88
	   (26,29,31,35,36,38,40,42).45 	 -59
	   (32,33,35,36,37,38,42).46 	 -81
	   (28,31,32,33,34,36).47 	 -88
	   (26,28,32,33,35,38,41,42).48 	 -92
	   (26,31,32,36,39,41,43).49 	 -38
	   (27,29,31,32,34,35,37,39,41).50 	 -22
	   (27,36,38,40).51 	 -83
	   (27,28,31,35,36,38).52 	 -70
	   (27,29,33,34,37,38,40).53 	 -20
	   (26,28,32,41).54 	 -73
	   (27,29,31,32,36,38,39,40,42).55 	 -28
	   (27,28,29,30,31,33,35,36,37,38).56 	 -48
	   (26,31,32,37,40,42).57 	 -26
	   (29,32,33,37,41).58 	 -84
	   (28,30,32,33,35,36,42).59 	 -40
	   (30,32,43).60 	 -78
	   (32,35,36,38,40,41,43).61 	 -63
	   (26,28,30,33,35).62 	 -98
	   (31,33,34,37,40).63 	 -50
	   (28,29,30,31,32,33,35,36,37,38,39,43).64 	 -29
	   (28,29,31,38,40,42).65 	 -42
	   (26,29,30,31,37,39,40,41).66 	 -36
	   (28,29,31,38,39,41).67 	 -48
	   (30,31,32,33,34,35,36,37,38,42,43).68 	 -53
	   1.51  -54 , 1.55  1 , 3.46  -52 , 3.56  -19 , 5.54  -46 , 
	   8.50  13 , 8.58  -49 , 10.49  -12 , 11.51  -54 , 11.59  -11 , 
	   12.50  0 , 13.48  -72 , 14.46  -56 , 17.65  -18 , 18.56  -25 , 
	   19.62  -61 , 20.67  -21 , 23.50  1  /;

parameter a(i,j);
a(i,j) = 1$(c(i,j) ne 0);
a('12','50') = 1; 

table qu(i,k) 
                     1           2           3           4           5           6           7           8
1                15.16       45.60       35.94       44.26       58.53       47.61       64.86       21.13
2                46.26       42.86       19.14       27.82       32.00       66.43       59.98       41.42
3                69.06       15.09       52.41       32.56       23.39       47.74       53.72       56.11
4                64.92       37.30       31.22       16.06       40.11       28.03       63.31       68.02
5                68.47       50.62       22.60       27.82       38.85       19.19       61.92       71.60
6                70.92        8.07       19.77       13.90       35.79       63.55       65.25       54.54
7                15.70       14.73       47.99       16.95        8.85       64.89       49.86       45.92
8                44.64       64.69       74.30       55.95       14.07       70.99       25.56       32.30
9                48.55       62.99       30.07       48.57       70.06       31.48       41.14       47.09
10                9.78       12.93       44.32       48.39       40.61       60.45       58.39       15.24
11                8.56       33.65       33.24        8.42       63.75       56.49       39.95       42.40
12               58.32       67.09       74.71       62.69       13.81        9.60       36.98       14.53
13               57.13       30.58       30.35       63.27        8.24       13.47       41.70       62.91
14               46.85       55.34       59.64       34.09       43.45       40.66       51.55       15.35
15               14.28       66.26       43.67       56.74       54.73       16.55       53.70       39.63
16               32.08       61.81       38.10       56.72       46.02       59.39       20.01       67.06
17               24.58       10.41       22.10       68.09       62.39       68.21       32.44       14.25
18               65.41        9.82       46.02       57.84       74.28       21.91       64.50       10.37
19               48.90       51.98       44.24       56.93       29.24       42.67       47.40       69.96
20               64.03       16.34       16.50       39.18       29.48        8.90        9.73       31.21
21               66.15       15.55       37.92       23.57       52.51       27.52       59.99       51.65
22               71.15       11.46       68.36       45.95       18.82       13.18       64.92       66.01
23               30.51       59.56       29.96       54.00       23.88       19.32       25.01       61.05
24               32.34       47.16       31.26       49.22       54.54       54.03       63.55       36.53
25               29.51       15.62       64.50       45.45        8.48       64.52       55.66       56.69
44               64.04       60.38       67.24       61.28       66.85       63.89       58.73       64.44
45               55.97       42.78       33.14       33.34       36.29       43.20       58.16       61.61
46               19.03       17.38       48.77       18.96       11.14       64.07       49.63       46.13
47               44.76       45.46       26.81       20.14       49.49       33.95       53.57       60.93
48               58.24       33.84       33.83       63.54       10.43       16.37       43.68       63.36
49               64.04       60.38       67.24       61.28       66.85       63.89       58.73       64.44
50               70.93       10.73       23.34       15.84       37.32       63.90       65.25       55.89
51               10.56       35.95       36.39       10.22       64.03       57.16       40.51       44.42
52               64.97       20.68       36.81       26.52       51.29       31.95       59.99       51.04
53               47.95       38.10       49.92       38.33       36.95       51.17       51.22       46.62
54               32.57       15.62       65.10       47.07        8.48       64.90       56.37       57.25
55               65.52       18.53       38.17       25.48       52.68       32.34       60.23       51.55
56               65.62       11.27       48.44       58.62       74.28       24.34       64.55       15.25
57               61.23       53.13       28.94       36.34       42.67       31.82       54.97       69.83
58               15.70       14.73       48.91       16.95        8.85       65.33       50.40       47.92
59               47.96       35.39       48.23       38.76       30.25       66.55       46.60       37.44
60               63.83       58.22       66.87       50.36       63.05       63.89       58.73       64.44
61                9.78       12.93       45.95       48.76       41.41       61.05       58.86       15.24
62               52.07       58.44       31.55       47.08       67.12       35.83       44.78       49.40
63               63.83       58.22       66.87       51.05       63.05       63.89       58.73       64.44
64               54.01       38.17       22.12       36.18       39.62       41.61       39.51       40.11
65               64.04       58.22       66.87       61.28       63.05       63.89       58.73       64.44
66               26.03       44.72       41.26       45.69       53.76       49.38       62.17       28.88
67               63.83       58.22       66.87       51.24       63.05       63.89       58.73       64.44
68                9.78       12.93       44.32       49.02       41.74       60.45       58.64       15.24 ;

table ql(t,k) 
                     1           2           3           4           5           6           7           8
44                9.42        8.88       21.05        9.26        9.06       10.56       22.01       11.41
45               55.22       40.36       31.06       30.23       34.87       41.32       55.60       60.67
46               16.84       14.77       47.25       17.47        9.34       63.57       48.92       45.57
47               40.98       43.90       25.97       19.20       48.71       32.82       53.22       60.04
48               57.13       30.58       30.35       63.27        8.24       13.47       41.70       62.91
49                9.42        8.88       18.15        9.26        9.06        9.79       10.70       11.41
50               70.92        8.07       19.77       13.90       35.79       63.55       65.25       54.54
51                8.56       33.65       33.24        8.42       63.75       56.49       39.95       42.40
52               61.66       17.17       35.35       23.82       46.90       29.83       56.10       48.23
53               47.34       37.33       47.83       37.24       34.55       49.46       50.67       44.41
54               29.51       15.15       64.50       45.45        8.46       64.52       55.66       56.69
55               64.97       17.17       36.81       23.82       51.29       29.83       59.99       51.04
56               65.41        9.82       46.02       57.84       74.28       21.91       64.50       10.37
57               60.94       52.45       25.38       33.22       39.96       28.26       54.03       69.76
58               15.25       14.29       47.99       16.77        8.85       64.89       49.86       45.92
59               43.87       33.75       46.17       35.75       27.19       66.22       45.48       36.21
60               10.76        8.88       21.05       15.29        9.74       21.11       28.12       16.76
61                9.78       12.65       44.32       48.39       40.61       60.45       58.39       15.24
62               50.63       57.88       29.11       45.34       66.87       34.46       43.38       47.78
63                9.42        8.88       18.15        9.26        9.74        9.79       10.70       16.76
64               53.46       35.62       19.80       34.82       36.76       40.21       38.93       38.73
65               10.76        8.88       21.05       15.29        9.74       14.50       22.01       15.68
66               21.68       43.63       39.35       43.71       53.06       48.75       61.91       24.98
67               10.76        8.88       18.15       15.29        9.74        9.79       10.70       16.76
68                9.68       12.50       41.75       48.39       40.61       57.30       58.39       15.24 ;

parameter bl(i); 
bl(i) = 0; 

parameter bu(i) / 1  165, 2  138, 3  61, 4  66, 5  129, 6  149, 7  173, 8  73, 9  117, 10  122, 
		 11  165, 12  170, 13  178, 14  159, 15  162, 16  17, 17  132, 18  122, 19  150, 20  67, 
		 21  111, 22  117, 23  163, 24  37, 25  144, 
		 26  63, 27  63, 28  96, 29  129, 30  69, 31  91, 32  58, 33  129, 34  96, 35  128, 
		 36  118, 37  97, 38  83, 39  101, 40  128, 41  90, 42  105, 43  54, 
		 44  152, 45  149, 46  85, 47  89, 48  107, 49  155, 50  155, 51  117, 52  115, 53  120, 
		 54  208, 55  117, 56  101, 57  215, 58  123, 59  114, 60  98, 61  150, 62  105, 63  169, 
		 64  178, 65  199, 66  161, 67  218, 68  115 /;

$include xmodel.gms