.class public Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;
.super Ljava/lang/Object;
.source "SponsorBlockViewController.java"


# static fields
.field public static final ROUNDED_LAYOUT_MARGIN:I = 0xc

.field private static canShowViewElements:Z

.field private static inlineSponsorOverlayRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static newSegmentLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static newSegmentLayoutVisible:Z

.field private static skipHighlight:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static skipHighlightButtonRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;",
            ">;"
        }
    .end annotation
.end field

.field private static skipSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static skipSponsorButtonRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;",
            ">;"
        }
    .end annotation
.end field

.field private static skipSponsorPlayerButton:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static youtubeOverlaysLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$K238w6gi-FluEO5uFVb2K9WscZs(Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;
    .registers 1

    .line 46
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->playerTypeChanged(Lcom/gold/extension/youtube/shared/PlayerType;)V

    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vj9Y8uBAO74TeAJSWJmo8n1g7pw(Landroid/view/View;)V
    .registers 1

    .line 107
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    if-eqz p0, :cond_d

    .line 109
    invoke-virtual {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipButtonClicked()V

    :cond_d
    return-void
.end method

.method public static synthetic $r8$lambda$aEGj2m71NdTcaUfclPhWEOWHrB4()Ljava/lang/String;
    .registers 1

    .line 214
    const-string v0, "toggleNewSegmentLayoutVisibility failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$aPEoBOg58CtRS73y7TYdaEvOY8o()Ljava/lang/String;
    .registers 1

    .line 126
    const-string v0, "initialize failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$gF0KvIxFYpiaWSbqkRGBKjusHhM()Ljava/lang/String;
    .registers 1

    .line 265
    const-string v0, "playerTypeChanged failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$gV-1iMK0nkr-1oIf2Ml_ysrA-jo()Z
    .registers 1

    .line 105
    sget-boolean v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->canShowViewElements:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->currentlyInsideSkippableSegment()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic $r8$lambda$mYYTbgZ65jQK5UpBcc2lCJPWPbI()Ljava/lang/String;
    .registers 1

    .line 283
    const-string v0, "Unable to setNewSegmentLayoutMargins (params are null)"

    return-object v0
.end method

.method public static synthetic $r8$lambda$osobUkOnltN0Gs-6kuxYjESCGS4()Ljava/lang/String;
    .registers 1

    .line 64
    const-string v0, "initializing"

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetinlineSponsorOverlayRef()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->inlineSponsorOverlayRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->inlineSponsorOverlayRef:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->youtubeOverlaysLayoutRef:Ljava/lang/ref/WeakReference;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlightButtonRef:Ljava/lang/ref/WeakReference;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutRef:Ljava/lang/ref/WeakReference;

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorButtonRef:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverLaysViewGroupContext()Landroid/content/Context;
    .registers 1

    .line 52
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->youtubeOverlaysLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static hideAll()V
    .registers 0

    .line 131
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideSkipHighlightButton()V

    .line 132
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideSkipSegmentButton()V

    .line 133
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideNewSegmentLayout()V

    return-void
.end method

.method public static hideNewSegmentLayout()V
    .registers 2

    const/4 v0, 0x0

    .line 229
    sput-boolean v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutVisible:Z

    .line 230
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;

    if-eqz v0, :cond_16

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_16

    .line 232
    invoke-virtual {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->hideWithAnimation()V

    :cond_16
    return-void
.end method

.method public static hideSkipHighlightButton()V
    .registers 3

    const/4 v0, 0x0

    .line 181
    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlight:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 182
    sget-object v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlightButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->updateSkipButton(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;ZLcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V

    return-void
.end method

.method public static hideSkipSegmentButton()V
    .registers 4

    .line 186
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_AUTO_HIDE_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 188
    sput-object v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 190
    :cond_f
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->updateSkipButton(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;ZLcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V

    return-void
.end method

.method public static initialize(Landroid/view/ViewGroup;)V
    .registers 10

    .line 64
    :try_start_0
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 67
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideAll()V

    .line 69
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    const-string v3, "youtube_sb_inline_sponsor_overlay"

    invoke-static {v1, v3}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->inlineSponsorOverlayRef:Ljava/lang/ref/WeakReference;

    .line 77
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->youtubeOverlaysLayoutRef:Ljava/lang/ref/WeakReference;

    .line 93
    new-instance p0, Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "youtube_sb_skip_highlight_button"

    .line 94
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    .line 93
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlightButtonRef:Ljava/lang/ref/WeakReference;

    .line 96
    new-instance p0, Ljava/lang/ref/WeakReference;

    const-string v1, "youtube_sb_skip_sponsor_button"

    .line 97
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    .line 96
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorButtonRef:Ljava/lang/ref/WeakReference;

    .line 100
    new-instance v1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v3, "youtube_sb_skip_sponsor_button"

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda5;-><init>()V

    new-instance v7, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda6;-><init>()V

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorPlayerButton:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    .line 115
    const-string p0, "youtube_sb_new_segment_view"

    .line 116
    invoke-static {v0, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p0

    .line 115
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutRef:Ljava/lang/ref/WeakReference;

    .line 120
    invoke-virtual {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->updateLayout()V

    const/4 p0, 0x0

    .line 122
    sput-boolean p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutVisible:Z

    const/4 p0, 0x0

    .line 123
    sput-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlight:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 124
    sput-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_aa} :catch_ab

    return-void

    :catch_ab
    move-exception v0

    move-object p0, v0

    .line 126
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static playerTypeChanged(Lcom/gold/extension/youtube/shared/PlayerType;)V
    .registers 5

    .line 250
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_FULLSCREEN:Lcom/gold/extension/youtube/shared/PlayerType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-nez v0, :cond_12

    .line 251
    sget-object v3, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v3, :cond_10

    goto :goto_12

    :cond_10
    move p0, v1

    goto :goto_13

    :cond_12
    :goto_12
    move p0, v2

    :goto_13
    sput-boolean p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->canShowViewElements:Z

    .line 253
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;

    .line 254
    invoke-static {p0, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setNewSegmentLayoutMargins(Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;Z)V

    .line 255
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget-boolean v3, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutVisible:Z

    invoke-static {p0, v3}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setGenericViewVisibility(Landroid/view/View;Z)V

    .line 257
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlightButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    .line 258
    invoke-static {p0, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setSkipButtonMargins(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;Z)V

    .line 259
    sget-object v3, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlight:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v3, :cond_3e

    move v3, v2

    goto :goto_3f

    :cond_3e
    move v3, v1

    :goto_3f
    invoke-static {p0, v3}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setGenericViewVisibility(Landroid/view/View;Z)V

    .line 261
    sget-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    .line 262
    invoke-static {p0, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setSkipButtonMargins(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;Z)V

    .line 263
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v0, :cond_52

    move v1, v2

    :cond_52
    invoke-static {p0, v1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setGenericViewVisibility(Landroid/view/View;Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception p0

    .line 265
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static setGenericViewVisibility(Landroid/view/View;Z)V
    .registers 3
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_3

    goto :goto_15

    .line 241
    :cond_3
    sget-boolean v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->canShowViewElements:Z

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    .line 243
    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_15

    .line 244
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method private static setLayoutMargins(Landroid/view/View;ZII)V
    .registers 5

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_11

    .line 283
    new-instance p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    :cond_11
    if-eqz p1, :cond_14

    move p2, p3

    .line 286
    :cond_14
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 287
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static setNewSegmentLayoutMargins(Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;Z)V
    .registers 4
    .param p0  # Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_9

    .line 271
    iget v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->defaultBottomMargin:I

    iget v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->ctaBottomMargin:I

    invoke-static {p0, p1, v0, v1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setLayoutMargins(Landroid/view/View;ZII)V

    :cond_9
    return-void
.end method

.method private static setSkipButtonMargins(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;Z)V
    .registers 4
    .param p0  # Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_9

    .line 276
    iget v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->defaultBottomMargin:I

    iget v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->ctaBottomMargin:I

    invoke-static {p0, p1, v0, v1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setLayoutMargins(Landroid/view/View;ZII)V

    :cond_9
    return-void
.end method

.method public static setSkipSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2

    .line 173
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 174
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    if-eqz v0, :cond_12

    .line 176
    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->updateSkipButtonText(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    :cond_12
    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    if-nez p0, :cond_9

    .line 323
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->shouldNotFadeOutPlayerOverlaySkipButton()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 327
    :cond_9
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorPlayerButton:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_10

    .line 328
    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_10
    :goto_10
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    if-nez p0, :cond_9

    .line 310
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->shouldNotFadeOutPlayerOverlaySkipButton()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_10

    .line 314
    :cond_9
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorPlayerButton:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_10

    .line 315
    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_10
    :goto_10
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 296
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->shouldNotFadeOutPlayerOverlaySkipButton()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_e

    .line 300
    :cond_7
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorPlayerButton:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_e

    .line 301
    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_e
    :goto_e
    return-void
.end method

.method public static showSkipHighlightButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 4

    .line 154
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlight:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 155
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v1

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 158
    :goto_1a
    sget-object v2, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlightButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    invoke-static {v2, v1, p0, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->updateSkipButton(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;ZLcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V

    return-void
.end method

.method public static showSkipSegmentButton(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 3

    .line 165
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object p0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSegment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 166
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, v1}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->updateSkipButton(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;ZLcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V

    return-void
.end method

.method public static toggleNewSegmentLayoutVisibility()V
    .registers 4

    .line 212
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;

    if-nez v0, :cond_13

    .line 214
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 217
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    sput-boolean v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutVisible:Z

    .line 218
    sget-object v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlight:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    if-eqz v1, :cond_31

    .line 219
    sget-object v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlightButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-boolean v3, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutVisible:Z

    xor-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setGenericViewVisibility(Landroid/view/View;Z)V

    .line 221
    :cond_31
    sget-boolean v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutVisible:Z

    if-eqz v1, :cond_3d

    sget-boolean v1, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->canShowViewElements:Z

    if-eqz v1, :cond_3d

    .line 222
    invoke-virtual {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->showWithAnimation()V

    return-void

    .line 224
    :cond_3d
    invoke-virtual {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->hideWithAnimation()V

    return-void
.end method

.method public static updateLayout()V
    .registers 1

    .line 137
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipSponsorButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    if-eqz v0, :cond_d

    .line 139
    invoke-virtual {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->updateLayout()V

    .line 142
    :cond_d
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->skipHighlightButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;

    if-eqz v0, :cond_1a

    .line 144
    invoke-virtual {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->updateLayout()V

    .line 147
    :cond_1a
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->newSegmentLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;

    if-eqz v0, :cond_27

    .line 149
    invoke-virtual {v0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->updateLayout()V

    :cond_27
    return-void
.end method

.method private static updateSkipButton(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;ZLcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Z)V
    .registers 4
    .param p0  # Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_8

    .line 201
    invoke-virtual {p0, p2}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->updateSkipButtonText(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    :cond_8
    if-eqz p1, :cond_1a

    .line 204
    sget-object p1, Lcom/gold/extension/youtube/settings/Settings;->SB_AUTO_HIDE_SKIP_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 205
    invoke-static {p3}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setVisibilityImmediate(Z)V

    return-void

    .line 207
    :cond_1a
    invoke-static {p0, p3}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->setGenericViewVisibility(Landroid/view/View;Z)V

    return-void
.end method
