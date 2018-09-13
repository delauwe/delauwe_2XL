//= require jquery
//= require jquery_ujs
//= require jquery.mobile

import "bootstrap";

import { cookies } from "../components/cookies";
import { sweetAlertReservation } from '../components/sweet-alert';
import { sweetAlertContact } from '../components/sweet-alert';
import { counter } from "../components/counter";



cookies();
sweetAlertReservation();
sweetAlertContact();
counter();
