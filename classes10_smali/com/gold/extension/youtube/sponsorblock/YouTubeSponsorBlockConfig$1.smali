.class Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$1;
.super Ljava/lang/Object;
.source "YouTubeSponsorBlockConfig.java"

# interfaces
.implements Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackSpeed()F
    .registers 1

    .line 172
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result p0

    return p0
.end method

.method public getVideoLength()J
    .registers 3

    .line 171
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoTime()J
    .registers 3

    .line 170
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public seekTo(J)Z
    .registers 3

    .line 173
    invoke-static {p1, p2}, Lcom/gold/extension/youtube/patches/VideoInformation;->seekTo(J)Z

    move-result p0

    return p0
.end method
