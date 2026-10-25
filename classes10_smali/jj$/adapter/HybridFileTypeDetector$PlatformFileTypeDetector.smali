.class Ljj$/adapter/HybridFileTypeDetector$PlatformFileTypeDetector;
.super Ljj$/nio/file/spi/FileTypeDetector;
.source "HybridFileTypeDetector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/nio/file/spi/FileTypeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public probeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
