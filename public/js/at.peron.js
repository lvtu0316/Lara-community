window.onload=function(){

    $('#reply-body').atwho({
        at: "@",
        callbacks: {
            remoteFilter: function(query, callback) {
                $.getJSON("/users_json", {q: query}, function(data) {
                    callback(data)
                });
            }
        }
    });
};