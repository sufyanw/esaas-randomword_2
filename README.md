# Random Word app

This app supports the [Sinatra "Hangperson" CHIPS
assignment](https://github.com/saasbook/hw-sinatra-saas-hangperson) in
the 
[Engineering Software as a Service (ESaaS)](http://www.saasbook.info)
course.
It is a replacement for the old Watchout4snakes service.

The app returns a random 5 to 8 letter English word suitable for use
in playing the game "Hangman".

The app is online at `http://randomword.saasbook.info`.
**Note:** The current deployment works only over plain HTTP, not HTTPS.

This code is licensed under
[CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/).

Future enhancements could include respecting a Locale argument.

## Usage

The following routes are recognized:

`get '/RandomWord'` or `post '/RandomWord'` with optional URL
parameter `format` is interpreted as follows:

* `format=text`, `format=txt`, or omitted: returns a bare random word
with content-type `text/plain` (equivalent to 
`POST http://watchout4snakes.com/wo4snakes/Random/RandomWord`)

* `format=json`: returns a JSON object `{"success": "true", "word": "`_word_`"}` with
content-type `application/json`

* `format=html`: returns a minimal legal HTML5 page whose `body`
consists of a single `p` element containing the word

* Any other value for `format` results in a 501 error (resource not available).

`get '/'` or `post '/'` is the same as `get '/RandomWord?format=html`



