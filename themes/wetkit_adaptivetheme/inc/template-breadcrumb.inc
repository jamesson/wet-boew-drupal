<?php

/**
 * @file
 * Process theme data.
 *
 * Use this file to run your theme specific implimentations of theme functions,
 * such preprocess, process, alters, and theme function overrides.
 *
 * Preprocess and process functions are used to modify or create variables for
 * templates and theme functions. They are a common theming tool in Drupal, often
 * used as an alternative to directly editing or adding code to templates. Its
 * worth spending some time to learn more about these functions - they are a
 * powerful way to easily modify the output of any template variable.
 *
 * Preprocess and Process Functions SEE: http://drupal.org/node/254940#variables-processor
 * 1. Rename each function and instance of "wetkit_adaptivetheme" to match
 *    your subthemes name, e.g. if your theme name is "footheme" then the function
 *    name will be "footheme_preprocess_hook". Tip - you can search/replace
 *    on "wetkit_adaptivetheme".
 * 2. Uncomment the required function to use.
 */

/**
 * Returns HTML for a breadcrumb trail.
 *
 * Adaptivetheme impliments breadcrumb trails as an ordered list, wrapping each
 * crumb in li elements and the seperators in span elements to make life easier
 * for themers. Additionally .crumb, .crumb-first and .crumb-last classes are
 * printed on the li elements.
 *
 * @param $vars
 *   An associative array containing:
 *   - breadcrumb: An array containing the breadcrumb links.
 */
function wetkit_adaptivetheme_breadcrumb($vars) {

  global $theme_key;
  $theme_name = $theme_key;

  $breadcrumb = $vars['breadcrumb'];

  if (at_get_setting('breadcrumb_display', $theme_name) == 1) {

    if (at_get_setting('breadcrumb_home', $theme_name) == 0) {
      array_shift($breadcrumb);
    }

    // Remove the rather pointless breadcrumbs for reset password and user
    // register pages, they link to the page you are on.
    if (arg(0) === 'user' && (arg(1) === 'password' || arg(1) === 'register')) {
      array_pop($breadcrumb);
    }

    if (!empty($breadcrumb)) {

      $separator = filter_xss_admin(at_get_setting('breadcrumb_separator', $theme_name));

      // Push the page title onto the end of the breadcrumb array
      if (at_get_setting('breadcrumb_title', $theme_name) == 1) {
        $breadcrumb[] = drupal_get_title();
      }

      $output = '';
      if (at_get_setting('breadcrumb_label', $theme_name) == 1) {
        $output = '<div id="gcwu-bc">';
        $output .= '<h2>' . t('Breadcrumb trail') . '</h2>';
      }
      else {
        $output = '<div id="gcwu-bc">';
        $output .= '<h2>' . t('Breadcrumb trail') . '</h2>';
      }
      $output .= '<div id="gcwu-bc-in"><ol>';
      foreach ($breadcrumb as $key => $val) {
        if ($key == 0) {
          $output .= '<li>' . $val . '</li>';
        }
        else {
          $output .= '<li>' . $separator . '</span>' . $val . '</li>';
        }
      }
      $output .= '</ol></div></div>';

      return $output;
    }
  }
  else {
    return;
  }
}