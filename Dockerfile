# Use AWS Lambda Node.js 18.x base image
FROM public.ecr.aws/lambda/nodejs:18

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install --production

# Copy the NestJS app code to /var/task
COPY dist /var/task

# Command to run the Lambda function
CMD ["lambda.handler"]
