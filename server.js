const express = require('express');
const app = express();
const PORT = 3000;

// Sample transaction data (replace this with your database connection)
const transactions = [
  { id: 1, date: '2023-11-24', description: 'Purchase A', amount: 50.00 },
  { id: 2, date: '2023-11-25', description: 'Purchase B', amount: 30.00 },
  // Add more transactions as needed
];

app.get('/api/transactions', (req, res) => {
  res.json(transactions);
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});