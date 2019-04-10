<?php

function user_demo_register($form, &$form_state) {
    global $language;
    $form['first_name'] = array(
      '#title' => t('first name'),
      '#type' => 'textfield',
      '#size' => '60',
      '#required' => true,
    );

    $form['last_name'] = array(
      '#title' => t('last name'),
      '#type' => 'textfield',
      '#size' => '60',
      '#required' => true,
    );

    $form['email'] = array(
      '#title' => t('email'),
      '#type' => 'textfield',
      '#size' => '60',
      '#required' => true,
    );


    $form['nationality'] = array(
      '#title' => t('nationality'),
      '#type' => 'select',
      '#options' => array("" => t('Select nationality'), 'indian' => 'Indian'),
      '#default_value' => array("" => t('Select nationality')),
      '#required' => false,
    );

    global $language;
    $form['language'] = array(
      '#title' => t('Language preference'),
      '#type' => 'radios',
      '#options' => array('Arabic' => t('Arabic'), 'English' => t('English')),
      '#required' => true,
      '#default_value' => $language->language,
    );

    $form['submit'] = array(
      '#type' => 'submit',
      '#value' => t('Submit'),
    );

    return $form;
}

function user_demo_register_submit($form, $form_state) {

    global $user, $base_url, $language;
    $current_lang = $language->language;
    $current = $language->language;
    $lang = ($current_lang == 'en') ? '' : '/' . $current_lang;
    $lang_suffix = $lang_suffix = ($current == 'en') ? '' : strtoupper('_' . $current);
    $players_table = 'custom_user';

    $first_name = trim($form_state['values']['first_name']);
    $last_name = trim($form_state['values']['last_name']);
    $email = trim($form_state['values']['email']);

    $nationality = trim($form_state['values']['nationality']);
    $language = trim($form_state['values']['language']);
    if (($current_lang == "en" && $language == "Arabic") || ($current_lang == "ar" && $language == "English")) {
        $first_name_ar = trim($form_state['values']['first_name_ar']);
        $last_name_ar = trim($form_state['values']['last_name_ar']);
    } else {
        $first_name_ar = "";
        $last_name_ar = "";
    }

    //print $first_name . $last_name . $gender . $email . $dob . $nationality . $contact_phone . $language . date('Y-m-d H:i:s');
    if (email_exists($email)) {
        print 'user already exist';
        exit;
    } else {
        $random = generateRandomString();


        $captain_id = db_insert($players_table)->fields(array(
              'first_name' => $first_name,
              'last_name' => $last_name,
              'email' => $email,
              'nationality' => 'indian',
              'language' => $language,
              'status' => 0,
              'created_date' => date('Y-m-d H:i:s'),
              'random' => $random,
            ))->execute();
        $mail_subject = 'test';
        $url = '/user/demo/verify/';
        $verify_link = $email . '/' . $random;
        $mail_body = "<a href=$url$verify_link>verify</a> <br> Password is ".$random;
        //print_r($verify_link);
        //print_r($mail_body);

        $params = array(
          'key' => 'user_demo_email',
          'to' => $email,
          'from' => null,
          'subject' => 'verification link',
          'body' => $mail_body,
          'headers' => array('Content-Type' => 'text/html; charset=UTF-8'),
        );
        drupal_mail('custom_user', 'user_demo_email', $email, 'en', $params);

        print 'registered successfully';
        exit;
    }
}

function custom_user_mail($key, &$message, $params) {
    switch ($key) {
        case 'user_demo_email':
            $message['subject'] = $params['subject'];
            $message['body'][] = $params['body'];

            break;
    }
}

function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

function user_demo_verify($abc, $def) {
    $table = 'custom_user';

    $query= "SELECT `random` FROM `$table` WHERE LOWER(`email`)=:email";
    $result = db_query($query, array(':email' => strtolower($abc)))->fetchObject()->random;
    if ($result == $def) {
        $num_updated = db_update('custom_user') // Table name no longer needs {}
            ->fields(array(
              'status' => 1,
            ))
            ->condition('email', $abc, '=')
            ->execute();
    }
    print 'verified';
}

function email_exists($email) {
    $table = 'custom_user';

    $query = "SELECT `id` FROM `$table` WHERE `email`=:email";
    $result = db_query($query, array(':email' => $email))->fetchObject()->id;
    if ($result) {
        return true;
    }
    return false;
}

function user_demo_login($form, &$form_state) {
    global $language;
    $form['email'] = array(
      '#title' => t('Email'),
      '#type' => 'textfield',
      '#size' => '60',
      '#required' => true,
    );

    $form['password'] = array(
      '#title' => t('Password'),
      '#type' => 'textfield',
      '#size' => '60',
      '#required' => true,
    );


    $form['submit'] = array(
      '#type' => 'submit',
      '#value' => t('Submit'),
    );

    return $form;
}

function user_demo_login_submit($form, &$form_state) {

    $password = trim($form_state['values']['password']);
    $email = trim($form_state['values']['email']);
    $table = 'custom_user';

    $query = "SELECT `random` FROM `$table` WHERE LOWER(`email`)=:email";
    $result_team = db_query($query, array(':email' => strtolower($email)))->fetchObject()->random;
    if ($result_team == $password) {
        $query1 = "SELECT `status` FROM `$table` WHERE LOWER(`email`)=:email";
        $result_team1 = db_query($query1, array(':email' => strtolower($email)))->fetchObject()->status;
        //print 'statrus' . $result_team1;
        if ($result_team1 == 1) {
            print 'login success';
            exit;
        } else {
            print 'verify please. Check your email and click on the link';
            exit;
        }
    } else {
        print 'login failed';
        exit;
    }
}
