module m_vars
  integer int_a
  real real_b
  double precision double_c

  contains
    subroutine init_vars()
      int_a = 0
      real_b = 0.0e0
      double_c = 0.0d0
    end subroutine init_vars

    subroutine print_vars()
      write(*, "(A10,I8)") "int_a: ", int_a
      write(*, "(A10,F8.4)") "real_b: ", real_b
      write(*, "(A10,F8.4)") "double_c: ", double_c
    end subroutine print_vars

end module m_vars
