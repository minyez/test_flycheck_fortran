# test\_flycheck\_fortran

## Compile

```shell
mkdir -p build && cd build
cmake .. & make
```

## flycheck

flycheck has a default `fortran-gfortran` checker.
To make flycheck detect the modules (`*.mod`) in `src_modules`, add to `.dir-locals.el`

```emacs-lisp
((f90-mode . ((flycheck-gfortran-include-path . ("src_modules")))))
```

Note that `flycheck-gfortran-include-path` is a [safe local variable](https://www.gnu.org/software/emacs/manual/html_node/emacs/Safe-File-Variables.html)
only when it is a list of strings (see `:safe` property of its definition).

## eglot and fortran-language-server

Install the Fortran language server `fortls` by using pip

```shell
pip install fortran-language-server
```

And turn on eglot by `M-x eglot` when you are in `f90-mode`.
That's it, eglot will try to find `fortls` for you :)

To go to the definition, try `evil-goto-definition` with cursor at the object.

## TODO

- [ ] `fortls` configuraiton

## References

- [defcustom flycheck-gfortran-include-path](https://www.flycheck.org/en/latest/languages.html#variable-flycheck-gfortran-include-path)

