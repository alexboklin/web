def app(environ, start_response):

	raw_data = environ['QUERY_STRING']
  parsed_data = '\n'.join(str(raw_data).split("&"))

  status = '200 OK'
  headers = [
      ('Content-Type','text/plain'),
      ('Content-Length', str(len(data)))
  ]
  start_response(status, headers)
  
  return [parsed_data]
