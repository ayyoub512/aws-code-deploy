#!/usr/bin/env bash
sudo yum install httpd -y
sudo chown ec2-user:ec2-user -R /var/www
cat > /var/www/html/index.html << EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello, World!</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="flex items-center justify-center h-screen bg-gradient-to-r from-blue-500 to-purple-600 text-white">
    <div class="text-center">
        <h1 class="text-6xl font-bold animate-pulse">Hello, World! 🌍</h1>
        <p class="text-xl mt-4 opacity-80">Welcome to my Tailwind CSS page.</p>
    </div>
</body>
</html>
EOL
sudo systemctl start httpd 
sudo systemctl enable httpd