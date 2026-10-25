.class public Ljj$/desugar/sun/nio/fs/DesugarDefaultFileTypeDetector;
.super Ljava/lang/Object;
.source "DesugarDefaultFileTypeDetector.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljj$/nio/file/spi/FileTypeDetector;
    .registers 2

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-virtual {v1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->getFileTypeDetector()Ljj$/nio/file/spi/FileTypeDetector;

    move-result-object v1

    return-object v1
.end method
