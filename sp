node {
    stage('Clone Repository') {
        echo 'Cloning the GitHub repository...'
        git credentialsId: 'ea922519-1ca5-49ce-90a9-62aa268a021e', url: 'https://github.com/Supritha001/trial1.git'
        
    }
    stage('Build/Prepare') {
        echo 'Build step (can include minifying HTML if needed)...'
        
    }
    stage('Deploy to XAMPP') {
        echo 'Deploying to XAMPP htdocs folder...'
        def xamppPath = 'C:\\xampp\\htdocs\\html-site'
    bat """
    if not exist "${xamppPath}" mkdir "${xamppPath}"
    xcopy /E /Y *.html "${xamppPath}\\"
    """
    echo 'Deployment complete. Visit http://localhost/html-site/'
}
}
