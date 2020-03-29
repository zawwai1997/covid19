<?php

function flash($name = '', $message = '', $class = 'alert-success') {
    if(!empty($name)) {
        //flash('success', 'You made it successfully');
        if(!empty($message) && empty($_SESSION[$name])) {

            if(!empty($_SESSION[$name])) {
                unset($_SESSION[$name]);
            }

            if(!empty($_SESSION[$name . '_class'])) {
                unset($_SESSION[$name . '_class']);
            }

            $_SESSION[$name] = $message;
            $_SESSION[$name . '_class'] = $class;

        } elseif(empty($message) && !empty($_SESSION[$name])) {
            //flash('success')
            $class = !empty($_SESSION[$name . '_class']) ? $_SESSION[$name . '_class'] : '';

            echo '
            <div style="border-radius: 0 !important; color: #FFF; background-image: linear-gradient(to top, #4481eb 0%, #04befe 100%);" class="alert ' . $class . ' alert-dismissible fade show alert-custom" id=msg-flash role="alert"">' . $_SESSION[$name] . '
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>';

            unset($_SESSION[$name]);
            unset($_SESSION[$name . '_class']);
        }
    }
}