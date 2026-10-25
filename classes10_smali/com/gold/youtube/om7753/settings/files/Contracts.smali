.class final Lcom/gold/youtube/om7753/settings/files/Contracts;
.super Ljava/lang/Object;
.source "Contracts.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .registers 2

    if-eqz p0, :cond_a

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .registers 6

    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/gold/youtube/om7753/settings/files/Contracts;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .registers 14

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_2b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_35
    .catchall {:try_start_6 .. :try_end_27} :catchall_30

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    return-wide v0

    :cond_2b
    nop

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    return-wide p3

    :catchall_30
    move-exception v0

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :catch_35
    move-exception v0

    nop

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    return-wide p3
.end method

.method public static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_2b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v7, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_35
    .catchall {:try_start_6 .. :try_end_27} :catchall_30

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    return-object v0

    :cond_2b
    nop

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    return-object p3

    :catchall_30
    move-exception v0

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :catch_35
    move-exception v0

    nop

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    return-object p3
.end method
