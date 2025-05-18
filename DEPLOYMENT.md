# Deploying Mac Synth to Vercel

This guide will help you deploy the Mac Synth project directly to Vercel without the main homepage.

## Option 1: Deploy via Vercel CLI (Recommended)

1. Install the Vercel CLI globally if you haven't already:
   ```bash
   npm install -g vercel
   ```

2. Navigate to the Mac Synth directory:
   ```bash
   cd app/prototypes/mac-synth
   ```

3. Login to Vercel if you haven't already:
   ```bash
   vercel login
   ```

4. Deploy the project:
   ```bash
   vercel
   ```

5. Follow the prompts. When asked about the project settings:
   - Set the directory to deploy to `.` (current directory)
   - Confirm you want to override the settings in vercel.json

6. Once deployed, Vercel will provide a URL to access your Mac Synth directly.

## Option 2: Deploy via GitHub

1. Create a new GitHub repository for just the Mac Synth project.

2. Copy all files from the `app/prototypes/mac-synth` directory to your new repository.

3. Push the code to GitHub:
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

4. Go to [Vercel Dashboard](https://vercel.com/dashboard) and click "New Project".

5. Import your GitHub repository.

6. Configure your project:
   - Framework Preset: Other
   - Root Directory: ./ (root of the repository)
   - Build Command: None (leave empty)
   - Output Directory: ./ (root of the repository)

7. Click "Deploy" and wait for the deployment to complete.

8. Vercel will provide a URL to access your Mac Synth directly.

## Troubleshooting

- If you encounter any issues with paths or resources not loading, make sure all paths in your HTML and JS files are relative.
- If styles or scripts aren't loading, check the browser console for errors related to CORS or incorrect paths.
- For more help, refer to the [Vercel Documentation](https://vercel.com/docs/static-deployments). 