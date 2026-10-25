.class public final Ljj$/adapter/HybridFileTypeDetector;
.super Ljava/lang/Object;
.source "HybridFileTypeDetector.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljj$/nio/file/spi/FileTypeDetector;
    .registers 1

    sget-boolean v0, Ljj$/adapter/AndroidVersionTest;->is26OrAbove:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljj$/adapter/HybridFileTypeDetector$PlatformFileTypeDetector;

    invoke-direct {v0}, Ljj$/adapter/HybridFileTypeDetector$PlatformFileTypeDetector;-><init>()V

    goto :goto_e

    :cond_a
    invoke-static {}, Ljj$/desugar/sun/nio/fs/DesugarDefaultFileTypeDetector;->create()Ljj$/nio/file/spi/FileTypeDetector;

    move-result-object v0

    :goto_e
    return-object v0
.end method
