! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! The ODE Jacobian of Chemical Model File
! 
! Generated by KPP-2.2.4_gc symbolic chemistry Kinetics PreProcessor
!       (http://www.cs.vt.edu/~asandu/Software/KPP)
! KPP is distributed under GPL, the general public licence
!       (http://www.gnu.org/copyleft/gpl.html)
! (C) 1995-1997, V. Damian & A. Sandu, CGRER, Univ. Iowa
! (C) 1997-2005, A. Sandu, Michigan Tech, Virginia Tech
!     With important contributions from:
!        M. Damian, Villanova University, USA
!        R. Sander, Max-Planck Institute for Chemistry, Mainz, Germany
! 
! File                 : model_Jacobian.f90
! Time                 : Sun Feb  5 00:14:04 2017
! Working directory    : /work/home/dp626/DSMACC2
! Equation file        : model.kpp
! Output root filename : model
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



MODULE model_Jacobian

  USE model_Parameters
  USE model_JacobianSP

  IMPLICIT NONE

CONTAINS


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Jac_SP - the Jacobian of Variables in sparse matrix representation
!   Arguments :
!      V         - Concentrations of variable species (local)
!      F         - Concentrations of fixed species (local)
!      RCT       - Rate constants (local)
!      JVS       - sparse Jacobian of variables
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Jac_SP ( V, F, RCT, JVS )

! V - Concentrations of variable species (local)
  REAL(kind=dp) :: V(NVAR)
! F - Concentrations of fixed species (local)
  REAL(kind=dp) :: F(NFIX)
! RCT - Rate constants (local)
  REAL(kind=dp) :: RCT(NREACT)
! JVS - sparse Jacobian of variables
  REAL(kind=dp) :: JVS(LU_NONZERO)


! Local variables
! B - Temporary array
  REAL(kind=dp) :: B(5)

! B(1) = dA(1)/dV(3)
  B(1) = RCT(1)*V(5)
! B(2) = dA(1)/dV(5)
  B(2) = RCT(1)*V(3)
! B(3) = dA(2)/dV(1)
  B(3) = RCT(2)*V(2)
! B(4) = dA(2)/dV(2)
  B(4) = RCT(2)*V(1)
! B(5) = dA(3)/dV(4)
  B(5) = RCT(3)

! Construct the Jacobian terms from B's
! JVS(1) = Jac_FULL(1,1)
  JVS(1) = 0
! JVS(2) = Jac_FULL(2,1)
  JVS(2) = -B(3)
! JVS(3) = Jac_FULL(2,2)
  JVS(3) = -B(4)
! JVS(4) = Jac_FULL(2,4)
  JVS(4) = B(5)
! JVS(5) = Jac_FULL(3,3)
  JVS(5) = -B(1)
! JVS(6) = Jac_FULL(3,4)
  JVS(6) = B(5)
! JVS(7) = Jac_FULL(3,5)
  JVS(7) = -B(2)
! JVS(8) = Jac_FULL(4,3)
  JVS(8) = B(1)
! JVS(9) = Jac_FULL(4,4)
  JVS(9) = -B(5)
! JVS(10) = Jac_FULL(4,5)
  JVS(10) = B(2)
! JVS(11) = Jac_FULL(5,1)
  JVS(11) = B(3)
! JVS(12) = Jac_FULL(5,2)
  JVS(12) = B(4)
! JVS(13) = Jac_FULL(5,3)
  JVS(13) = -B(1)
! JVS(14) = Jac_FULL(5,4)
  JVS(14) = 0
! JVS(15) = Jac_FULL(5,5)
  JVS(15) = -B(2)
      
END SUBROUTINE Jac_SP

! End of Jac_SP function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! Jac_SP_Vec - function for sparse multiplication: sparse Jacobian times vector
!   Arguments :
!      JVS       - sparse Jacobian of variables
!      UV        - User vector for variables
!      JUV       - Jacobian times user vector
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE Jac_SP_Vec ( JVS, UV, JUV )

! JVS - sparse Jacobian of variables
  REAL(kind=dp) :: JVS(LU_NONZERO)
! UV - User vector for variables
  REAL(kind=dp) :: UV(NVAR)
! JUV - Jacobian times user vector
  REAL(kind=dp) :: JUV(NVAR)

  JUV(1) = JVS(1)*UV(1)
  JUV(2) = JVS(2)*UV(1)+JVS(3)*UV(2)+JVS(4)*UV(4)
  JUV(3) = JVS(5)*UV(3)+JVS(6)*UV(4)+JVS(7)*UV(5)
  JUV(4) = JVS(8)*UV(3)+JVS(9)*UV(4)+JVS(10)*UV(5)
  JUV(5) = JVS(11)*UV(1)+JVS(12)*UV(2)+JVS(13)*UV(3)+JVS(15)*UV(5)
      
END SUBROUTINE Jac_SP_Vec

! End of Jac_SP_Vec function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! 
! JacTR_SP_Vec - sparse multiplication: sparse Jacobian transposed times vector
!   Arguments :
!      JVS       - sparse Jacobian of variables
!      UV        - User vector for variables
!      JTUV      - Jacobian transposed times user vector
! 
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SUBROUTINE JacTR_SP_Vec ( JVS, UV, JTUV )

! JVS - sparse Jacobian of variables
  REAL(kind=dp) :: JVS(LU_NONZERO)
! UV - User vector for variables
  REAL(kind=dp) :: UV(NVAR)
! JTUV - Jacobian transposed times user vector
  REAL(kind=dp) :: JTUV(NVAR)

  JTUV(1) = JVS(1)*UV(1)+JVS(2)*UV(2)+JVS(11)*UV(5)
  JTUV(2) = JVS(3)*UV(2)+JVS(12)*UV(5)
  JTUV(3) = JVS(5)*UV(3)+JVS(8)*UV(4)+JVS(13)*UV(5)
  JTUV(4) = JVS(4)*UV(2)+JVS(6)*UV(3)+JVS(9)*UV(4)
  JTUV(5) = JVS(7)*UV(3)+JVS(10)*UV(4)+JVS(15)*UV(5)
      
END SUBROUTINE JacTR_SP_Vec

! End of JacTR_SP_Vec function
! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



END MODULE model_Jacobian

