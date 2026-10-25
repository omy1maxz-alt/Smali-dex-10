.class public Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;
.super Ljava/lang/Object;
.source "StoredDirectoryHelper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private docTree:Landroidx/documentfile/provider/DocumentFile;

.field private ioTree:Ljava/io/File;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string v0, "file"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_21

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    return-void

    :cond_21
    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    :try_start_23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_4a

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_42

    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-eqz p1, :cond_3a

    return-void

    :cond_3a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create the tree from Uri"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Storage Access Framework with Directory API is not available"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4a
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static addIfStartWith(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method private createFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_c

    new-instance p3, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    invoke-direct {p3, v0, p1, p2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_c
    new-instance v0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1f

    move-object p3, v0

    :goto_1a
    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    iput-object p1, p3, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-object p3

    :catch_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method static findFileSAFHelper(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .registers 12

    if-eqz p0, :cond_84

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_a

    goto/16 :goto_84

    :cond_a
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v0, "_display_name"

    const-string v2, "document_id"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v7, v2

    const/4 v8, 0x0

    const-string v6, "_display_name = ?"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_47

    if-eqz v3, :cond_46

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_46
    return-object v1

    :cond_47
    :goto_47
    :try_start_47
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_47

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    goto :goto_47

    :cond_62
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0
    :try_end_72
    .catchall {:try_start_47 .. :try_end_72} :catchall_7a

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_76
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_7a
    move-exception p0

    :try_start_7b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_83
    throw p0

    :cond_84
    :goto_84
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static getPicker(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    const/4 v1, 0x1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.content.extra.SHOW_ADVANCED"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static makeFileName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitFilename(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_13

    goto :goto_22

    :cond_13
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    return-object v1

    :cond_22
    :goto_22
    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v3

    const-string p0, ""

    aput-object p0, v0, v2

    return-object v0
.end method


# virtual methods
.method public canWrite()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    :goto_f
    return v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1
.end method

.method public createUniqueFile(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;
    .registers 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->splitFilename(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    const/4 v5, 0x1

    if-eqz v4, :cond_65

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_1c

    goto :goto_65

    :cond_1c
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v4, "_display_name"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-array v11, v5, [Ljava/lang/String;

    aput-object v3, v11, v2

    const/4 v12, 0x0

    const-string v10, "(LOWER(_display_name) LIKE ?%"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_5f

    :goto_47
    :try_start_47
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->addIfStartWith(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_55

    goto :goto_47

    :catchall_55
    move-exception p1

    :try_start_56
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5e
    throw p1

    :cond_5f
    if-eqz v4, :cond_7b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_7b

    :cond_65
    :goto_65
    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_6d
    if-ge v7, v6, :cond_7b

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->addIfStartWith(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    :cond_7b
    :goto_7b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_86

    invoke-direct {p0, p1, p2, v5}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1

    :cond_86
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    const/4 v4, 0x0

    :cond_a1
    if-eqz v4, :cond_a8

    invoke-direct {p0, p1, p2, v5}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1

    :cond_a8
    sget-object p1, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    :goto_ae
    const/16 v4, 0x3e8

    if-ge p1, v4, :cond_ce

    aget-object v4, v1, v5

    invoke-static {v3, p1, v4}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->makeFileName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_cb

    aget-object v0, v1, v2

    aget-object v1, v1, v5

    invoke-static {v0, p1, v1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->makeFileName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, v5}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1

    :cond_cb
    add-int/lit8 p1, p1, 0x1

    goto :goto_ae

    :cond_ce
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aget-object v0, v1, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, v2}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1
.end method

.method public findFile(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :cond_16
    return-object v1

    :cond_17
    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->findFileSAFHelper(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_24

    :cond_20
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    :goto_24
    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public isDirect()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isInvalidSafStorage()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public mkdirs()Z
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1

    :cond_18
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v2

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_25
    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getParentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_3f

    if-nez v0, :cond_30

    goto :goto_3f

    :cond_30
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_37

    return v2

    :cond_37
    invoke-virtual {v3, v0}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3e} :catch_3f

    goto :goto_25

    :catch_3f
    :cond_3f
    :goto_3f
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->ioTree:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_f
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
