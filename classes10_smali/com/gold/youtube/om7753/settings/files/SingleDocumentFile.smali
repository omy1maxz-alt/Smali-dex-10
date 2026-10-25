.class Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;
.super Lcom/gold/youtube/om7753/settings/files/UniFile;
.source "SingleDocumentFile.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/files/UniFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public createFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public createRandomAccessFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniRandomAccessFile;
    .registers 5

    const-string v0, "Can\'t open ParcelFileDescriptor"

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2e

    :try_start_8
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

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

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->delete(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/settings/files/Utils;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public listFiles(Lcom/gold/youtube/om7753/settings/files/FilenameFilter;)[Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 4

    const-string v0, "Can\'t open InputStream"

    :try_start_2
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_18

    nop

    if-eqz v1, :cond_12

    return-object v1

    :cond_12
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_18
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 4

    const-string v0, "Can\'t open OutputStream"

    :try_start_2
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_18

    nop

    if-eqz v1, :cond_12

    return-object v1

    :cond_12
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_18
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public openOutputStream(Z)Ljava/io/OutputStream;
    .registers 6

    const-string v0, "Can\'t open OutputStream"

    :try_start_2
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/SingleDocumentFile;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_f

    const-string v3, "wa"

    goto :goto_11

    :cond_f
    const-string v3, "w"

    :goto_11
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_1f

    nop

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1f
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
