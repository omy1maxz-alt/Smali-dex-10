.class public Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;
.super Landroid/widget/FrameLayout;
.source "SkipSponsorButton.java"


# static fields
.field public static final SB_BUTTON_EXTRA_VERTICAL_PADDING:I

.field private static final highContrast:Z


# instance fields
.field private final background:Landroid/graphics/Paint;

.field private final border:Landroid/graphics/Paint;

.field final ctaBottomMargin:I

.field final defaultBottomMargin:I

.field private segment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field private final skipSponsorBtnContainer:Landroid/widget/LinearLayout;

.field private final skipSponsorTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$oziZGEwmu_c_JpojWnyRUQzVjWY(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    .line 48
    :cond_6
    sget v0, Lcom/gold/extension/shared/ui/Dim;->dp10:I

    :goto_8
    sput v0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->SB_BUTTON_EXTRA_VERTICAL_PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget-object p3, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    const-string p4, "youtube_sb_skip_sponsor_button"

    invoke-static {p1, p3, p4}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 75
    const-string p2, "ad_skip_ad_button_min_height"

    invoke-static {p2}, Lcom/gold/extension/shared/ResourceUtils;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 76
    sget-object p2, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string p3, "youtube_sb_skip_sponsor_button_container"

    invoke-static {p1, p2, p3}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorBtnContainer:Landroid/widget/LinearLayout;

    .line 79
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->background:Landroid/graphics/Paint;

    .line 80
    const-string v0, "skip_ad_button_background_color"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    iput-object p4, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->border:Landroid/graphics/Paint;

    .line 84
    const-string v0, "skip_ad_button_border_color"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    const-string v0, "ad_skip_ad_button_border_width"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getDimension(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    const-string p4, "youtube_sb_skip_sponsor_button_text"

    invoke-static {p1, p2, p4}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorTextView:Landroid/widget/TextView;

    .line 90
    const-string p1, "skip_button_cta_bottom_margin"

    invoke-static {p1}, Lcom/gold/extension/shared/ResourceUtils;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->ctaBottomMargin:I

    .line 91
    const-string p1, "skip_button_default_bottom_margin"

    invoke-static {p1}, Lcom/gold/extension/shared/ResourceUtils;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->SB_BUTTON_EXTRA_VERTICAL_PADDING:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->defaultBottomMargin:I

    .line 94
    invoke-virtual {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->updateLayout()V

    .line 96
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 96
    invoke-virtual {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipButtonClicked()V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 110
    iget-object v3, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 113
    iget-object v4, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    .line 115
    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->SB_SQUARE_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v5}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3b

    int-to-float v7, v0

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v3

    .line 117
    iget-object v11, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->background:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4a

    :cond_3b
    move-object v6, p1

    .line 127
    new-instance p1, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 128
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->background:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v4, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 134
    :goto_4a
    invoke-super {p0, v6}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public skipButtonClicked()V
    .registers 2

    const/16 v0, 0x8

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->segment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->onSkipSegmentClicked(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method

.method public updateLayout()V
    .registers 3

    .line 141
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_SQUARE_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 143
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_11
    const/16 v0, 0xc

    .line 147
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public updateSkipButtonText(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 3
    .param p1  # Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 152
    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->segment:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 153
    invoke-virtual {p1}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->getSkipButtonText()Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 159
    :cond_13
    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->skipSponsorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
