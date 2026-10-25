.class Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$6;
.super Ljava/lang/Object;
.source "YouTubeSponsorBlockConfig.java"

# interfaces
.implements Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;


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

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isChannelWhitelisted(Ljava/lang/String;)Z
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_a

    .line 258
    invoke-static {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->isChannelWhitelisted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isCurrentChannelWhitelisted()Z
    .registers 1

    .line 261
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->isCurrentChannelWhitelisted()Z

    move-result p0

    return p0
.end method
