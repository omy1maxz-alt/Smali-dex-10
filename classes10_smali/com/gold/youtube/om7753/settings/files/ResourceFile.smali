.class Lcom/gold/youtube/om7753/settings/files/ResourceFile;
.super Lcom/gold/youtube/om7753/settings/files/UniFile;
.source "ResourceFile.java"


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mP:Ljava/lang/String;

.field private final mR:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/settings/files/UniFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;)V

    iput-object p1, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mR:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mP:Ljava/lang/String;

    iput p3, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mId:I

    iput-object p4, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canWrite()Z
    .registers 2

    const/4 v0, 0x0

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

    const-string v0, "Can\'t open AssetFileDescriptor"

    const-string v1, "r"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :try_start_a
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mR:Landroid/content/res/Resources;

    iget v2, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_12} :catch_25

    nop

    if-eqz v1, :cond_1f

    new-instance v0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;

    invoke-static {v1, p1}, Lcom/gold/youtube/om7753/settings/files/TrickRandomAccessFile;->create(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;-><init>(Ljava/io/RandomAccessFile;)V

    return-object v0

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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFile()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public lastModified()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public length()J
    .registers 3

    const-wide/16 v0, -0x1

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

    :try_start_0
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mR:Landroid/content/res/Resources;

    iget v1, p0, Lcom/gold/youtube/om7753/settings/files/ResourceFile;->mId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t open InputStream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t open OutputStream from resource file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openOutputStream(Z)Ljava/io/OutputStream;
    .registers 4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t open OutputStream from resource file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
