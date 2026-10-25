.class public Ljj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;
.super Ljava/lang/Object;
.source "DesugarDefaultFileSystemProvider.java"


# static fields
.field private static final INSTANCE:Ljj$/nio/file/spi/FileSystemProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->create()Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    move-result-object v0

    sput-object v0, Ljj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;->INSTANCE:Ljj$/nio/file/spi/FileSystemProvider;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Ljj$/nio/file/spi/FileSystemProvider;
    .registers 1

    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;->INSTANCE:Ljj$/nio/file/spi/FileSystemProvider;

    return-object v0
.end method

.method public static theFileSystem()Ljj$/nio/file/FileSystem;
    .registers 2

    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarDefaultFileSystemProvider;->INSTANCE:Ljj$/nio/file/spi/FileSystemProvider;

    const-string v1, "file:///"

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method
