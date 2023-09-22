import express from 'express'
import dotenv from 'dotenv'

dotenv.config()

const app = express()
const port = process.env.APP_PORT || 3000

app.listen(port, () => {
  console.log(`Server is running on port ${port}`)
})
