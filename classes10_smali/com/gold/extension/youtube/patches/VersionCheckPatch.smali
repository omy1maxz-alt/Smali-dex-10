.class public Lcom/gold/extension/youtube/patches/VersionCheckPatch;
.super Ljava/lang/Object;
.source "VersionCheckPatch.java"


# static fields
.field public static final IS_20_22_OR_GREATER:Z

.field public static final IS_20_31_OR_GREATER:Z

.field public static final IS_20_37_OR_GREATER:Z

.field public static final IS_20_39_OR_GREATER:Z

.field public static final IS_21_10_OR_GREATER:Z

.field public static final IS_21_15_OR_GREATER:Z

.field public static final IS_21_17_OR_GREATER:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-string v0, "20.22.00"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->isVersionOrGreater(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_22_OR_GREATER:Z

    .line 12
    const-string v0, "20.31.00"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->isVersionOrGreater(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_31_OR_GREATER:Z

    .line 14
    const-string v0, "20.37.00"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->isVersionOrGreater(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_37_OR_GREATER:Z

    .line 16
    const-string v0, "20.39.00"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->isVersionOrGreater(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_20_39_OR_GREATER:Z

    .line 18
    const-string v0, "21.10.00"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->isVersionOrGreater(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_21_10_OR_GREATER:Z

    .line 20
    const-string v0, "21.15.00"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->isVersionOrGreater(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_21_15_OR_GREATER:Z

    .line 22
    const-string v0, "21.17.00"

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->isVersionOrGreater(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/VersionCheckPatch;->IS_21_17_OR_GREATER:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isVersionOrGreater(Ljava/lang/String;)Z
    .registers 2

    .line 7
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
