(defpackage :gobject.ffi
  (:use :cl :cffi :glib :trivial-garbage :iter)
  (:export #:g-type
           #:g-type-designator
           #:gtype
           #:gtype-id
           #:gtype-name
           #:g-type
           #:g-type-fundamental
           #:%g-type-init
           #:g-type-parent
           #:g-type-depth
           #:g-type-next-base
           #:g-type-is-a
           #:%g-type-children
           #:%g-type-interface-prerequisites
           #:g-strv-get-type
           #:g-closure-get-type
           #:%g-type-interfaces
           #:g-type-interface
           #:g-type-class
           #:g-type-instance
           #:g-type-info
           #:g-type-query
           #:g-type-fundamental-flags
           #:g-type-fundamental-info
           #:g-interface-info
           #:g-type-value-table
           #:g-type-flags
           #:%g-object
           #:%g-initially-unowned
           #:g-object-class
           #:g-param-flags
           #:g-param-spec
           #:g-value-data
           #:g-value
           #:g-object-construct-param
           #:g-parameter
           #:g-enum-value
           #:g-enum-class
           #:g-flags-value
           #:g-flags-class
           #:g-param-spec-boolean
           #:g-param-spec-char
           #:g-param-spec-uchar
           #:g-param-spec-int
           #:g-param-spec-uint
           #:g-param-spec-long
           #:g-param-spec-ulong
           #:g-param-spec-int64
           #:g-param-spec-uint64
           #:g-param-spec-float
           #:g-param-spec-double
           #:g-param-spec-enum
           #:g-param-spec-flags
           #:g-param-spec-string
           #:g-param-spec-param
           #:g-param-spec-boxed
           #:g-param-spec-pointer
           #:g-param-spec-object
           #:g-param-spec-value-array
           #:g-param-spec-g-type
           #:g-param-spec-class
           #:g-closure
           #:g-type-class-ref
           #:g-type-class-unref
           #:g-type-class-add-private
           #:g-type-register-static
           #:g-type-register-static-simple
           #:g-type-add-interface-static
           #:g-type-interface-add-prerequisite
           #:g-type-query
           #:g-type-default-interface-ref
           #:g-type-default-interface-unref
           #:g-boxed-copy
           #:g-boxed-free
           #:g-boxed-type-register-static
           #:g-pointer-type-register-static
           #:g-closure-ref
           #:g-closure-sink
           #:g-closure-unref
           #:g-closure-invalidate
           #:g-closure-add-finalize-notifier
           #:g-closure-add-invalidate-notifier
           #:g-closure-new-simple
           #:g-closure-set-marshal
           #:g-enum-register-static
           #:g-flags-register-static
           #:g-param-spec-boolean
           #:g-value-set-boolean
           #:g-value-get-boolean
           #:g-param-spec-char
           #:g-value-set-char
           #:g-value-get-char
           #:g-param-spec-uchar
           #:g-value-set-uchar
           #:g-value-get-uchar
           #:g-param-spec-int
           #:g-value-set-int
           #:g-value-get-int
           #:g-param-spec-uint
           #:g-value-set-uint
           #:g-value-get-uint
           #:g-param-spec-long
           #:g-value-set-long
           #:g-value-get-long
           #:g-param-spec-ulong
           #:g-value-set-ulong
           #:g-value-get-ulong
           #:g-param-spec-int64
           #:g-value-set-int64
           #:g-value-get-int64
           #:g-param-spec-uint64
           #:g-value-set-uint64
           #:g-value-get-uint64
           #:g-param-spec-float
           #:g-value-set-float
           #:g-value-get-float
           #:g-param-spec-double
           #:g-value-set-double
           #:g-value-get-double
           #:g-param-spec-enum
           #:g-value-set-enum
           #:g-value-get-enum
           #:g-param-spec-flags
           #:g-value-set-flags
           #:g-value-get-flags
           #:g-param-spec-string
           #:g-value-set-string
           #:g-value-get-string
           #:g-param-spec-param
           #:g-value-set-param
           #:g-value-get-param
           #:g-param-spec-boxed
           #:g-value-set-boxed
           #:g-value-take-boxed
           #:g-value-get-boxed
           #:g-param-spec-pointer
           #:g-value-set-pointer
           #:g-value-get-pointer
           #:g-param-spec-object
           #:g-value-set-object
           #:g-value-get-object
           #:g-param-spec-value-array
           #:g-param-spec-g-type
           #:g-value-set-g-type
           #:g-value-get-g-type
           #:g-param-spec-ref-sink
           #:g-param-spec-unref
           #:g-param-value-set-default
           #:g-param-value-defaults
           #:g-param-value-validate
           #:g-param-spec-get-name
           #:g-param-spec-get-nick
           #:g-param-spec-get-blurb
           #:g-value-init
           #:g-value-copy
           #:g-value-reset
           #:g-value-unset
           #:g-value-set-instance
           #:g-strdup-value-contents
           #:g-object-class-install-property
           #:g-object-class-find-property
           #:g-object-class-list-properties
           #:g-object-class-override-property
           #:g-object-interface-install-property
           #:g-object-interface-find-property
           #:g-object-interface-list-properties
           #:g-object-newv
           #:g-object-ref
           #:g-object-unref
           #:g-object-ref-sink
           #:g-object-is-floating
           #:g-object-force-floating
           #:g-object-weak-ref
           #:g-object-weak-unref
           #:g-object-add-toggle-ref
           #:g-object-remove-toggle-ref
           #:g-object-notify
           #:g-object-freeze-notify
           #:g-object-thaw-notify
           #:g-object-get-data
           #:g-object-set-data
           #:g-object-set-data-full
           #:g-object-steal-data
           #:g-object-set-property
           #:g-object-get-property
           #:g-signal-connect-closure
           #:g-signal-emitv
           #:g-signal-lookup
           #:g-signal-flags
           #:g-signal-query
           #:g-signal-query
           #:lisp-closure
           #:g-object-struct
           #:g-signal-list-ids
           #:g-signal-parse-name
           #:g-type=
           #:g-type/=))
