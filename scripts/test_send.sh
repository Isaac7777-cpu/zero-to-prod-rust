curl "https://api.postmarkapp.com/email" \
  -X POST \
  -H "Accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-Postmark-Server-Token: e4355bfc-8b0f-4a43-bdf5-e8ab31a76d76" \
  -d '{
  "From": "u7643339@anu.edu.au",
  "To": "isaacleong23367@gmail.com",
  "Subject": "Postmark test",
  "TextBody": "Hello dear Postmark user.",
  "HtmlBody": "<html><body><strong>Hello</strong> dear Postmark user.</body></html>",
  "MessageStream": "outbound"
}'
