.class public final Ljj$/adapter/HybridFileSystemProvider;
.super Ljava/lang/Object;
.source "HybridFileSystemProvider.java"


# static fields
.field private static final FILE_SYSTEM_INSTANCE:Ljj$/nio/file/FileSystem;

.field private static final INSTANCE:Ljj$/nio/file/spi/FileSystemProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljj$/adapter/HybridFileSystemProvider;->getFileSystemProvider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    sput-object v0, Ljj$/adapter/HybridFileSystemProvider;->INSTANCE:Ljj$/nio/file/spi/FileSystemProvider;

    sget-object v0, Ljj$/adapter/HybridFileSystemProvider;->INSTANCE:Ljj$/nio/file/spi/FileSystemProvider;

    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;

    move-result-object v0

    sput-object v0, Ljj$/adapter/HybridFileSystemProvider;->FILE_SYSTEM_INSTANCE:Ljj$/nio/file/FileSystem;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileSystemProvider()Ljj$/nio/file/spi/FileSystemProvider;
    .registers 1

    sget-boolean v0, Ljj$/adapter/AndroidVersionTest;->is26OrAbove:Z

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->convert(Ljava/nio/file/spi/FileSystemProvider;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0

    :cond_11
    sget-boolean v0, Ljj$/adapter/AndroidVersionTest;->isHeadfull:Z

    if-eqz v0, :cond_18

    invoke-static {}, Ljj$/adapter/HybridFileSystemProvider;->setThreadPolicy()V

    :cond_18
    invoke-static {}, Ljj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;->instance()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Ljj$/nio/file/spi/FileSystemProvider;
    .registers 1

    sget-object v0, Ljj$/adapter/HybridFileSystemProvider;->INSTANCE:Ljj$/nio/file/spi/FileSystemProvider;

    return-object v0
.end method

.method private static setThreadPolicy()V
    .registers 2

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method public static theFileSystem()Ljj$/nio/file/FileSystem;
    .registers 1

    sget-object v0, Ljj$/adapter/HybridFileSystemProvider;->FILE_SYSTEM_INSTANCE:Ljj$/nio/file/FileSystem;

    return-object v0
.end method
