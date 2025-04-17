# lineCam - Bar Line Livestreaming App

A mobile application that allows users to view livestreams from various bars.

## Project Structure

- **ios-app/** - Swift iOS application built with Xcode
- **backend/** - Node.js Express API for stream management
- **media-server/** - Nginx RTMP server for handling video streams
- **admin-dashboard/** - Web interface for managing streams

## Getting Started

### iOS App Development

1. Open `ios-app/LineCam.xcodeproj` in Xcode
2. Run the app in the simulator or on a device

### Backend Setup

1. Navigate to the backend directory: `cd backend`
2. Install dependencies: `npm install`
3. Start the development server: `npm run dev`

### Media Server Setup

1. Navigate to the media server directory: `cd media-server`
2. Run the setup script: `./scripts/setup-rtmp-server.sh`
3. Test a stream: `./scripts/test-stream.sh bar1`

### Admin Dashboard

1. Navigate to the admin dashboard directory: `cd admin-dashboard`
2. Open `index.html` in a web browser or serve it using a local server:
