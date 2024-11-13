> library(dplyr)
> library(ggplot2)
> 
  > insurance <- read.csv("C:/Users/badhu/Downloads/insurance.csv")
  > print(insurance)
  age    sex    bmi children smoker    region   charges
  1    19 female 27.900        0    yes southwest 16884.924
  2    18   male 33.770        1     no southeast  1725.552
  3    28   male 33.000        3     no southeast  4449.462
  4    33   male 22.705        0     no northwest 21984.471
  5    32   male 28.880        0     no northwest  3866.855
  6    31 female 25.740        0     no southeast  3756.622
  7    46 female 33.440        1     no southeast  8240.590
  8    37 female 27.740        3     no northwest  7281.506
  9    37   male 29.830        2     no northeast  6406.411
  10   60 female 25.840        0     no northwest 28923.137
  11   25   male 26.220        0     no northeast  2721.321
  12   62 female 26.290        0    yes southeast 27808.725
  13   23   male 34.400        0     no southwest  1826.843
  14   56 female 39.820        0     no southeast 11090.718
  15   27   male 42.130        0    yes southeast 39611.758
  16   19   male 24.600        1     no southwest  1837.237
  17   52 female 30.780        1     no northeast 10797.336
  18   23   male 23.845        0     no northeast  2395.172
  19   56   male 40.300        0     no southwest 10602.385
  20   30   male 35.300        0    yes southwest 36837.467
  21   60 female 36.005        0     no northeast 13228.847
  22   30 female 32.400        1     no southwest  4149.736
  23   18   male 34.100        0     no southeast  1137.011
  24   34 female 31.920        1    yes northeast 37701.877
  25   37   male 28.025        2     no northwest  6203.902
  26   59 female 27.720        3     no southeast 14001.134
  27   63 female 23.085        0     no northeast 14451.835
  28   55 female 32.775        2     no northwest 12268.632
  29   23   male 17.385        1     no northwest  2775.192
  30   31   male 36.300        2    yes southwest 38711.000
  31   22   male 35.600        0    yes southwest 35585.576
  32   18 female 26.315        0     no northeast  2198.190
  33   19 female 28.600        5     no southwest  4687.797
  34   63   male 28.310        0     no northwest 13770.098
  35   28   male 36.400        1    yes southwest 51194.559
  36   19   male 20.425        0     no northwest  1625.434
  37   62 female 32.965        3     no northwest 15612.193
  38   26   male 20.800        0     no southwest  2302.300
  39   35   male 36.670        1    yes northeast 39774.276
  40   60   male 39.900        0    yes southwest 48173.361
  41   24 female 26.600        0     no northeast  3046.062
  42   31 female 36.630        2     no southeast  4949.759
  43   41   male 21.780        1     no southeast  6272.477
  44   37 female 30.800        2     no southeast  6313.759
  45   38   male 37.050        1     no northeast  6079.672
  46   55   male 37.300        0     no southwest 20630.284
  47   18 female 38.665        2     no northeast  3393.356
  48   28 female 34.770        0     no northwest  3556.922
  49   60 female 24.530        0     no southeast 12629.897
  50   36   male 35.200        1    yes southeast 38709.176
  51   18 female 35.625        0     no northeast  2211.131
  52   21 female 33.630        2     no northwest  3579.829
  53   48   male 28.000        1    yes southwest 23568.272
  54   36   male 34.430        0    yes southeast 37742.576
  55   40 female 28.690        3     no northwest  8059.679
  56   58   male 36.955        2    yes northwest 47496.494
  57   58 female 31.825        2     no northeast 13607.369
  58   18   male 31.680        2    yes southeast 34303.167
  59   53 female 22.880        1    yes southeast 23244.790
  60   34 female 37.335        2     no northwest  5989.524
  61   43   male 27.360        3     no northeast  8606.217
  62   25   male 33.660        4     no southeast  4504.662
  63   64   male 24.700        1     no northwest 30166.618
  64   28 female 25.935        1     no northwest  4133.642
  65   20 female 22.420        0    yes northwest 14711.744
  66   19 female 28.900        0     no southwest  1743.214
  67   61 female 39.100        2     no southwest 14235.072
  68   40   male 26.315        1     no northwest  6389.378
  69   40 female 36.190        0     no southeast  5920.104
  70   28   male 23.980        3    yes southeast 17663.144
  71   27 female 24.750        0    yes southeast 16577.780
  72   31   male 28.500        5     no northeast  6799.458
  73   53 female 28.100        3     no southwest 11741.726
  74   58   male 32.010        1     no southeast 11946.626
  75   44   male 27.400        2     no southwest  7726.854
  76   57   male 34.010        0     no northwest 11356.661
  77   29 female 29.590        1     no southeast  3947.413
  78   21   male 35.530        0     no southeast  1532.470
  79   22 female 39.805        0     no northeast  2755.021
  80   41 female 32.965        0     no northwest  6571.024
  81   31   male 26.885        1     no northeast  4441.213
  82   45 female 38.285        0     no northeast  7935.291
  83   22   male 37.620        1    yes southeast 37165.164
  84   48 female 41.230        4     no northwest 11033.662
  85   37 female 34.800        2    yes southwest 39836.519
  86   45   male 22.895        2    yes northwest 21098.554
  87   57 female 31.160        0    yes northwest 43578.939
  88   56 female 27.200        0     no southwest 11073.176
  89   46 female 27.740        0     no northwest  8026.667
  90   55 female 26.980        0     no northwest 11082.577
  91   21 female 39.490        0     no southeast  2026.974
  92   53 female 24.795        1     no northwest 10942.132
  93   59   male 29.830        3    yes northeast 30184.937
  94   35   male 34.770        2     no northwest  5729.005
  95   64 female 31.300        2    yes southwest 47291.055
  96   28 female 37.620        1     no southeast  3766.884
  97   54 female 30.800        3     no southwest 12105.320
  98   55   male 38.280        0     no southeast 10226.284
  99   56   male 19.950        0    yes northeast 22412.648
  100  38   male 19.300        0    yes southwest 15820.699
  101  41 female 31.600        0     no southwest  6186.127
  102  30   male 25.460        0     no northeast  3645.089
  103  18 female 30.115        0     no northeast 21344.847
  104  61 female 29.920        3    yes southeast 30942.192
  105  34 female 27.500        1     no southwest  5003.853
  106  20   male 28.025        1    yes northwest 17560.380
  107  19 female 28.400        1     no southwest  2331.519
  108  26   male 30.875        2     no northwest  3877.304
  109  29   male 27.940        0     no southeast  2867.120
  110  63   male 35.090        0    yes southeast 47055.532
  111  54   male 33.630        1     no northwest 10825.254
  112  55 female 29.700        2     no southwest 11881.358
  113  37   male 30.800        0     no southwest  4646.759
  114  21 female 35.720        0     no northwest  2404.734
  115  52   male 32.205        3     no northeast 11488.317
  116  60   male 28.595        0     no northeast 30259.996
  117  58   male 49.060        0     no southeast 11381.325
  118  29 female 27.940        1    yes southeast 19107.780
  119  49 female 27.170        0     no southeast  8601.329
  120  37 female 23.370        2     no northwest  6686.431
  121  44   male 37.100        2     no southwest  7740.337
  122  18   male 23.750        0     no northeast  1705.624
  123  20 female 28.975        0     no northwest  2257.475
  124  44   male 31.350        1    yes northeast 39556.495
  125  47 female 33.915        3     no northwest 10115.009
  126  26 female 28.785        0     no northeast  3385.399
  127  19 female 28.300        0    yes southwest 17081.080
  128  52 female 37.400        0     no southwest  9634.538
  129  32 female 17.765        2    yes northwest 32734.186
  130  38   male 34.700        2     no southwest  6082.405
  131  59 female 26.505        0     no northeast 12815.445
  132  61 female 22.040        0     no northeast 13616.359
  133  53 female 35.900        2     no southwest 11163.568
  134  19   male 25.555        0     no northwest  1632.564
  135  20 female 28.785        0     no northeast  2457.211
  136  22 female 28.050        0     no southeast  2155.682
  137  19   male 34.100        0     no southwest  1261.442
  138  22   male 25.175        0     no northwest  2045.685
  139  54 female 31.900        3     no southeast 27322.734
  140  22 female 36.000        0     no southwest  2166.732
  141  34   male 22.420        2     no northeast 27375.905
  142  26   male 32.490        1     no northeast  3490.549
  [ reached 'max' / getOption("max.print") -- omitted 1196 rows ]
  > ins_age_group <- insurance %>%
    +     mutate(age_group = case_when(
      +         age >= 15 & age <= 20 ~ "15-20",
      +         age > 20 & age <= 25 ~ "20-25",
      +         age > 25 & age <= 30 ~ "25-30",
      +         age > 30 & age <= 35 ~ "30-35",
      +         age > 35 & age <= 40 ~ "35-40",
      +         age > 40 & age <= 45 ~ "40-45",
      +         age > 45 & age <= 50 ~ "45-50",
      +         age > 50 & age <= 55 ~ "50-55",
      +         age > 55 & age <= 60 ~ "55-60",
      +         age > 60 & age <= 65 ~ "60-65",
      +         age > 65 & age <= 70 ~ "65-70",
      +         age > 70 & age <= 75 ~ "70-75",
      +         age > 75 & age <= 80 ~ "75-80",
      +         TRUE ~ "80+"
      +     ))
  > #creating a age_group column
    > print(ins_age_group)
  age    sex    bmi children smoker    region   charges age_group
  1    19 female 27.900        0    yes southwest 16884.924     15-20
  2    18   male 33.770        1     no southeast  1725.552     15-20
  3    28   male 33.000        3     no southeast  4449.462     25-30
  4    33   male 22.705        0     no northwest 21984.471     30-35
  5    32   male 28.880        0     no northwest  3866.855     30-35
  6    31 female 25.740        0     no southeast  3756.622     30-35
  7    46 female 33.440        1     no southeast  8240.590     45-50
  8    37 female 27.740        3     no northwest  7281.506     35-40
  9    37   male 29.830        2     no northeast  6406.411     35-40
  10   60 female 25.840        0     no northwest 28923.137     55-60
  11   25   male 26.220        0     no northeast  2721.321     20-25
  12   62 female 26.290        0    yes southeast 27808.725     60-65
  13   23   male 34.400        0     no southwest  1826.843     20-25
  14   56 female 39.820        0     no southeast 11090.718     55-60
  15   27   male 42.130        0    yes southeast 39611.758     25-30
  16   19   male 24.600        1     no southwest  1837.237     15-20
  17   52 female 30.780        1     no northeast 10797.336     50-55
  18   23   male 23.845        0     no northeast  2395.172     20-25
  19   56   male 40.300        0     no southwest 10602.385     55-60
  20   30   male 35.300        0    yes southwest 36837.467     25-30
  21   60 female 36.005        0     no northeast 13228.847     55-60
  22   30 female 32.400        1     no southwest  4149.736     25-30
  23   18   male 34.100        0     no southeast  1137.011     15-20
  24   34 female 31.920        1    yes northeast 37701.877     30-35
  25   37   male 28.025        2     no northwest  6203.902     35-40
  26   59 female 27.720        3     no southeast 14001.134     55-60
  27   63 female 23.085        0     no northeast 14451.835     60-65
  28   55 female 32.775        2     no northwest 12268.632     50-55
  29   23   male 17.385        1     no northwest  2775.192     20-25
  30   31   male 36.300        2    yes southwest 38711.000     30-35
  31   22   male 35.600        0    yes southwest 35585.576     20-25
  32   18 female 26.315        0     no northeast  2198.190     15-20
  33   19 female 28.600        5     no southwest  4687.797     15-20
  34   63   male 28.310        0     no northwest 13770.098     60-65
  35   28   male 36.400        1    yes southwest 51194.559     25-30
  36   19   male 20.425        0     no northwest  1625.434     15-20
  37   62 female 32.965        3     no northwest 15612.193     60-65
  38   26   male 20.800        0     no southwest  2302.300     25-30
  39   35   male 36.670        1    yes northeast 39774.276     30-35
  40   60   male 39.900        0    yes southwest 48173.361     55-60
  41   24 female 26.600        0     no northeast  3046.062     20-25
  42   31 female 36.630        2     no southeast  4949.759     30-35
  43   41   male 21.780        1     no southeast  6272.477     40-45
  44   37 female 30.800        2     no southeast  6313.759     35-40
  45   38   male 37.050        1     no northeast  6079.672     35-40
  46   55   male 37.300        0     no southwest 20630.284     50-55
  47   18 female 38.665        2     no northeast  3393.356     15-20
  48   28 female 34.770        0     no northwest  3556.922     25-30
  49   60 female 24.530        0     no southeast 12629.897     55-60
  50   36   male 35.200        1    yes southeast 38709.176     35-40
  51   18 female 35.625        0     no northeast  2211.131     15-20
  52   21 female 33.630        2     no northwest  3579.829     20-25
  53   48   male 28.000        1    yes southwest 23568.272     45-50
  54   36   male 34.430        0    yes southeast 37742.576     35-40
  55   40 female 28.690        3     no northwest  8059.679     35-40
  56   58   male 36.955        2    yes northwest 47496.494     55-60
  57   58 female 31.825        2     no northeast 13607.369     55-60
  58   18   male 31.680        2    yes southeast 34303.167     15-20
  59   53 female 22.880        1    yes southeast 23244.790     50-55
  60   34 female 37.335        2     no northwest  5989.524     30-35
  61   43   male 27.360        3     no northeast  8606.217     40-45
  62   25   male 33.660        4     no southeast  4504.662     20-25
  63   64   male 24.700        1     no northwest 30166.618     60-65
  64   28 female 25.935        1     no northwest  4133.642     25-30
  65   20 female 22.420        0    yes northwest 14711.744     15-20
  66   19 female 28.900        0     no southwest  1743.214     15-20
  67   61 female 39.100        2     no southwest 14235.072     60-65
  68   40   male 26.315        1     no northwest  6389.378     35-40
  69   40 female 36.190        0     no southeast  5920.104     35-40
  70   28   male 23.980        3    yes southeast 17663.144     25-30
  71   27 female 24.750        0    yes southeast 16577.780     25-30
  72   31   male 28.500        5     no northeast  6799.458     30-35
  73   53 female 28.100        3     no southwest 11741.726     50-55
  74   58   male 32.010        1     no southeast 11946.626     55-60
  75   44   male 27.400        2     no southwest  7726.854     40-45
  76   57   male 34.010        0     no northwest 11356.661     55-60
  77   29 female 29.590        1     no southeast  3947.413     25-30
  78   21   male 35.530        0     no southeast  1532.470     20-25
  79   22 female 39.805        0     no northeast  2755.021     20-25
  80   41 female 32.965        0     no northwest  6571.024     40-45
  81   31   male 26.885        1     no northeast  4441.213     30-35
  82   45 female 38.285        0     no northeast  7935.291     40-45
  83   22   male 37.620        1    yes southeast 37165.164     20-25
  84   48 female 41.230        4     no northwest 11033.662     45-50
  85   37 female 34.800        2    yes southwest 39836.519     35-40
  86   45   male 22.895        2    yes northwest 21098.554     40-45
  87   57 female 31.160        0    yes northwest 43578.939     55-60
  88   56 female 27.200        0     no southwest 11073.176     55-60
  89   46 female 27.740        0     no northwest  8026.667     45-50
  90   55 female 26.980        0     no northwest 11082.577     50-55
  91   21 female 39.490        0     no southeast  2026.974     20-25
  92   53 female 24.795        1     no northwest 10942.132     50-55
  93   59   male 29.830        3    yes northeast 30184.937     55-60
  94   35   male 34.770        2     no northwest  5729.005     30-35
  95   64 female 31.300        2    yes southwest 47291.055     60-65
  96   28 female 37.620        1     no southeast  3766.884     25-30
  97   54 female 30.800        3     no southwest 12105.320     50-55
  98   55   male 38.280        0     no southeast 10226.284     50-55
  99   56   male 19.950        0    yes northeast 22412.648     55-60
  100  38   male 19.300        0    yes southwest 15820.699     35-40
  101  41 female 31.600        0     no southwest  6186.127     40-45
  102  30   male 25.460        0     no northeast  3645.089     25-30
  103  18 female 30.115        0     no northeast 21344.847     15-20
  104  61 female 29.920        3    yes southeast 30942.192     60-65
  105  34 female 27.500        1     no southwest  5003.853     30-35
  106  20   male 28.025        1    yes northwest 17560.380     15-20
  107  19 female 28.400        1     no southwest  2331.519     15-20
  108  26   male 30.875        2     no northwest  3877.304     25-30
  109  29   male 27.940        0     no southeast  2867.120     25-30
  110  63   male 35.090        0    yes southeast 47055.532     60-65
  111  54   male 33.630        1     no northwest 10825.254     50-55
  112  55 female 29.700        2     no southwest 11881.358     50-55
  113  37   male 30.800        0     no southwest  4646.759     35-40
  114  21 female 35.720        0     no northwest  2404.734     20-25
  115  52   male 32.205        3     no northeast 11488.317     50-55
  116  60   male 28.595        0     no northeast 30259.996     55-60
  117  58   male 49.060        0     no southeast 11381.325     55-60
  118  29 female 27.940        1    yes southeast 19107.780     25-30
  119  49 female 27.170        0     no southeast  8601.329     45-50
  120  37 female 23.370        2     no northwest  6686.431     35-40
  121  44   male 37.100        2     no southwest  7740.337     40-45
  122  18   male 23.750        0     no northeast  1705.624     15-20
  123  20 female 28.975        0     no northwest  2257.475     15-20
  124  44   male 31.350        1    yes northeast 39556.495     40-45
  125  47 female 33.915        3     no northwest 10115.009     45-50
  [ reached 'max' / getOption("max.print") -- omitted 1213 rows ]
  > ins_mid_point
  Error: object 'ins_mid_point' not found
  > ins_mid_point <- ins_age_group
  > ins_mid_point$age_midpoint <- case_when(
    +     ins_age_group$age_group == "15-20" ~ 17.5,
    +     ins_age_group$age_group == "20-25" ~ 22.5,
    +     ins_age_group$age_group == "25-30" ~ 27.5,
    +     ins_age_group$age_group == "30-35" ~ 32.5,
    +     ins_age_group$age_group == "35-40" ~ 37.5,
    +     ins_age_group$age_group == "40-45" ~ 42.5,
    +     ins_age_group$age_group == "45-50" ~ 47.5,
    +     ins_age_group$age_group == "50-55" ~ 52.5,
    +     ins_age_group$age_group == "55-60" ~ 57.5,
    +     ins_age_group$age_group == "60-65" ~ 62.5,
    +     ins_age_group$age_group == "65-70" ~ 67.5,
    +     ins_age_group$age_group == "70-75" ~ 72.5,
    +     ins_age_group$age_group == "75-80" ~ 77.5,
    +     TRUE ~ 85  # Age groups above 80
    + )
  > print(ins_mid_point)
  age    sex    bmi children smoker    region   charges age_group age_midpoint
  1    19 female 27.900        0    yes southwest 16884.924     15-20         17.5
  2    18   male 33.770        1     no southeast  1725.552     15-20         17.5
  3    28   male 33.000        3     no southeast  4449.462     25-30         27.5
  4    33   male 22.705        0     no northwest 21984.471     30-35         32.5
  5    32   male 28.880        0     no northwest  3866.855     30-35         32.5
  6    31 female 25.740        0     no southeast  3756.622     30-35         32.5
  7    46 female 33.440        1     no southeast  8240.590     45-50         47.5
  8    37 female 27.740        3     no northwest  7281.506     35-40         37.5
  9    37   male 29.830        2     no northeast  6406.411     35-40         37.5
  10   60 female 25.840        0     no northwest 28923.137     55-60         57.5
  11   25   male 26.220        0     no northeast  2721.321     20-25         22.5
  12   62 female 26.290        0    yes southeast 27808.725     60-65         62.5
  13   23   male 34.400        0     no southwest  1826.843     20-25         22.5
  14   56 female 39.820        0     no southeast 11090.718     55-60         57.5
  15   27   male 42.130        0    yes southeast 39611.758     25-30         27.5
  16   19   male 24.600        1     no southwest  1837.237     15-20         17.5
  17   52 female 30.780        1     no northeast 10797.336     50-55         52.5
  18   23   male 23.845        0     no northeast  2395.172     20-25         22.5
  19   56   male 40.300        0     no southwest 10602.385     55-60         57.5
  20   30   male 35.300        0    yes southwest 36837.467     25-30         27.5
  21   60 female 36.005        0     no northeast 13228.847     55-60         57.5
  22   30 female 32.400        1     no southwest  4149.736     25-30         27.5
  23   18   male 34.100        0     no southeast  1137.011     15-20         17.5
  24   34 female 31.920        1    yes northeast 37701.877     30-35         32.5
  25   37   male 28.025        2     no northwest  6203.902     35-40         37.5
  26   59 female 27.720        3     no southeast 14001.134     55-60         57.5
  27   63 female 23.085        0     no northeast 14451.835     60-65         62.5
  28   55 female 32.775        2     no northwest 12268.632     50-55         52.5
  29   23   male 17.385        1     no northwest  2775.192     20-25         22.5
  30   31   male 36.300        2    yes southwest 38711.000     30-35         32.5
  31   22   male 35.600        0    yes southwest 35585.576     20-25         22.5
  32   18 female 26.315        0     no northeast  2198.190     15-20         17.5
  33   19 female 28.600        5     no southwest  4687.797     15-20         17.5
  34   63   male 28.310        0     no northwest 13770.098     60-65         62.5
  35   28   male 36.400        1    yes southwest 51194.559     25-30         27.5
  36   19   male 20.425        0     no northwest  1625.434     15-20         17.5
  37   62 female 32.965        3     no northwest 15612.193     60-65         62.5
  38   26   male 20.800        0     no southwest  2302.300     25-30         27.5
  39   35   male 36.670        1    yes northeast 39774.276     30-35         32.5
  40   60   male 39.900        0    yes southwest 48173.361     55-60         57.5
  41   24 female 26.600        0     no northeast  3046.062     20-25         22.5
  42   31 female 36.630        2     no southeast  4949.759     30-35         32.5
  43   41   male 21.780        1     no southeast  6272.477     40-45         42.5
  44   37 female 30.800        2     no southeast  6313.759     35-40         37.5
  45   38   male 37.050        1     no northeast  6079.672     35-40         37.5
  46   55   male 37.300        0     no southwest 20630.284     50-55         52.5
  47   18 female 38.665        2     no northeast  3393.356     15-20         17.5
  48   28 female 34.770        0     no northwest  3556.922     25-30         27.5
  49   60 female 24.530        0     no southeast 12629.897     55-60         57.5
  50   36   male 35.200        1    yes southeast 38709.176     35-40         37.5
  51   18 female 35.625        0     no northeast  2211.131     15-20         17.5
  52   21 female 33.630        2     no northwest  3579.829     20-25         22.5
  53   48   male 28.000        1    yes southwest 23568.272     45-50         47.5
  54   36   male 34.430        0    yes southeast 37742.576     35-40         37.5
  55   40 female 28.690        3     no northwest  8059.679     35-40         37.5
  56   58   male 36.955        2    yes northwest 47496.494     55-60         57.5
  57   58 female 31.825        2     no northeast 13607.369     55-60         57.5
  58   18   male 31.680        2    yes southeast 34303.167     15-20         17.5
  59   53 female 22.880        1    yes southeast 23244.790     50-55         52.5
  60   34 female 37.335        2     no northwest  5989.524     30-35         32.5
  61   43   male 27.360        3     no northeast  8606.217     40-45         42.5
  62   25   male 33.660        4     no southeast  4504.662     20-25         22.5
  63   64   male 24.700        1     no northwest 30166.618     60-65         62.5
  64   28 female 25.935        1     no northwest  4133.642     25-30         27.5
  65   20 female 22.420        0    yes northwest 14711.744     15-20         17.5
  66   19 female 28.900        0     no southwest  1743.214     15-20         17.5
  67   61 female 39.100        2     no southwest 14235.072     60-65         62.5
  68   40   male 26.315        1     no northwest  6389.378     35-40         37.5
  69   40 female 36.190        0     no southeast  5920.104     35-40         37.5
  70   28   male 23.980        3    yes southeast 17663.144     25-30         27.5
  71   27 female 24.750        0    yes southeast 16577.780     25-30         27.5
  72   31   male 28.500        5     no northeast  6799.458     30-35         32.5
  73   53 female 28.100        3     no southwest 11741.726     50-55         52.5
  74   58   male 32.010        1     no southeast 11946.626     55-60         57.5
  75   44   male 27.400        2     no southwest  7726.854     40-45         42.5
  76   57   male 34.010        0     no northwest 11356.661     55-60         57.5
  77   29 female 29.590        1     no southeast  3947.413     25-30         27.5
  78   21   male 35.530        0     no southeast  1532.470     20-25         22.5
  79   22 female 39.805        0     no northeast  2755.021     20-25         22.5
  80   41 female 32.965        0     no northwest  6571.024     40-45         42.5
  81   31   male 26.885        1     no northeast  4441.213     30-35         32.5
  82   45 female 38.285        0     no northeast  7935.291     40-45         42.5
  83   22   male 37.620        1    yes southeast 37165.164     20-25         22.5
  84   48 female 41.230        4     no northwest 11033.662     45-50         47.5
  85   37 female 34.800        2    yes southwest 39836.519     35-40         37.5
  86   45   male 22.895        2    yes northwest 21098.554     40-45         42.5
  87   57 female 31.160        0    yes northwest 43578.939     55-60         57.5
  88   56 female 27.200        0     no southwest 11073.176     55-60         57.5
  89   46 female 27.740        0     no northwest  8026.667     45-50         47.5
  90   55 female 26.980        0     no northwest 11082.577     50-55         52.5
  91   21 female 39.490        0     no southeast  2026.974     20-25         22.5
  92   53 female 24.795        1     no northwest 10942.132     50-55         52.5
  93   59   male 29.830        3    yes northeast 30184.937     55-60         57.5
  94   35   male 34.770        2     no northwest  5729.005     30-35         32.5
  95   64 female 31.300        2    yes southwest 47291.055     60-65         62.5
  96   28 female 37.620        1     no southeast  3766.884     25-30         27.5
  97   54 female 30.800        3     no southwest 12105.320     50-55         52.5
  98   55   male 38.280        0     no southeast 10226.284     50-55         52.5
  99   56   male 19.950        0    yes northeast 22412.648     55-60         57.5
  100  38   male 19.300        0    yes southwest 15820.699     35-40         37.5
  101  41 female 31.600        0     no southwest  6186.127     40-45         42.5
  102  30   male 25.460        0     no northeast  3645.089     25-30         27.5
  103  18 female 30.115        0     no northeast 21344.847     15-20         17.5
  104  61 female 29.920        3    yes southeast 30942.192     60-65         62.5
  105  34 female 27.500        1     no southwest  5003.853     30-35         32.5
  106  20   male 28.025        1    yes northwest 17560.380     15-20         17.5
  107  19 female 28.400        1     no southwest  2331.519     15-20         17.5
  108  26   male 30.875        2     no northwest  3877.304     25-30         27.5
  109  29   male 27.940        0     no southeast  2867.120     25-30         27.5
  110  63   male 35.090        0    yes southeast 47055.532     60-65         62.5
  111  54   male 33.630        1     no northwest 10825.254     50-55         52.5
  [ reached 'max' / getOption("max.print") -- omitted 1227 rows ]
  > print(ins_age_group)
  age    sex    bmi children smoker    region   charges age_group
  1    19 female 27.900        0    yes southwest 16884.924     15-20
  2    18   male 33.770        1     no southeast  1725.552     15-20
  3    28   male 33.000        3     no southeast  4449.462     25-30
  4    33   male 22.705        0     no northwest 21984.471     30-35
  5    32   male 28.880        0     no northwest  3866.855     30-35
  6    31 female 25.740        0     no southeast  3756.622     30-35
  7    46 female 33.440        1     no southeast  8240.590     45-50
  8    37 female 27.740        3     no northwest  7281.506     35-40
  9    37   male 29.830        2     no northeast  6406.411     35-40
  10   60 female 25.840        0     no northwest 28923.137     55-60
  11   25   male 26.220        0     no northeast  2721.321     20-25
  12   62 female 26.290        0    yes southeast 27808.725     60-65
  13   23   male 34.400        0     no southwest  1826.843     20-25
  14   56 female 39.820        0     no southeast 11090.718     55-60
  15   27   male 42.130        0    yes southeast 39611.758     25-30
  16   19   male 24.600        1     no southwest  1837.237     15-20
  17   52 female 30.780        1     no northeast 10797.336     50-55
  18   23   male 23.845        0     no northeast  2395.172     20-25
  19   56   male 40.300        0     no southwest 10602.385     55-60
  20   30   male 35.300        0    yes southwest 36837.467     25-30
  21   60 female 36.005        0     no northeast 13228.847     55-60
  22   30 female 32.400        1     no southwest  4149.736     25-30
  23   18   male 34.100        0     no southeast  1137.011     15-20
  24   34 female 31.920        1    yes northeast 37701.877     30-35
  25   37   male 28.025        2     no northwest  6203.902     35-40
  26   59 female 27.720        3     no southeast 14001.134     55-60
  27   63 female 23.085        0     no northeast 14451.835     60-65
  28   55 female 32.775        2     no northwest 12268.632     50-55
  29   23   male 17.385        1     no northwest  2775.192     20-25
  30   31   male 36.300        2    yes southwest 38711.000     30-35
  31   22   male 35.600        0    yes southwest 35585.576     20-25
  32   18 female 26.315        0     no northeast  2198.190     15-20
  33   19 female 28.600        5     no southwest  4687.797     15-20
  34   63   male 28.310        0     no northwest 13770.098     60-65
  35   28   male 36.400        1    yes southwest 51194.559     25-30
  36   19   male 20.425        0     no northwest  1625.434     15-20
  37   62 female 32.965        3     no northwest 15612.193     60-65
  38   26   male 20.800        0     no southwest  2302.300     25-30
  39   35   male 36.670        1    yes northeast 39774.276     30-35
  40   60   male 39.900        0    yes southwest 48173.361     55-60
  41   24 female 26.600        0     no northeast  3046.062     20-25
  42   31 female 36.630        2     no southeast  4949.759     30-35
  43   41   male 21.780        1     no southeast  6272.477     40-45
  44   37 female 30.800        2     no southeast  6313.759     35-40
  45   38   male 37.050        1     no northeast  6079.672     35-40
  46   55   male 37.300        0     no southwest 20630.284     50-55
  47   18 female 38.665        2     no northeast  3393.356     15-20
  48   28 female 34.770        0     no northwest  3556.922     25-30
  49   60 female 24.530        0     no southeast 12629.897     55-60
  50   36   male 35.200        1    yes southeast 38709.176     35-40
  51   18 female 35.625        0     no northeast  2211.131     15-20
  52   21 female 33.630        2     no northwest  3579.829     20-25
  53   48   male 28.000        1    yes southwest 23568.272     45-50
  54   36   male 34.430        0    yes southeast 37742.576     35-40
  55   40 female 28.690        3     no northwest  8059.679     35-40
  56   58   male 36.955        2    yes northwest 47496.494     55-60
  57   58 female 31.825        2     no northeast 13607.369     55-60
  58   18   male 31.680        2    yes southeast 34303.167     15-20
  59   53 female 22.880        1    yes southeast 23244.790     50-55
  60   34 female 37.335        2     no northwest  5989.524     30-35
  61   43   male 27.360        3     no northeast  8606.217     40-45
  62   25   male 33.660        4     no southeast  4504.662     20-25
  63   64   male 24.700        1     no northwest 30166.618     60-65
  64   28 female 25.935        1     no northwest  4133.642     25-30
  65   20 female 22.420        0    yes northwest 14711.744     15-20
  66   19 female 28.900        0     no southwest  1743.214     15-20
  67   61 female 39.100        2     no southwest 14235.072     60-65
  68   40   male 26.315        1     no northwest  6389.378     35-40
  69   40 female 36.190        0     no southeast  5920.104     35-40
  70   28   male 23.980        3    yes southeast 17663.144     25-30
  71   27 female 24.750        0    yes southeast 16577.780     25-30
  72   31   male 28.500        5     no northeast  6799.458     30-35
  73   53 female 28.100        3     no southwest 11741.726     50-55
  74   58   male 32.010        1     no southeast 11946.626     55-60
  75   44   male 27.400        2     no southwest  7726.854     40-45
  76   57   male 34.010        0     no northwest 11356.661     55-60
  77   29 female 29.590        1     no southeast  3947.413     25-30
  78   21   male 35.530        0     no southeast  1532.470     20-25
  79   22 female 39.805        0     no northeast  2755.021     20-25
  80   41 female 32.965        0     no northwest  6571.024     40-45
  81   31   male 26.885        1     no northeast  4441.213     30-35
  82   45 female 38.285        0     no northeast  7935.291     40-45
  83   22   male 37.620        1    yes southeast 37165.164     20-25
  84   48 female 41.230        4     no northwest 11033.662     45-50
  85   37 female 34.800        2    yes southwest 39836.519     35-40
  86   45   male 22.895        2    yes northwest 21098.554     40-45
  87   57 female 31.160        0    yes northwest 43578.939     55-60
  88   56 female 27.200        0     no southwest 11073.176     55-60
  89   46 female 27.740        0     no northwest  8026.667     45-50
  90   55 female 26.980        0     no northwest 11082.577     50-55
  91   21 female 39.490        0     no southeast  2026.974     20-25
  92   53 female 24.795        1     no northwest 10942.132     50-55
  93   59   male 29.830        3    yes northeast 30184.937     55-60
  94   35   male 34.770        2     no northwest  5729.005     30-35
  95   64 female 31.300        2    yes southwest 47291.055     60-65
  96   28 female 37.620        1     no southeast  3766.884     25-30
  97   54 female 30.800        3     no southwest 12105.320     50-55
  98   55   male 38.280        0     no southeast 10226.284     50-55
  99   56   male 19.950        0    yes northeast 22412.648     55-60
  100  38   male 19.300        0    yes southwest 15820.699     35-40
  101  41 female 31.600        0     no southwest  6186.127     40-45
  102  30   male 25.460        0     no northeast  3645.089     25-30
  103  18 female 30.115        0     no northeast 21344.847     15-20
  104  61 female 29.920        3    yes southeast 30942.192     60-65
  105  34 female 27.500        1     no southwest  5003.853     30-35
  106  20   male 28.025        1    yes northwest 17560.380     15-20
  107  19 female 28.400        1     no southwest  2331.519     15-20
  108  26   male 30.875        2     no northwest  3877.304     25-30
  109  29   male 27.940        0     no southeast  2867.120     25-30
  110  63   male 35.090        0    yes southeast 47055.532     60-65
  111  54   male 33.630        1     no northwest 10825.254     50-55
  112  55 female 29.700        2     no southwest 11881.358     50-55
  113  37   male 30.800        0     no southwest  4646.759     35-40
  114  21 female 35.720        0     no northwest  2404.734     20-25
  115  52   male 32.205        3     no northeast 11488.317     50-55
  116  60   male 28.595        0     no northeast 30259.996     55-60
  117  58   male 49.060        0     no southeast 11381.325     55-60
  118  29 female 27.940        1    yes southeast 19107.780     25-30
  119  49 female 27.170        0     no southeast  8601.329     45-50
  120  37 female 23.370        2     no northwest  6686.431     35-40
  121  44   male 37.100        2     no southwest  7740.337     40-45
  122  18   male 23.750        0     no northeast  1705.624     15-20
  123  20 female 28.975        0     no northwest  2257.475     15-20
  124  44   male 31.350        1    yes northeast 39556.495     40-45
  125  47 female 33.915        3     no northwest 10115.009     45-50
  [ reached 'max' / getOption("max.print") -- omitted 1213 rows ]
  > insurance_final <- ins_mid_point
  > #for scatter
    > ggplot(insurance_final, aes(x = age_midpoint, y = charges)) +
    +     geom_point() +
    +     geom_smooth(method = "lm", color = "blue", se = FALSE) +
    +     labs(title = "Scatterplot of Age Group Midpoint vs. Charges",
               +          x = "Age Group Midpoint",
               +          y = "Charges")
  `geom_smooth()` using formula = 'y ~ x'
  > #for histo
  > ggplot(insurance_final, aes(x = charges)) +
    +     geom_histogram(aes(y = ..density..), bins = 30, fill = "lightblue", color = "black") +
    +     stat_function(fun = dnorm, 
                        +                   args = list(mean = mean(insurance_final$charges, na.rm = TRUE), 
                                                        +                               sd = sd(insurance_final$charges, na.rm = TRUE)), 
                        +                   color = "red", linetype = "dashed", size = 1) +
    +     labs(title = "Histogram of Charges with Normal Curve Overlay",
               +          x = "Charges",
               +          y = "Density")