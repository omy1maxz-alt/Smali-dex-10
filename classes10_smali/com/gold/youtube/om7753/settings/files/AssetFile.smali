.class Lcom/gold/youtube/om7753/settings/files/AssetFile;
.super Lcom/gold/youtube/om7753/settings/files/UniFile;
.source "AssetFile.java"


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/settings/files/UniFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;)V

    iput-object p2, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->isFile()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/settings/files/UniFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public createFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/settings/files/UniFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public createRandomAccessFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniRandomAccessFile;
    .registers 5

    const-string v0, "r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v1, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/settings/files/TrickRandomAccessFile;->create(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;-><init>(Ljava/io/RandomAccessFile;)V

    return-object v1

    :cond_1c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Can\'t open AssetFileDescriptor"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
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

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public findFile(Ljava/lang/String;)Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    array-length v2, v0

    if-nez v2, :cond_16

    goto :goto_34

    :cond_16
    array-length v2, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_33

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    new-instance v2, Lcom/gold/youtube/om7753/settings/files/AssetFile;

    iget-object v3, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v5, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/gold/youtube/om7753/settings/files/Utils;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v3, v5}, Lcom/gold/youtube/om7753/settings/files/AssetFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2f} :catch_35

    return-object v2

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_33
    return-object v1

    :cond_34
    :goto_34
    return-object v1

    :catch_35
    move-exception v0

    return-object v1
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1d

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1d
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/files/Utils;->getTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    array-length v2, v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_10

    if-lez v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    :catch_10
    move-exception v1

    return v0
.end method

.method public isFile()Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->openInputStream()Ljava/io/InputStream;

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

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public length()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public listFiles()[Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    array-length v2, v1

    if-nez v2, :cond_f

    goto :goto_2a

    :cond_f
    array-length v2, v1

    new-array v3, v2, [Lcom/gold/youtube/om7753/settings/files/UniFile;

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_29

    new-instance v5, Lcom/gold/youtube/om7753/settings/files/AssetFile;

    iget-object v6, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v7, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    aget-object v8, v1, v4

    invoke-static {v7, v8}, Lcom/gold/youtube/om7753/settings/files/Utils;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcom/gold/youtube/om7753/settings/files/AssetFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    aput-object v5, v3, v4
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_2b

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_29
    return-object v3

    :cond_2a
    :goto_2a
    return-object v0

    :catch_2b
    move-exception v1

    return-object v0
.end method

.method public listFiles(Lcom/gold/youtube/om7753/settings/files/FilenameFilter;)[Lcom/gold/youtube/om7753/settings/files/UniFile;
    .registers 12

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/settings/files/AssetFile;->listFiles()[Lcom/gold/youtube/om7753/settings/files/UniFile;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_49

    array-length v2, v1

    if-nez v2, :cond_16

    goto :goto_49

    :cond_16
    array-length v2, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_3c

    aget-object v5, v1, v4

    invoke-interface {p1, p0, v5}, Lcom/gold/youtube/om7753/settings/files/FilenameFilter;->accept(Lcom/gold/youtube/om7753/settings/files/UniFile;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    new-instance v6, Lcom/gold/youtube/om7753/settings/files/AssetFile;

    iget-object v7, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v8, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    aget-object v9, v1, v4

    invoke-static {v8, v9}, Lcom/gold/youtube/om7753/settings/files/Utils;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/gold/youtube/om7753/settings/files/AssetFile;-><init>(Lcom/gold/youtube/om7753/settings/files/UniFile;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/gold/youtube/om7753/settings/files/UniFile;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/gold/youtube/om7753/settings/files/UniFile;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_48} :catch_4a

    return-object v4

    :cond_49
    :goto_49
    return-object v0

    :catch_4a
    move-exception v1

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/gold/youtube/om7753/settings/files/AssetFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .registers 3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not support OutputStream for asset file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openOutputStream(Z)Ljava/io/OutputStream;
    .registers 4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not support OutputStream for asset file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
