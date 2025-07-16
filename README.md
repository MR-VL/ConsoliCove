# ConsoliCove

A full-stack Reddit style platform built for developers with **React**, **Express**, and **PostgreSQL**. Users can register, create posts, leave comments, and upvote/downvote content, all in a clean, modern interface.

---

## Tech Stack

### Frontend
- [React](https://reactjs.org/) (w/ TypeScript)
- [Vite](https://vitejs.dev/) for fast development
- Axios for API requests
- React Router DOM

### Backend
- [Express.js](https://expressjs.com/)
- [node-postgres (`pg`)](https://node-postgres.com/)
- JWT-based Auth
- Bcrypt password hashing

### Database
- PostgreSQL (with UUIDs and SQL migrations)
- Dockerized via `docker-compose`

---

## Project Structure

``` text
ConsoliCove/
├── client/                  # React + TS frontend
│   └── src/
│       ├── components/      # Reusable UI components
│       ├── pages/           # Login, Home, Post view etc.
│       ├── api/             # Axios helpers
│       ├── context/         # Auth context
│       ├── hooks/           # Custom React hooks
│       ├── App.tsx
│       └── main.tsx
├── server/                  # Express backend
│   └── src/
│       ├── controllers/     # Route logic (auth, posts, etc.)
│       ├── routes/          # Express routers
│       ├── db/              # PostgreSQL pool + helper SQL
│       ├── middleware/      # Auth, error handling
│       └── index.ts         # Server entry point
├── migrations/              # Raw SQL migration files
│   └── 001_init.sql
├── docker-compose.yml       # PostgreSQL container setup
├── README.md
└── .gitignore
```

---

# Setup Instructions

### Start PostgreSQL (Docker)

```bash
docker compose up -d
```


- Creates a `postgres` container
- Exposes DB on `localhost:5433`

### Create Tables

Run migrations:

```bash
psql -h localhost -p 5433 -U postgres -d consolicove -f migrations/001_init.sql
```

### Backend Setup

```bash
cd server
touch .env 
open .env

# paste the lines below into the file and replace PUT_YOUR_SECRET_KEY_HERE
#  with your actual JWT secret key
DATABASE_URL=postgresql://postgres:password@localhost:5433/consolicove
JWT_SECRET=PUT_YOUR_SECRET_KEY_HERE
PORT=4000

CTRL + S # saves file
Close file 

npm install
npm run dev               # start backend on port 4000
```

## .env Example

```env
# server/.env
DATABASE_URL=postgresql://postgres:password@localhost:5433/consolicove
JWT_SECRET=your_jwt_secret
PORT=4000
```


### Frontend Setup

```bash
cd client
npm install
npm run dev               # start frontend on http://localhost:5173
```

---


---

## Features

- User registration & login with JWT
- Create/read posts
- Comment on posts
- Upvote/downvote system
- Responsive frontend with React
- Dockerized PostgreSQL
- Raw SQL migrations (no ORM)

---

## Future Features

- Categories
- Post sorting (hot, new, top, controversial)
- Nested comments
- User profiles
- Edit/delete posts

---


## Contributions
This is a work in progress and you may find current tasks on the issues board on GitHub. 
If you see something you wish to work on simply assign yourself to the task so we do not have duplicate pull requests.

## License

AGPL 3.0

See License file for more information

