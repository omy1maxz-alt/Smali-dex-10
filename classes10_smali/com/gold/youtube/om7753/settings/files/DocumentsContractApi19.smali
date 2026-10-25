.class final Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# static fields
.field private static final AUTHORITY_DOCUMENT_DOWNLOAD:Ljava/lang/String; = "com.android.providers.downloads.documents"

.field private static final AUTHORITY_DOCUMENT_EXTERNAL_STORAGE:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final AUTHORITY_DOCUMENT_MEDIA:Ljava/lang/String; = "com.android.providers.media.documents"

.field private static final PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final PATH_TREE:Ljava/lang/String; = "tree"

.field private static final PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.DOCUMENTS_PROVIDER"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flags"

    invoke-static {p0, p1, v2, v1}, Lcom/gold/youtube/om7753/settings/files/Contracts;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return v1

    :cond_1a
    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_20

    return v4

    :cond_20
    const-string v3, "vnd.android.document/directory"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_2d

    return v4

    :cond_2d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_38

    return v4

    :cond_38
    return v1
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    sget-object v1, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->TAG:Ljava/lang/String;

    const-string v2, "Failed to renameTo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_6
    const-string v0, "document_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_1f

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_28
    .catchall {:try_start_6 .. :try_end_1c} :catchall_23

    if-lez v0, :cond_1f

    const/4 v8, 0x1

    :cond_1f
    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    return v8

    :catchall_23
    move-exception v0

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :catch_28
    move-exception v0

    nop

    invoke-static {v7}, Lcom/gold/youtube/om7753/settings/files/Contracts;->closeQuietly(Landroid/database/Cursor;)V

    return v8
.end method

.method public static getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez p1, :cond_6

    return-object v2

    :cond_6
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.externalstorage.documents"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_105

    const-string v4, ":"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_7f

    :try_start_16
    invoke-static/range {p1 .. p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v7, v4, v6

    aget-object v5, v4, v5

    const-string v8, "primary"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_105

    const-string v9, "/"

    if-eqz v8, :cond_43

    :try_start_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v8

    const/4 v10, 0x0

    array-length v11, v8

    move-object v12, v10

    const/4 v10, 0x0

    :goto_4b
    if-ge v10, v11, :cond_68

    aget-object v13, v8, v10

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_64

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    add-int v2, v15, v16

    invoke-virtual {v14, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    :cond_64
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_4b

    :cond_68
    if-eqz v12, :cond_7d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_7d
    const/4 v2, 0x0

    return-object v2

    :cond_7f
    const-string v2, "com.android.providers.downloads.documents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_85} :catch_105

    const-string v3, "_data"

    if-eqz v2, :cond_a5

    :try_start_89
    invoke-static/range {p1 .. p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://downloads/public_downloads"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v5}, Lcom/gold/youtube/om7753/settings/files/Contracts;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_a5
    const-string v2, "com.android.providers.media.documents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-static/range {p1 .. p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v4, v6

    aget-object v5, v4, v5

    const-string v7, "image"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_d9

    :cond_c4
    const-string v7, "video"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_d9

    :cond_cf
    const-string v7, "audio"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_eb

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_d9
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v3, v9}, Lcom/gold/youtube/om7753/settings/files/Contracts;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_eb
    sget-object v3, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type in com.android.providers.media.documents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_101} :catch_105

    const/4 v3, 0x0

    return-object v3

    :cond_103
    const/4 v2, 0x0

    return-object v2

    :catch_105
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, "_display_name"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/gold/youtube/om7753/settings/files/Contracts;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    const-string v0, "mime_type"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/gold/youtube/om7753/settings/files/Contracts;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    return-object v1

    :cond_e
    return-object v0
.end method

.method public static isContentUri(Landroid/net/Uri;)Z
    .registers 3

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 10

    invoke-static {p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "tree"

    const-string v5, "document"

    const/4 v6, 0x2

    if-ne v2, v6, :cond_37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_35
    const/4 v1, 0x1

    :cond_36
    return v1

    :cond_37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_54

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v1, 0x1

    :cond_53
    return v1

    :cond_54
    return v1
.end method

.method public static isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.action.DOCUMENTS_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v2, 0x1

    return v2

    :cond_2c
    goto :goto_14

    :cond_2d
    return v2
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    const-string v0, "last_modified"

    const-wide/16 v1, -0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/gold/youtube/om7753/settings/files/Contracts;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .registers 5

    const-string v0, "_size"

    const-wide/16 v1, -0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/gold/youtube/om7753/settings/files/Contracts;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
