trigger t2 on Account (before insert) {
    for (Account a: trigger.new){
        if(a.Industry == 'Technology')
        a.Description = 'Technology Account';
    }
        
}