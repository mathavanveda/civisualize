SELECT event.id, event.title, event.event_type_id as tid, event.is_monetary as im, event.is_online_registration as ior, event.start_date, event.end_date, COUNT(*) as count, participant.status_id, participant.register_date, fee_amount, SUM(fee_amount) from civicrm_event as event INNER JOIN civicrm_participant as participant ON event.id=participant.event_id JOIN civicrm_contact as contact on participant.contact_id = contact.id and is_deleted=0 group by event.id, status_id, participant.register_date;
