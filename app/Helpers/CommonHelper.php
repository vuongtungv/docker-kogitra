<?php


// Chuyển số điện thoại
if(!function_exists('replacePhone')) {
    function replacePhone($phone, $countryCode = '84') {
        $phone = preg_replace('/^0?/', '+'.$countryCode, $phone);
        return $phone;
    }
}


if (!function_exists('formatPrice')) {
    function formatPrice($number, $suffix = 'đ') {
        if (!empty($number)) {
            return number_format($number, 0, ',', '.') . "{$suffix}";
        }
    }
}


?>
