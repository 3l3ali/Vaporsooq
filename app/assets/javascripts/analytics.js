
var GA_LOCAL_STORAGE_KEY = 'ga:clientId';


if (window.localStorage) {
    ga('create', <%=ENV["GOOGLE_ANAL_API"] %>, {
        'storage': 'none',
        'clientId': localStorage.getItem(GA_LOCAL_STORAGE_KEY)
    });
    ga(function(tracker) {
        localStorage.setItem(GA_LOCAL_STORAGE_KEY, tracker.get('clientId'));
    });
} else {
    ga('create',<%=ENV["GOOGLE_ANAL_API"] %>, 'auto');
}

var GA_LOCAL_STORAGE_KEY = 'ga:clientId', userId = false;

if (window.localStorage) {
    userId = localStorage.getItem(GA_LOCAL_STORAGE_KEY);
}
//If userId means if the user is new or not
if (userId) {
    // if he is new we will display an alert with two buttons to check if
    // he is older than 18 or not
} else {
    // This user had already access the site, so no worries.
}
