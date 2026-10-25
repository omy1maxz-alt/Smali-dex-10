.class final Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;
.super Ljava/lang/Object;
.source "DocumentsContractApi21.java"


# static fields
.field private static final PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final PATH_TREE:Ljava/lang/String; = "tree"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .registers 2

    if-eqz p0, :cond_a

    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
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

.method public static createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    const-string v0, "vnd.android.document/directory"

    invoke-static {p0, p1, v0, p2}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    sget-object v1, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->TAG:Ljava/lang/String;

    const-string v2, "Failed to createFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static isTreeDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 8

    invoke-static {p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "tree"

    const/4 v4, 0x2

    if-ne v2, v4, :cond_27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_46

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "document"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v1, 0x1

    :cond_45
    return v1

    :cond_46
    return v1
.end method

.method public static listFiles(Landroid/content/Context;Landroid/net/Uri;)[Landroid/net/Uri;
    .registers 12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    nop

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    const/4 v9, 0x0

    :try_start_14
    const-string v0, "document_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    if-eqz v9, :cond_40

    :goto_26
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_38} :catch_3f
    .catchall {:try_start_14 .. :try_end_38} :catchall_3a

    nop

    goto :goto_26

    :catchall_3a
    move-exception v0

    invoke-static {v9}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_3f
    move-exception v0

    :cond_40
    invoke-static {v9}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    return-object v0
.end method

.method public static prepareTreeUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    :try_start_0
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_12

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    move-exception v0

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static renameTo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    sget-object v1, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->TAG:Ljava/lang/String;

    const-string v2, "Failed to renameTo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method
