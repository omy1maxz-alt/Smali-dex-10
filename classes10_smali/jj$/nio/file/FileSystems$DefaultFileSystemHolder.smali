.class Ljj$/nio/file/FileSystems$DefaultFileSystemHolder;
.super Ljava/lang/Object;
.source "FileSystems.java"


# static fields
.field static final defaultFileSystem:Ljj$/nio/file/FileSystem;


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaultProvider()Ljj$/nio/file/spi/FileSystemProvider;
    .registers 1

    invoke-static {}, Ljj$/nio/file/FileSystems$DefaultFileSystemHolder;->getDefaultProvider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljj$/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    sput-object v0, Ljj$/nio/file/FileSystems$DefaultFileSystemHolder;->defaultFileSystem:Ljj$/nio/file/FileSystem;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static defaultFileSystem()Ljj$/nio/file/FileSystem;
    .registers 2

    new-instance v0, Ljj$/nio/file/FileSystems$DefaultFileSystemHolder$1;

    invoke-direct {v0}, Ljj$/nio/file/FileSystems$DefaultFileSystemHolder$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/spi/FileSystemProvider;

    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultProvider()Ljj$/nio/file/spi/FileSystemProvider;
    .registers 12

    invoke-static {}, Ljj$/adapter/HybridFileSystemProvider;->instance()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    const-string v1, "java.nio.file.spi.DefaultFileSystemProvider"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v4, :cond_57

    aget-object v7, v3, v6

    nop

    :try_start_1a
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v9, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljj$/nio/file/spi/FileSystemProvider;

    aput-object v11, v10, v5

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v5

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljj$/nio/file/spi/FileSystemProvider;

    move-object v0, v9

    invoke-virtual {v0}, Ljj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v9

    const-string v11, "file"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_48
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Default provider must use scheme \'file\'"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_50} :catch_50

    :catch_50
    move-exception v3

    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_57
    return-object v0
.end method
