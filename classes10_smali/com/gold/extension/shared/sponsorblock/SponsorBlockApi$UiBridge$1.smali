.class Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge$1;
.super Ljava/lang/Object;
.source "SponsorBlockApi.java"

# interfaces
.implements Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUnsubmittedSegmentTimes()V
    .registers 1

    .line 0
    return-void
.end method

.method public hideAll()V
    .registers 1

    .line 0
    return-void
.end method

.method public hideSkipHighlightButton()V
    .registers 1

    .line 0
    return-void
.end method

.method public hideSkipSegmentButton()V
    .registers 1

    .line 0
    return-void
.end method

.method public notifyNewSegmentPreviewed()V
    .registers 1

    .line 0
    return-void
.end method

.method public overlayContext()Landroid/content/Context;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setSkipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2

    .line 0
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .registers 2

    .line 237
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method public showSkipHighlightButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2

    .line 0
    return-void
.end method

.method public showSkipSegmentButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2

    .line 0
    return-void
.end method
