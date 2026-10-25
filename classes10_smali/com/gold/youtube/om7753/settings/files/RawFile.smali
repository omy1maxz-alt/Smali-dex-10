.class Lcom/gold/youtube/om7753/settings/files/RawFile;
.super Lcom/gold/youtube/om7753/settings/files/UniFile;
.source "RawFile.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/gold/youtube/om7753/settings/files/RawFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/settings/files/RawFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/files/UniFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;)V

    iput-object p2, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    return-void
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .registers 9

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_38

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v4}, Lcom/gold/youtube/om7753/settings/files/RawFile;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_35

    sget-object v5, Lcom/gold/youtube/om7753/settings/files/RawFile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_38
    return v1
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object v1

    :cond_1d
    :goto_1d
    new-instance v1, Lcom/gold/youtube/om7753/settings/files/RawFile;

    invoke-direct {v1, p0, v0}, Lcom/gold/youtube/om7753/settings/files/RawFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/io/File;)V

    return-object v1
.end method

.method public createFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v1, Lcom/gold/youtube/om7753/settings/files/RawFile;

    invoke-direct {v1, p0, v0}, Lcom/gold/youtube/om7753/settings/files/RawFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/io/File;)V

    return-object v1

    :cond_21
    return-object v1

    :cond_22
    const/4 v2, 0x0

    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    new-instance v3, Lcom/gold/youtube/om7753/settings/files/RawFile;

    invoke-direct {v3, p0, v0}, Lcom/gold/youtube/om7753/settings/files/RawFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_34
    .catchall {:try_start_23 .. :try_end_2e} :catchall_32

    invoke-static {v2}, Lcom/gold/youtube/om7753/settings/files/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    :catchall_32
    move-exception v1

    goto :goto_58

    :catch_34
    move-exception v3

    :try_start_35
    sget-object v4, Lcom/gold/youtube/om7753/settings/files/RawFile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to createFile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_32

    nop

    invoke-static {v2}, Lcom/gold/youtube/om7753/settings/files/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :goto_58
    invoke-static {v2}, Lcom/gold/youtube/om7753/settings/files/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public createRandomAccessFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniRandomAccessFile;
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;-><init>(Ljava/io/RandomAccessFile;)V

    return-object v0
.end method

.method public delete()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/files/RawFile;->deleteContents(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v1, Lcom/gold/youtube/om7753/settings/files/RawFile;

    invoke-direct {v1, p0, v0}, Lcom/gold/youtube/om7753/settings/files/RawFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/io/File;)V

    :cond_1a
    return-object v1
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/files/Utils;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    array-length v1, v0

    new-array v2, v1, [Lcom/gold/youtube/om7753/settings/files/UniFile;

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1c

    new-instance v4, Lcom/gold/youtube/om7753/settings/files/RawFile;

    aget-object v5, v0, v3

    invoke-direct {v4, p0, v5}, Lcom/gold/youtube/om7753/settings/files/RawFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/io/File;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1c
    return-object v2
.end method

.method public listFiles(Lcom/gold/youtube/om7753/settings/files/FilenameFilter;)[Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 8

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/RawFile;->listFiles()[Lcom/gold/youtube/om7753/settings/files/UniFile;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v1, 0x0

    return-object v1

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_31

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p0, v5}, Lcom/gold/youtube/om7753/settings/files/FilenameFilter;->accept(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    new-instance v5, Lcom/gold/youtube/om7753/settings/files/RawFile;

    invoke-direct {v5, p0, v4}, Lcom/gold/youtube/om7753/settings/files/RawFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/gold/youtube/om7753/settings/files/UniFile;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/gold/youtube/om7753/settings/files/UniFile;

    return-object v2
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public openOutputStream(Z)Ljava/io/OutputStream;
    .registers 4

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iput-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawFile;->mFile:Ljava/io/File;

    const/4 v1, 0x1

    return v1

    :cond_1f
    return v1
.end method
