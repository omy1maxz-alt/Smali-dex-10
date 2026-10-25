.class Ljj$/nio/file/Files$FileTypeDetectors$1;
.super Ljava/lang/Object;
.source "Files.java"

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

    invoke-virtual {p0}, Ljj$/nio/file/Files$FileTypeDetectors$1;->run()Ljj$/nio/file/spi/FileTypeDetector;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljj$/nio/file/spi/FileTypeDetector;
    .registers 2

    invoke-static {}, Ljj$/adapter/HybridFileTypeDetector;->create()Ljj$/nio/file/spi/FileTypeDetector;

    move-result-object v0

    return-object v0
.end method
