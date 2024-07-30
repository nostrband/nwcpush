NWC web push server
===================

A helper server to wake up NWC wallets using web push API.

API:

```
POST /subscribe({
  npub: string, // wallet npub
  pushSubscription: json, // result of pushManager.subscribe
  relays: string[] // which relays to watch for NWC rpc
})
```

Server starts watching the relays for NWC rpc and if it 
detects that some requests don't have matching replies (wallet 
is sleeping) then it sends a push message to the wallet. 
Authorized using nip98 to make sure npub can only subscribe itself.

Variables in .env
-----------------

```
// generate using `web-push generate-vapid-keys`
PUSH_PUBKEY=
PUSH_SECRET=

// database file, create using `npx prisma migrate deploy`
DATABASE_URL="file:./dev.db"

// for google's push server 
ADMIN_EMAIL=artur@nostr.band

// which port to run the server on
PORT=8000

// server's external endpoint used to check nip98 auth
SERVER_ORIGIN=https://nwcpush.cashu.me
```