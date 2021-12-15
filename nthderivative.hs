deriv f n x = if n==0
            then f x
            else derivn (di f) n 1 x
derivn f n c x= if n==c
                then f x
                else derivn (di f) n (c+1) x
di f x = (f (x+0.00001) - f x)/0.00001
f x= sin x