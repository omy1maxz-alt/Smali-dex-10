.class public abstract Lcom/gold/extension/shared/theme/BaseThemePatch;
.super Ljava/lang/Object;
.source "BaseThemePatch.java"


# static fields
.field protected static final BLACK_COLOR:I

.field protected static final WHITE_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const-string v0, "yt_black1"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/theme/BaseThemePatch;->BLACK_COLOR:I

    .line 12
    const-string v0, "yt_white1"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/theme/BaseThemePatch;->WHITE_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs anyEquals(I[I)Z
    .registers 6

    .line 22
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p1, v2

    if-ne p0, v3, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method public static processColorValue(I[I[I)I
    .registers 4

    .line 39
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    invoke-static {p0, p1}, Lcom/gold/extension/shared/theme/BaseThemePatch;->anyEquals(I[I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 41
    sget p0, Lcom/gold/extension/shared/theme/BaseThemePatch;->BLACK_COLOR:I

    return p0

    :cond_f
    if-eqz p2, :cond_19

    .line 43
    invoke-static {p0, p2}, Lcom/gold/extension/shared/theme/BaseThemePatch;->anyEquals(I[I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 44
    sget p0, Lcom/gold/extension/shared/theme/BaseThemePatch;->WHITE_COLOR:I

    :cond_19
    return p0
.end method
