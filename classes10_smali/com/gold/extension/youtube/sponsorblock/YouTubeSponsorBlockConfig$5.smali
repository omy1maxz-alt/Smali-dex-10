.class Lcom/gold/extension/youtube/sponsorblock/YouTubeSponsorBlockConfig$5;
.super Ljava/lang/Object;
.source "YouTubeSponsorBlockConfig.java"

# interfaces
.implements Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$UiBridge;


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

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUnsubmittedSegmentTimes()V
    .registers 1

    .line 253
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->clearUnsubmittedSegmentTimes()V

    return-void
.end method

.method public hideAll()V
    .registers 1

    .line 249
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideAll()V

    return-void
.end method

.method public hideSkipHighlightButton()V
    .registers 1

    .line 248
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideSkipHighlightButton()V

    return-void
.end method

.method public hideSkipSegmentButton()V
    .registers 1

    .line 245
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideSkipSegmentButton()V

    return-void
.end method

.method public notifyNewSegmentPreviewed()V
    .registers 1

    .line 252
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->setNewSponsorSegmentPreviewed()V

    return-void
.end method

.method public overlayContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 250
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->getOverLaysViewGroupContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public setSkipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2
    .param p1  # Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 246
    invoke-static {p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setSkipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 251
    invoke-static {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public showSkipHighlightButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2
    .param p1  # Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 247
    invoke-static {p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->showSkipHighlightButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method

.method public showSkipSegmentButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2
    .param p1  # Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    invoke-static {p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->showSkipSegmentButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method
