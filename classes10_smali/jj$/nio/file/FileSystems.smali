.class public final Ljj$/nio/file/FileSystems;
.super Ljava/lang/Object;
.source "FileSystems.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Ljj$/nio/file/FileSystem;
    .registers 1

    sget-object v0, Ljj$/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem:Ljj$/nio/file/FileSystem;

    return-object v0
.end method

.method public static getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;
    .registers 5

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v2}, Ljj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {v2, p0}, Ljj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;

    move-result-object v1

    return-object v1

    :cond_27
    goto :goto_c

    :cond_28
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/nio/file/FileSystem;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljj$/nio/file/FileSystems;->newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljj$/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method public static newFileSystem(Ljava/net/URI;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljj$/nio/file/FileSystem;
    .registers 8

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v2}, Ljj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    :try_start_22
    invoke-virtual {v2, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/nio/file/FileSystem;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_22 .. :try_end_26} :catch_27

    return-object v1

    :catch_27
    move-exception v3

    :cond_28
    goto :goto_c

    :cond_29
    if-eqz p2, :cond_52

    const-class v1, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {v1, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v3}, Ljj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    :try_start_4b
    invoke-virtual {v3, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/nio/file/FileSystem;

    move-result-object v2
    :try_end_4f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4b .. :try_end_4f} :catch_50

    return-object v2

    :catch_50
    move-exception v4

    :cond_51
    goto :goto_35

    :cond_52
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newFileSystem(Ljj$/nio/file/Path;Ljava/lang/ClassLoader;)Ljj$/nio/file/FileSystem;
    .registers 7

    if-eqz p0, :cond_48

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljj$/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/nio/file/spi/FileSystemProvider;

    :try_start_1a
    invoke-virtual {v2, p0, v0}, Ljj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljj$/nio/file/Path;Ljava/util/Map;)Ljj$/nio/file/FileSystem;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v1

    :catch_1f
    move-exception v3

    goto :goto_e

    :cond_21
    if-eqz p1, :cond_40

    const-class v1, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {v1, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/nio/file/spi/FileSystemProvider;

    :try_start_39
    invoke-virtual {v3, p0, v0}, Ljj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljj$/nio/file/Path;Ljava/util/Map;)Ljj$/nio/file/FileSystem;

    move-result-object v2
    :try_end_3d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_39 .. :try_end_3d} :catch_3e

    return-object v2

    :catch_3e
    move-exception v4

    goto :goto_2d

    :cond_40
    new-instance v1, Ljava/nio/file/ProviderNotFoundException;

    const-string v2, "Provider not found"

    invoke-direct {v1, v2}, Ljava/nio/file/ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
