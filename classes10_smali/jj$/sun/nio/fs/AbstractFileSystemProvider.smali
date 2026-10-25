.class public abstract Ljj$/sun/nio/fs/AbstractFileSystemProvider;
.super Ljj$/nio/file/spi/FileSystemProvider;
.source "AbstractFileSystemProvider.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/nio/file/spi/FileSystemProvider;-><init>()V

    return-void
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_15

    const-string v2, "basic"

    aput-object v2, v0, v4

    aput-object p0, v0, v3

    goto :goto_2d

    :cond_15
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_26

    const-string v1, ""

    goto :goto_2a

    :cond_26
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    aput-object v1, v0, v3

    move v1, v2

    :goto_2d
    return-object v0
.end method


# virtual methods
.method public final delete(Ljj$/nio/file/Path;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->implDelete(Ljj$/nio/file/Path;Z)Z

    return-void
.end method

.method public final deleteIfExists(Ljj$/nio/file/Path;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->implDelete(Ljj$/nio/file/Path;Z)Z

    move-result v0

    return v0
.end method

.method public exists(Ljj$/nio/file/Path;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljj$/nio/file/AccessMode;

    invoke-virtual {p0, p1, v1}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    const/4 v0, 0x1

    return v0

    :catch_8
    move-exception v1

    return v0
.end method

.method varargs abstract getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljj$/sun/nio/fs/DynamicFileAttributeView;
.end method

.method abstract implDelete(Ljj$/nio/file/Path;Z)Z
.end method

.method public isDirectory(Ljj$/nio/file/Path;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributes;

    new-array v2, v0, [Ljj$/nio/file/LinkOption;

    invoke-virtual {p0, p1, v1, v2}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Ljj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v1

    return v0
.end method

.method public isRegularFile(Ljj$/nio/file/Path;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributes;

    new-array v2, v0, [Ljj$/nio/file/LinkOption;

    invoke-virtual {p0, p1, v1, v2}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Ljj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v1

    return v0
.end method

.method public final varargs readAttributes(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/util/Map;
    .registers 10

    invoke-static {p2}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2, p3}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljj$/sun/nio/fs/DynamicFileAttributeView;

    move-result-object v2

    if-eqz v2, :cond_23

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljj$/sun/nio/fs/DynamicFileAttributeView;->readAttributes([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    :cond_23
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    aget-object v1, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' not available"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final varargs setAttribute(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljj$/nio/file/LinkOption;)V
    .registers 11

    invoke-static {p2}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2, p4}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljj$/sun/nio/fs/DynamicFileAttributeView;

    move-result-object v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-interface {v2, v1, p3}, Ljj$/sun/nio/fs/DynamicFileAttributeView;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1c
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    aget-object v1, v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' not available"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
