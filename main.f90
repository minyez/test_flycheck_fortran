program test_flycheck_fortran

  use m_vars, only: real_b, init_vars, print_vars
  implicit none

  call init_vars
  real_b = 1.0e0
  call print_vars

end program test_flycheck_fortran
