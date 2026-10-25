.class Ljj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;
.super Ljj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;
.source "DesugarMimeTypesFileTypeDetector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;-><init>()V

    return-void
.end method


# virtual methods
.method protected implProbeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;
    .registers 6

    invoke-interface {p1}, Ljj$/nio/file/Path;->getFileName()Ljj$/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-interface {v0}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    return-object v1

    :cond_17
    invoke-static {}, Ljj$/libcore/content/type/MimeMap;->getDefault()Ljj$/libcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljj$/libcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-virtual {p0, v2}, Ljj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_25
    if-nez v1, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_2d
    return-object v1
.end method
