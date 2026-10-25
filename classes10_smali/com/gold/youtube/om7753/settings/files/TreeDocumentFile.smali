.class Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;
.super Lcom/gold/youtube/om7753/settings/files/UniFile;
.source "TreeDocumentFile.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/files/UniFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/settings/files/UniFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v0

    :cond_15
    return-object v1

    :cond_16
    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3, p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_27

    new-instance v1, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;

    iget-object v3, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, v2}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/Context;Landroid/net/Uri;)V

    :cond_27
    return-object v1
.end method

.method public createFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/settings/files/UniFile;->isFile()Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v0

    :cond_15
    sget-object v2, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to create file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but it is not file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_31
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_64

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_64

    iget-object v6, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v6, v7, v5, v3}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_63

    new-instance v1, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;

    iget-object v7, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v7, v6}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/Context;Landroid/net/Uri;)V

    :cond_63
    return-object v1

    :cond_64
    iget-object v3, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    const-string v5, "application/octet-stream"

    invoke-static {v3, v4, v5, p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_77

    new-instance v1, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;

    iget-object v4, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, v3}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/Context;Landroid/net/Uri;)V

    :cond_77
    return-object v1
.end method

.method public createRandomAccessFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniRandomAccessFile;
    .registers 5

    const-string v0, "Can\'t open ParcelFileDescriptor"

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2e

    :try_start_8
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_27

    nop

    if-eqz v1, :cond_21

    new-instance v0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;

    invoke-static {v1, p1}, Lcom/gold/youtube/om7753/settings/files/TrickRandomAccessFile;->create(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;-><init>(Ljava/io/RandomAccessFile;)V

    return-object v0

    :cond_21
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_27
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t make sure it is file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->delete(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->listFiles(Landroid/content/Context;Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_34

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    new-instance v1, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v4}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v1

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_34
    return-object v1
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/settings/files/Utils;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 8

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->listFiles(Landroid/content/Context;Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/gold/youtube/om7753/settings/files/UniFile;

    const/4 v2, 0x0

    array-length v3, v0

    :goto_15
    if-ge v2, v3, :cond_25

    aget-object v4, v0, v2

    new-instance v5, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;

    iget-object v6, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6, v4}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/Context;Landroid/net/Uri;)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_25
    return-object v1
.end method

.method public listFiles(Lcom/gold/youtube/om7753/settings/files/FilenameFilter;)[Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 10

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->listFiles()[Lcom/gold/youtube/om7753/settings/files/UniFile;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->listFiles(Landroid/content/Context;Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_3d

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-interface {p1, p0, v5}, Lcom/gold/youtube/om7753/settings/files/FilenameFilter;->accept(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    new-instance v6, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;

    iget-object v7, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, v4}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_3d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/gold/youtube/om7753/settings/files/UniFile;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/gold/youtube/om7753/settings/files/UniFile;

    return-object v2
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 4

    const-string v0, "Can\'t open InputStream"

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_25

    :try_start_8
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_1e

    nop

    if-eqz v1, :cond_18

    return-object v1

    :cond_18
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1e
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t open InputStream from a directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 4

    const-string v0, "Can\'t open OutputStream"

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_25

    :try_start_8
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_1e

    nop

    if-eqz v1, :cond_18

    return-object v1

    :cond_18
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1e
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t open OutputStream from a directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openOutputStream(Z)Ljava/io/OutputStream;
    .registers 6

    const-string v0, "Can\'t open OutputStream"

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2c

    :try_start_8
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_15

    const-string v3, "wa"

    goto :goto_17

    :cond_15
    const-string v3, "w"

    :goto_17
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_25

    nop

    if-eqz v1, :cond_1f

    return-object v1

    :cond_1f
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_25
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t open OutputStream from a directory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi21;->renameTo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TreeDocumentFile;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    return v1

    :cond_e
    const/4 v1, 0x0

    return v1
.end method
