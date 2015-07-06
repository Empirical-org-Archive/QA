main edit was moving to ssl.

things that must be done to ensure transfer :

update all heroku config vars in empirical-grammar and quill-grammar-prod that references http

update record in Doorkeeper::Application in empirical-grammar so the redirect uri is https (also make sure its the correct redirect_uri in general)

update any references to https in .env file (though maybe we dont have to because those live on heroku)


make config.force_ssl true in staging.rb, production.rb


quill-grammar-staging
QUILL_API_URL:                https://staging.quill.org/api/v1/
QUILL_MAIN_APP_URL:           https://staging.quill.org/
QUILL_SITE_URL:               https://staging.quill.org/

empirical-grammar-staging:
QUILL_API_URL:                    https://staging.quill.org/api/v1


