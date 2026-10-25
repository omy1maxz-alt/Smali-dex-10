.class public abstract Ljj$/nio/file/spi/FileSystemProvider;
.super Ljava/lang/Object;
.source "FileSystemProvider.java"


# static fields
.field private static final DEFAULT_OPEN_OPTIONS:Ljava/util/Set;

.field private static volatile installedProviders:Ljava/util/List;

.field private static loadingProviders:Z

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$smloadInstalledProviders()Ljava/util/List;
    .registers 1

    invoke-static {}, Ljj$/nio/file/spi/FileSystemProvider;->loadInstalledProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljj$/nio/file/spi/FileSystemProvider;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Ljj$/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE:Ljj$/nio/file/StandardOpenOption;

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    sget-object v2, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    invoke-static {v0, v1, v2}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSyntheticBackport7;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/nio/file/spi/FileSystemProvider;->DEFAULT_OPEN_OPTIONS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-static {}, Ljj$/nio/file/spi/FileSystemProvider;->checkPermission()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/nio/file/spi/FileSystemProvider;-><init>(Ljava/lang/Void;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission()Ljava/lang/Void;
    .registers 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "fileSystemProvider"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static installedProviders()Ljava/util/List;
    .registers 4

    sget-object v0, Ljj$/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    if-nez v0, :cond_3d

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    sget-object v1, Ljj$/nio/file/spi/FileSystemProvider;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    sget-object v2, Ljj$/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    if-nez v2, :cond_38

    sget-boolean v2, Ljj$/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    if-nez v2, :cond_30

    const/4 v2, 0x1

    sput-boolean v2, Ljj$/nio/file/spi/FileSystemProvider;->loadingProviders:Z

    new-instance v2, Ljj$/nio/file/spi/FileSystemProvider$1;

    invoke-direct {v2}, Ljj$/nio/file/spi/FileSystemProvider$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Ljj$/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    goto :goto_38

    :cond_30
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Circular loading of installed providers detected"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_38
    :goto_38
    monitor-exit v1

    goto :goto_3d

    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_3a

    throw v2

    :cond_3d
    :goto_3d
    sget-object v0, Ljj$/nio/file/spi/FileSystemProvider;->installedProviders:Ljava/util/List;

    return-object v0
.end method

.method private static loadInstalledProviders()Ljava/util/List;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    nop

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {v2, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v3}, Ljj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4f

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v7}, Ljj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_49

    const/4 v5, 0x1

    goto :goto_4a

    :cond_49
    goto :goto_31

    :cond_4a
    :goto_4a
    if-nez v5, :cond_4f

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    goto :goto_14

    :cond_50
    return-object v0
.end method


# virtual methods
.method public varargs abstract checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V
.end method

.method public varargs abstract copy(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V
.end method

.method public varargs abstract createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V
.end method

.method public createLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs createSymbolicLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract delete(Ljj$/nio/file/Path;)V
.end method

.method public deleteIfExists(Ljj$/nio/file/Path;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->delete(Ljj$/nio/file/Path;)V
    :try_end_3
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    return v0

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public varargs abstract getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;
.end method

.method public abstract getFileStore(Ljj$/nio/file/Path;)Ljj$/nio/file/FileStore;
.end method

.method public abstract getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;
.end method

.method public abstract getPath(Ljava/net/URI;)Ljj$/nio/file/Path;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract isHidden(Ljj$/nio/file/Path;)Z
.end method

.method public abstract isSameFile(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Z
.end method

.method public varargs abstract move(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V
.end method

.method public varargs newAsynchronousFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/channels/AsynchronousFileChannel;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs abstract newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
.end method

.method public abstract newDirectoryStream(Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
.end method

.method public varargs newFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/nio/file/FileSystem;
.end method

.method public newFileSystem(Ljj$/nio/file/Path;Ljava/util/Map;)Ljj$/nio/file/FileSystem;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs newInputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/InputStream;
    .registers 7

    array-length v0, p2

    if-lez v0, :cond_33

    array-length v0, p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    aget-object v2, p2, v1

    sget-object v3, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    if-eq v2, v3, :cond_14

    sget-object v3, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    if-eq v2, v3, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' not allowed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-static {p1, p2}, Ljj$/nio/file/Files;->newByteChannel(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public varargs newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;
    .registers 10

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_7

    sget-object v2, Ljj$/nio/file/spi/FileSystemProvider;->DEFAULT_OPEN_OPTIONS:Ljava/util/Set;

    goto :goto_29

    :cond_7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_24

    aget-object v5, p2, v4

    sget-object v6, Ljj$/nio/file/StandardOpenOption;->READ:Ljj$/nio/file/StandardOpenOption;

    if-eq v5, v6, :cond_1c

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "READ not allowed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    sget-object v3, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_29
    new-array v1, v1, [Ljj$/nio/file/attribute/FileAttribute;

    invoke-virtual {p0, p1, v2, v1}, Ljj$/nio/file/spi/FileSystemProvider;->newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3
.end method

.method public varargs abstract readAttributes(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/util/Map;
.end method

.method public varargs abstract readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;
.end method

.method public readSymbolicLink(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs abstract setAttribute(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljj$/nio/file/LinkOption;)V
.end method
