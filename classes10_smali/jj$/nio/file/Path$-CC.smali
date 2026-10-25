.class public final synthetic Ljj$/nio/file/Path$-CC;
.super Ljava/lang/Object;
.source "Path.java"


# direct methods
.method public static bridge synthetic $default$compareTo(Ljj$/nio/file/Path;Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/nio/file/Path;

    invoke-interface {p0, p1}, Ljj$/nio/file/Path;->compareTo(Ljj$/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public static $default$endsWith(Ljj$/nio/file/Path;Ljava/lang/String;)Z
    .registers 4

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/nio/file/Path;->endsWith(Ljj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static $default$iterator(Ljj$/nio/file/Path;)Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ljj$/nio/file/Path$1;

    invoke-direct {v0, p0}, Ljj$/nio/file/Path$1;-><init>(Ljj$/nio/file/Path;)V

    return-object v0
.end method

.method public static varargs $default$register(Ljj$/nio/file/Path;Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;)Ljj$/nio/file/WatchKey;
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljj$/nio/file/WatchEvent$Modifier;

    invoke-interface {p0, p1, p2, v0}, Ljj$/nio/file/Path;->register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;[Ljj$/nio/file/WatchEvent$Modifier;)Ljj$/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method

.method public static $default$resolve(Ljj$/nio/file/Path;Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 4

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/nio/file/Path;->resolve(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static $default$resolveSibling(Ljj$/nio/file/Path;Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 4

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/nio/file/Path;->resolveSibling(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static $default$resolveSibling(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 4

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljj$/nio/file/Path;->getParent()Ljj$/nio/file/Path;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v1, p1

    goto :goto_e

    :cond_a
    invoke-interface {v0, p1}, Ljj$/nio/file/Path;->resolve(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static $default$startsWith(Ljj$/nio/file/Path;Ljava/lang/String;)Z
    .registers 4

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/nio/file/Path;->startsWith(Ljj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static $default$toFile(Ljj$/nio/file/Path;)Ljava/io/File;
    .registers 3

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_14

    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Path not associated with default file system."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs of(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 3

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/net/URI;)Ljj$/nio/file/Path;
    .registers 5

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljj$/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljj$/nio/file/Path;

    move-result-object v1

    return-object v1

    :cond_1b
    invoke-static {}, Ljj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v2}, Ljj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v2, p0}, Ljj$/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljj$/nio/file/Path;

    move-result-object v1

    return-object v1

    :cond_3e
    goto :goto_23

    :cond_3f
    new-instance v1, Ljava/nio/file/FileSystemNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/FileSystemNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Missing scheme"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
