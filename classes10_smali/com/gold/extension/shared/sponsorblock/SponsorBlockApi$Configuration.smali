.class public interface abstract Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$Configuration;
.super Ljava/lang/Object;
.source "SponsorBlockApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Configuration"
.end annotation


# virtual methods
.method public availableBehaviors(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;
    .registers 7

    .line 107
    sget-object p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne p1, p0, :cond_21

    .line 108
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->values()[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object p0

    .line 109
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    new-array p1, p1, [Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    .line 111
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_20

    aget-object v3, p0, v1

    .line 112
    sget-object v4, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->SKIP_AUTOMATICALLY_ONCE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-eq v3, v4, :cond_1d

    add-int/lit8 v4, v2, 0x1

    aput-object v3, p1, v2

    move v2, v4

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-object p1

    .line 116
    :cond_21
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->values()[Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    move-result-object p0

    return-object p0
.end method

.method public abstract categorySettings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$CategorySettingsProvider;
.end method

.method public abstract channelWhitelist()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;
.end method

.method public abstract compactSkipButtonEnabled()Z
.end method

.method public abstract includesHighlight()Z
.end method

.method public abstract playerState()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$PlayerStateAdapter;
.end method

.method public abstract settings()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;
.end method

.method public abstract supportsSegmentCreation()Z
.end method

.method public abstract ui()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;
.end method

.method public abstract undoToastEnabled()Z
.end method

.method public abstract video()Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$VideoInformationAdapter;
.end method

.method public abstract viewTrackingEnabled()Z
.end method
