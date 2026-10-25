.class public Lus/shandian/giga/get/sqlite/FinishedMissionStore;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FinishedMissionStore.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "downloads.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->context:Landroid/content/Context;

    return-void
.end method

.method private getMissionFromCursor(Landroid/database/Cursor;)Lus/shandian/giga/get/FinishedMission;
    .registers 8

    const-string v0, ""

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    const-string v2, "kind"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    const-string v1, "?"

    :cond_1c
    const-string v2, "path"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lus/shandian/giga/get/FinishedMission;

    invoke-direct {v3}, Lus/shandian/giga/get/FinishedMission;-><init>()V

    const-string/jumbo v4, "url"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    const-string v4, "bytes_downloaded"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lus/shandian/giga/get/Mission;->length:J

    const-string/jumbo v4, "timestamp"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lus/shandian/giga/get/Mission;->timestamp:J

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, v3, Lus/shandian/giga/get/Mission;->kind:C

    const/4 p1, 0x0

    :try_start_59
    new-instance v1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v4, p0, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, p1, v5, v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object v1, v3, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_66} :catch_67

    goto :goto_85

    :catch_67
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load the storage path of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FinishedMissionStore"

    invoke-static {v5, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-direct {v1, p1, v2, v0, v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v3, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    :goto_85
    return-object v3
.end method

.method private getValuesOfMission(Lus/shandian/giga/get/Mission;)Landroid/content/ContentValues;
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p1, Lus/shandian/giga/get/Mission;->length:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bytes_downloaded"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p1, Lus/shandian/giga/get/Mission;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-char p1, p1, Lus/shandian/giga/get/Mission;->kind:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "kind"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addFinishedMission(Lus/shandian/giga/get/DownloadMission;)V
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lus/shandian/giga/get/Mission;

    invoke-direct {p0, p1}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->getValuesOfMission(Lus/shandian/giga/get/Mission;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "finished_missions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public deleteMission(Lus/shandian/giga/get/Mission;)V
    .registers 8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lus/shandian/giga/get/Mission;

    iget-wide v0, v0, Lus/shandian/giga/get/Mission;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    instance-of v2, p1, Lus/shandian/giga/get/FinishedMission;

    if-eqz v2, :cond_43

    iget-object v2, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "finished_missions"

    if-eqz v2, :cond_2b

    new-array p1, v3, [Ljava/lang/String;

    aput-object v0, p1, v4

    const-string/jumbo v0, "timestamp = ?"

    invoke-virtual {v1, v5, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_42

    :cond_2b
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string/jumbo p1, "timestamp = ? AND path = ?"

    invoke-virtual {v1, v5, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_42
    return-void

    :cond_43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DownloadMission"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadFinishedMissions()Ljava/util/ArrayList;
    .registers 9

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "finished_missions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-direct {p0, v0}, Lus/shandian/giga/get/sqlite/FinishedMissionStore;->getMissionFromCursor(Landroid/database/Cursor;)Lus/shandian/giga/get/FinishedMission;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_32
    return-object v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE finished_missions (path TEXT NOT NULL, url TEXT NOT NULL, bytes_downloaded INTEGER NOT NULL, timestamp INTEGER NOT NULL, kind TEXT NOT NULL,  UNIQUE(timestamp, path));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 12

    const/4 p3, 0x2

    if-ne p2, p3, :cond_a

    const-string p3, "ALTER TABLE download_missions ADD COLUMN kind TEXT;"

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    :cond_a
    const/4 p3, 0x3

    if-ne p2, p3, :cond_aa

    const-string p2, "CREATE TABLE finished_missions (path TEXT NOT NULL, url TEXT NOT NULL, bytes_downloaded INTEGER NOT NULL, timestamp INTEGER NOT NULL, kind TEXT NOT NULL,  UNIQUE(timestamp, path));"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "download_missions"

    const-string/jumbo v7, "timestamp"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_a2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_2a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_9c

    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "url"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bytes_downloaded"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "kind"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "location"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "finished_missions"

    invoke-virtual {p1, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2a

    :cond_9c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_a2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    const-string p2, "DROP TABLE download_missions"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_aa
    return-void
.end method
