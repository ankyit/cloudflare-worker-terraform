const html = `<!DOCTYPE html>
<body style="background-color:blue;">
  <h1 style="color:white;"><center>Hello World</center></h1>
</body>`;

async function handleRequest(request) {
  return new Response(html, {
    headers: {
      'content-type': 'text/html;charset=UTF-8',
    },
  });
}

addEventListener('fetch', event => {
  return event.respondWith(handleRequest(event.request));
});
