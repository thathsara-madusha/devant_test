import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service / on httpDefaultListener {
    resource function get books() returns error|json {
        do {
            return {
                a: "b"
            };
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

}
