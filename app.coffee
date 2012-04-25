#! /usr/bin/env node_modules/coffee-script/bin/coffee
# author: takano32 <tak@no32 dot tk>
# vim: noet sts=4:ts=4:sw=4
#

http = require 'http'
url = require 'url'
jquery = require 'jquery'

http_get = (request, callback) ->
	http.get request, (res) ->
		#res.setEncoding 'binary'
		body = ""
		res.on 'data', (data) ->
			body += data
		res.on 'end', () ->
			callback null, body
		.on 'error', (e) ->
			console.log "Got Error: #{e.message}"

target = url.parse 'http://twitter.com/takano32'


