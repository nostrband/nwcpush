-- CreateTable
CREATE TABLE "PushSubs" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "pushId" TEXT NOT NULL,
    "timestamp" BIGINT NOT NULL,
    "npub" TEXT NOT NULL,
    "pushSubscription" TEXT NOT NULL,
    "relays" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "PushSubs_pushId_key" ON "PushSubs"("pushId");
