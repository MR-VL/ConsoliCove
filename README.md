``` text
ConsoliCove/
├── client/                 # React + TypeScript (Vite)
│   ├── public/
│   └── src/
│       ├── components/
│       ├── pages/
│       ├── api/           # Axios helpers
│       ├── context/       # Auth context, etc.
│       ├── hooks/
│       ├── App.tsx
│       └── main.tsx
├── server/                 # Express.js + node-postgres backend
│   ├── src/
│   │   ├── controllers/    # Business logic
│   │   ├── db/             # db/index.ts and .sql migration files
│   │   ├── middleware/
│   │   ├── routes/
│   │   ├── utils/
│   │   └── index.ts        # Entry point
│   ├── .env
│   └── package.json
├── migrations/             # SQL migration scripts
│   ├── 001_init.sql
│   └── ...
├── docker-compose.yml      # PostgreSQL setup
├── README.md
└── .gitignore

```
