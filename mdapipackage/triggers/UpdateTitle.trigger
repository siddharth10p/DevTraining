/**
 * Description: Sid will add it later
 **/
trigger UpdateTitle on Contact (before insert) {
    for (Contact con : Trigger.new) {
        if (String.isBlank(con.Title)) {
            con.Title = 'Business User';
        }
    }
}