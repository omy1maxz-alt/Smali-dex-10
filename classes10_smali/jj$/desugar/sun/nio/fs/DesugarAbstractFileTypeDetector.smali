.class public abstract Ljj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;
.super Ljj$/nio/file/spi/FileTypeDetector;
.source "DesugarAbstractFileTypeDetector.java"


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/nio/file/spi/FileTypeDetector;-><init>()V

    return-void
.end method

.method private static isTokenChar(C)Z
    .registers 2

    const/16 v0, 0x20

    if-le p0, v0, :cond_12

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_12

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static isValidToken(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_19

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;->isTokenChar(C)Z

    move-result v3

    if-nez v3, :cond_16

    return v1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method private static parse(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v1, :cond_10

    return-object v3

    :cond_10
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;->isValidToken(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    return-object v3

    :cond_26
    if-gez v2, :cond_2f

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    :cond_2f
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_35
    nop

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;->isValidToken(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    return-object v3

    :cond_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method protected abstract implProbeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;
.end method

.method public final probeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_23

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;->implProbeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-interface {p1}, Ljj$/nio/file/Path;->getFileName()Ljj$/nio/file/Path;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v2

    invoke-interface {v1}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    if-nez v0, :cond_1e

    const/4 v1, 0x0

    goto :goto_22

    :cond_1e
    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractFileTypeDetector;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_22
    return-object v1

    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'file\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
