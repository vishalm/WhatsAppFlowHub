#!/bin/bash

echo "🚀 Deploying WhatsAppFlowHub..."

# Build all services
docker-compose -f docker-compose.prod.yml build

# Run database migrations
echo "📊 Running database migrations..."
docker-compose run --rm migration-runner

# Deploy to production
echo "🌟 Starting production deployment..."
docker-compose -f docker-compose.prod.yml up -d

echo "✅ Deployment completed successfully!"
