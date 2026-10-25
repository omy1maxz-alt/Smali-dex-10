.class public final Lcom/gold/extension/youtube/patches/SlideToSeekPatch;
.super Ljava/lang/Object;
.source "SlideToSeekPatch.java"


# static fields
.field private static final SLIDE_TO_SEEK_DISABLED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SLIDE_TO_SEEK:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/gold/extension/youtube/patches/SlideToSeekPatch;->SLIDE_TO_SEEK_DISABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSlideToSeekDisabled(Z)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 12
    :cond_4
    sget-boolean p0, Lcom/gold/extension/youtube/patches/SlideToSeekPatch;->SLIDE_TO_SEEK_DISABLED:Z

    return p0
.end method
