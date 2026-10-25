.class Lcom/gold/youtube/om7753/settings/files/MediaFile;
.super Lcom/gold/youtube/om7753/settings/files/UniFile;
.source "MediaFile.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/settings/files/UniFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/MediaFile;->isFile()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/settings/files/MediaFile;->openOutputStream(Z)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_a

    nop

    invoke-static {v1}, Lcom/gold/youtube/om7753/settings/files/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    return v1
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

    :try_start_2
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_21

    nop

    if-eqz v1, :cond_1b

    new-instance v0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;

    invoke-static {v1, p1}, Lcom/gold/youtube/om7753/settings/files/TrickRandomAccessFile;->create(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;-><init>(Ljava/io/RandomAccessFile;)V

    return-object v0

    :cond_1b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_21
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public delete()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/MediaFile;->isFile()Z

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

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/MediaContract;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/MediaContract;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/MediaContract;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/MediaFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/settings/files/Utils;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFile()Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/MediaFile;->openInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_a

    nop

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/files/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v1, 0x1

    return v1

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public lastModified()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/MediaContract;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/settings/files/MediaContract;->length(Landroid/content/Context;Landroid/net/Uri;)J

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
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

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

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    const-string v2, "w"

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/settings/files/TrickOutputStream;->create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream(Z)Ljava/io/OutputStream;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/MediaFile;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_9

    const-string v2, "wa"

    goto :goto_b

    :cond_9
    const-string v2, "w"

    :goto_b
    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/settings/files/TrickOutputStream;->create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
