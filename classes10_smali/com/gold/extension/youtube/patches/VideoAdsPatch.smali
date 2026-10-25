.class public Lcom/gold/extension/youtube/patches/VideoAdsPatch;
.super Ljava/lang/Object;
.source "VideoAdsPatch.java"


# static fields
.field private static final HIDE_VIDEO_ADS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_VIDEO_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/VideoAdsPatch;->HIDE_VIDEO_ADS:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideVideoAds(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    sget-boolean v0, Lcom/gold/extension/youtube/patches/VideoAdsPatch;->HIDE_VIDEO_ADS:Z

    if-eqz v0, :cond_6

    .line 31
    const-string p0, "Android Automotive"

    :cond_6
    return-object p0
.end method

.method public static hideVideoAds()Z
    .registers 1

    .line 23
    sget-boolean v0, Lcom/gold/extension/youtube/patches/VideoAdsPatch;->HIDE_VIDEO_ADS:Z

    return v0
.end method
