;;;; gtk.lisp --- gtk interface

(in-package :interface)

(defparameter *window* nil)
(defparameter *next-view* nil)
(defparameter *last-event* nil)

(defun initialize ())
(defun start ()
  (gtk:within-main-loop
    (print "lol")
   (let* ((window
           (make-instance 'gtk:gtk-window
                          :type :toplevel
                          :title "nEXT"
                          :default-width 250
                          :border-width 0))
          (button-a
           (make-instance 'gtk:gtk-button
                          :label "Browser View Placeholder"))
          (entry
           (make-instance 'gtk:gtk-entry
                          :text "Minibuffer Input"))
          (box
           (make-instance 'gtk:gtk-box
                          :orientation :vertical
                          :spacing 0))
          (model
           (make-instance 'gtk:gtk-list-store
                          :column-types '("gchararray")))
          (list-view
           (make-instance 'gtk:gtk-tree-view
                          :model model))
          (renderer (gtk:gtk-cell-renderer-text-new))
          (column (gtk:gtk-tree-view-column-new-with-attributes
                   "Name" renderer "text" 0)))
     (gtk:gtk-tree-view-append-column list-view column)
     (gtk:gtk-list-store-set model (gtk:gtk-list-store-append model)
                             "Element 0")
     (gobject:g-signal-connect window "destroy"
                               (lambda (widget)
                                 (declare (ignore widget))
                                 (gtk:leave-gtk-main)))
     (gtk:gtk-box-pack-start box button-a)
     (gtk:gtk-box-pack-start box entry :expand nil)
     (gtk:gtk-box-pack-start box list-view :expand nil)
     (gtk:gtk-container-add window box)
     (gobject:g-signal-connect
      window "key_press_event"
      (lambda (window event)
        (declare (ignore window))
        (process-event event)))
     (gtk:gtk-widget-show-all window))))
(defun kill ())
(defun copy ())
(defun paste ())
(defun cut ())
(defun process-event (event)
  (setf *last-event* event)
  nil)
(defun set-visible-view (view)
  (declare (ignore view)))
(defun delete-view (view)
  (declare (ignore view)))
(defun make-web-view ())
(defun web-view-set-url (view url)
  (declare (ignore view url)))
(defun web-view-set-url-loaded-callback (view function)
  (declare (ignore view function)))
(defun web-view-get-url (view)
  (declare (ignore view)))
(defun web-view-execute (view script)
  (declare (ignore view script)))
(defun make-minibuffer ())
(defun minibuffer-show ())
(defun minibuffer-hide ())
(defun minibuffer-set-input (input)
  (declare (ignore input)))
(defun minibuffer-get-input ())
(defun minibuffer-get-input-complete ())
(defun minibuffer-select-next ())
(defun minibuffer-select-previous ())
(defun minibuffer-set-completion-function (function)
  (declare (ignore function)))
