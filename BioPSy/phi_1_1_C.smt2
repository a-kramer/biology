(set-logic QF_NRA_ODE)
(declare-fun A () Real)
(declare-fun A_0_0 () Real)
(declare-fun A_0_t () Real)
(declare-fun B () Real)
(declare-fun B_0_0 () Real)
(declare-fun B_0_t () Real)
(declare-fun D () Real)
(declare-fun D_0_0 () Real)
(declare-fun D_0_t () Real)
(declare-fun E () Real)
(declare-fun E_0_0 () Real)
(declare-fun E_0_t () Real)
(declare-fun X () Real)
(declare-fun X_0_0 () Real)
(declare-fun X_0_t () Real)
(declare-fun Y () Real)
(declare-fun Y_0_0 () Real)
(declare-fun Y_0_t () Real)
(declare-fun R3_k1 () Real)
(declare-fun R3_k1_0_0 () Real)
(declare-fun R3_k1_0_t () Real)
(declare-fun R1_k1 () Real)
(declare-fun R1_k1_0_0 () Real)
(declare-fun R1_k1_0_t () Real)
(declare-fun R2_k1 () Real)
(declare-fun R2_k1_0_0 () Real)
(declare-fun R2_k1_0_t () Real)
(declare-fun R4_k1 () Real)
(declare-fun R4_k1_0_0 () Real)
(declare-fun R4_k1_0_t () Real)
(declare-fun t () Real)
(declare-fun t_0_0 () Real)
(declare-fun t_0_t () Real)
(declare-fun time_0 () Real)
(define-ode flow_1 ((= d/dt[R3_k1] 0.0)(= d/dt[R1_k1] 0.0)(= d/dt[R2_k1] 0.0)(= d/dt[R4_k1] 0.0)(= d/dt[t] 1.0)(= d/dt[A] 0.0)(= d/dt[B] 0.0)(= d/dt[D] 0.0)(= d/dt[E] 0.0)(= d/dt[X] (+ (+ (+ (* 1.0 (* R1_k1 A)) (* 1.0 (* R2_k1 (* (^ X 2.0) Y)))) (* -1.0 (* 1.0 (* R3_k1 (* X B))))) (* -1.0 (* 1.0 (* R4_k1 X)))))(= d/dt[Y] (+ (* -1.0 (* 1.0 (* R2_k1 (* (^ X 2.0) Y)))) (* 1.0 (* R3_k1 (* X B)))))))
(assert (>= A_0_0 0.25))
(assert (<= A_0_0 0.75))
(assert (>= A_0_t 0.25))
(assert (<= A_0_t 0.75))
(assert (>= B_0_0 1.5))
(assert (<= B_0_0 4.5))
(assert (>= B_0_t 1.5))
(assert (<= B_0_t 4.5))
(assert (>= D_0_0 0))
(assert (<= D_0_0 0))
(assert (>= D_0_t 0))
(assert (<= D_0_t 0))
(assert (>= E_0_0 0))
(assert (<= E_0_0 0))
(assert (>= E_0_t 0))
(assert (<= E_0_t 0))
(assert (>= X_0_0 0))
(assert (<= X_0_0 20))
(assert (>= X_0_t 0))
(assert (<= X_0_t 20))
(assert (>= Y_0_0 0))
(assert (<= Y_0_0 20))
(assert (>= Y_0_t 0))
(assert (<= Y_0_t 20))
(assert (>= R3_k1_0_0 0.76))
(assert (<= R3_k1_0_0 0.765))
(assert (>= R3_k1_0_t 0.76))
(assert (<= R3_k1_0_t 0.765))
(assert (>= R1_k1_0_0 1.125))
(assert (<= R1_k1_0_0 1.13))
(assert (>= R1_k1_0_t 1.125))
(assert (<= R1_k1_0_t 1.13))
(assert (>= R2_k1_0_0 0.635))
(assert (<= R2_k1_0_0 0.64))
(assert (>= R2_k1_0_t 0.635))
(assert (<= R2_k1_0_t 0.64))
(assert (>= R4_k1_0_0 1.025))
(assert (<= R4_k1_0_0 1.03))
(assert (>= R4_k1_0_t 1.025))
(assert (<= R4_k1_0_t 1.03))
(assert (>= time_0 0))
(assert (<= time_0 0.5))
(assert (>= t_0_0 0))
(assert (<= t_0_0 0.5))
(assert (>= t_0_t 0))
(assert (<= t_0_t 0.5))
(assert 
(and 
(= [R3_k1_0_t R1_k1_0_t R2_k1_0_t R4_k1_0_t t_0_t A_0_t B_0_t D_0_t E_0_t X_0_t Y_0_t ] (integral 0. time_0 [R3_k1_0_0 R1_k1_0_0 R2_k1_0_0 R4_k1_0_0 t_0_0 A_0_0 B_0_0 D_0_0 E_0_0 X_0_0 Y_0_0 ] flow_1))
(= R3_k1_0_0 R3_k1_0_t)
(= R1_k1_0_0 R1_k1_0_t)
(= R2_k1_0_0 R2_k1_0_t)
(= R4_k1_0_0 R4_k1_0_t)
(= t_0_0 0)
(>= A_0_0 0.5)
(<= A_0_0 0.5)
(>= B_0_0 3)
(<= B_0_0 3)
(>= D_0_0 0)
(<= D_0_0 0)
(>= E_0_0 0)
(<= E_0_0 0)
(>= X_0_0 3)
(<= X_0_0 3)
(>= Y_0_0 3)
(<= Y_0_0 3)
(= t_0_t 0.5)
(or
(< X_0_t -0.44)
(> X_0_t 7.56)
(< Y_0_t -3.2)
(> Y_0_t 4.8)
)
)
)
(check-sat)
(exit)
