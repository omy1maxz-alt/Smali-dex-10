.class public abstract Ljj$/nio/file/spi/FileTypeDetector;
.super Ljava/lang/Object;
.source "FileTypeDetector.java"


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-static {}, Ljj$/nio/file/spi/FileTypeDetector;->checkPermission()Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/nio/file/spi/FileTypeDetector;-><init>(Ljava/lang/Void;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission()Ljava/lang/Void;
    .registers 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "fileTypeDetector"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public abstract probeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;
.end method
