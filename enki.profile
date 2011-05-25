<?php
// $Id: standard.profile,v 1.2 2010/07/22 16:16:42 dries Exp $

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function enki_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  //drupal_set_message('<pre>'. print_r($form, TRUE) .'</pre>');
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  $form['site_information']['site_mail']['#default_value'] = 'podpora@enki.si';
  
  // prepopulate admin account name
  $form['admin_account']['account']['name']['#default_value'] = 'podpora';
  
  // prepopulate admin account mail
  $form['admin_account']['account']['mail']['#default_value'] = 'podpora@enki.si';
  
  // prepopulate server setting, default country
  $form['server_settings']['site_default_country']['#default_value'] = 'SI';
}
