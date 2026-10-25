.class Ljj$/nio/file/FileSystems$DefaultFileSystemHolder$1;
.super Ljava/lang/Object;
.source "FileSystems.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/FileSystems$DefaultFileSystemHolder$1;->run()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljj$/nio/file/spi/FileSystemProvider;
    .registers 2

    invoke-static {}, Ljj$/nio/file/FileSystems$DefaultFileSystemHolder;->-$$Nest$smgetDefaultProvider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method
