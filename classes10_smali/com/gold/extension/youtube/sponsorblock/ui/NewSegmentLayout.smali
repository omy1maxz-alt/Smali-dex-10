.class public final Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;
.super Landroid/widget/FrameLayout;
.source "NewSegmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;
    }
.end annotation


# static fields
.field private static final rippleColorStateList:Landroid/content/res/ColorStateList;


# instance fields
.field final ctaBottomMargin:I

.field final defaultBottomMargin:I

.field private dragStartX:F

.field private dragStartY:F

.field private initialTransX:F

.field private initialTransY:F

.field private isDragging:Z

.field private final touchSlopSquare:I


# direct methods
.method public static synthetic $r8$lambda$_QzcCl4OiOUIEL9yECSNcabXwCY()V
    .registers 2

    .line 95
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_CREATE_NEW_SEGMENT_STEP:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/VideoInformation;->seekToRelative(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbwIm3DkxxR7WHYWl-bNMPhKuwM(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$vr0vQwOAfNafZUw9kSA1i12DJ5I()V
    .registers 2

    .line 87
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_CREATE_NEW_SEGMENT_STEP:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/VideoInformation;->seekToRelative(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$wLkErmQfkNJmyYQKPvwxJyfi8oU(Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 162
    invoke-interface {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;->apply()V

    .line 163
    new-instance p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Landroid/content/res/ColorStateList;

    const v1, 0x101009e

    filled-new-array {v1}, [I

    move-result-object v1

    filled-new-array {v1}, [[I

    move-result-object v1

    const v2, 0x33ffffff

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->rippleColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    .line 74
    invoke-direct/range {p0 .. p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/2addr v1, v1

    .line 77
    iput v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->touchSlopSquare:I

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    const-string v3, "youtube_sb_new_segment"

    invoke-static {p1, v2, v3}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    new-instance v4, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda1;-><init>()V

    const-string v5, "Rewind button clicked"

    const-string v2, "youtube_sb_new_segment_rewind"

    const-string v3, "youtube_sb_backward"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initializeButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;)V

    .line 91
    new-instance v4, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda2;-><init>()V

    const-string v5, "Forward button clicked"

    const-string v2, "youtube_sb_new_segment_forward"

    const-string v3, "youtube_sb_forward"

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initializeButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;)V

    .line 99
    new-instance v4, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda3;-><init>()V

    const-string v5, "Adjust button clicked"

    const-string v2, "youtube_sb_new_segment_adjust"

    const-string v3, "youtube_sb_adjust"

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initializeButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;)V

    .line 107
    new-instance v4, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda4;-><init>()V

    const-string v5, "Compare button clicked"

    const-string v2, "youtube_sb_new_segment_compare"

    const-string v3, "youtube_sb_compare"

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initializeButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;)V

    .line 115
    new-instance v4, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda5;-><init>()V

    const-string v5, "Edit button clicked"

    const-string v2, "youtube_sb_new_segment_edit"

    const-string v3, "youtube_sb_edit"

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initializeButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;)V

    .line 123
    new-instance v4, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda6;-><init>()V

    const-string v5, "Publish button clicked"

    const-string v2, "youtube_sb_new_segment_publish"

    const-string v3, "youtube_sb_publish"

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initializeButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;)V

    .line 131
    const-string v1, "brand_interaction_default_bottom_margin"

    invoke-static {v1}, Lcom/gold/extension/shared/ResourceUtils;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/gold/extension/youtube/sponsorblock/ui/SkipSponsorButton;->SB_BUTTON_EXTRA_VERTICAL_PADDING:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->defaultBottomMargin:I

    .line 133
    const-string v1, "brand_interaction_cta_bottom_margin"

    invoke-static {v1}, Lcom/gold/extension/shared/ResourceUtils;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->ctaBottomMargin:I

    return-void
.end method

.method private clampTranslationToBounds()V
    .registers 9

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_9

    goto :goto_4e

    .line 276
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4e

    if-nez v1, :cond_16

    goto :goto_4e

    .line 280
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    neg-int v5, v4

    int-to-float v5, v5

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v2

    int-to-float v2, v7

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    neg-int v4, v3

    int-to-float v4, v4

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 284
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 285
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method private initializeButton(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;)V
    .registers 7

    .line 149
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    invoke-static {p1, v0, p2}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    .line 152
    sget-object p1, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    .line 154
    sget-boolean p2, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-eqz p2, :cond_13

    goto :goto_24

    .line 156
    :cond_13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_bold"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 152
    :goto_24
    invoke-static {p1, p3}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    sget-object p2, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->rippleColorStateList:Landroid/content/res/ColorStateList;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda7;

    invoke-direct {p1, p4, p5}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout$ButtonOnClickHandlerFunction;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private saveRelativePosition()V
    .registers 9

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_46

    .line 290
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_46

    .line 293
    :cond_15
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SB_NEW_SEGMENT_PANEL_POSITION:Lcom/gold/extension/shared/settings/LongSetting;

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 293
    invoke-virtual {v1, p0}, Lcom/gold/extension/shared/settings/LongSetting;->save(Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public hideWithAnimation()V
    .registers 3

    const-wide/16 v0, 0x64

    .line 303
    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/ui/ViewAnimations;->fadeOut(Landroid/view/View;J)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    const/4 v2, 0x1

    if-eq v0, v2, :cond_40

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_40

    return v1

    .line 226
    :cond_11
    iget-boolean v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->isDragging:Z

    if-nez v0, :cond_3d

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->dragStartX:F

    sub-float/2addr v0, v1

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->dragStartY:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    .line 229
    iget p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->touchSlopSquare:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_3d

    .line 230
    iput-boolean v2, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->isDragging:Z

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3c
    return v2

    .line 238
    :cond_3d
    iget-boolean p0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->isDragging:Z

    return p0

    .line 241
    :cond_40
    iput-boolean v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->isDragging:Z

    return v1

    .line 219
    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->dragStartX:F

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->dragStartY:F

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initialTransX:F

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initialTransY:F

    .line 223
    iput-boolean v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->isDragging:Z

    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 189
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_56

    .line 194
    iget-boolean p1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->isDragging:Z

    if-nez p1, :cond_56

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_56

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_56

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_56

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lez p2, :cond_56

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lez p2, :cond_56

    .line 197
    sget-object p2, Lcom/gold/extension/youtube/settings/Settings;->SB_NEW_SEGMENT_PANEL_POSITION:Lcom/gold/extension/shared/settings/LongSetting;

    invoke-virtual {p2}, Lcom/gold/extension/shared/settings/LongSetting;->get()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const/16 p4, 0x20

    shr-long p4, p2, p4

    long-to-int p4, p4

    .line 200
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr p4, p5

    invoke-virtual {p0, p4}, Landroid/view/View;->setTranslationX(F)V

    long-to-int p2, p2

    .line 201
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 202
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->clampTranslationToBounds()V

    :cond_56
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    return v1

    .line 261
    :cond_f
    iput-boolean v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->isDragging:Z

    return v2

    .line 251
    :cond_12
    iget v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initialTransX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->dragStartX:F

    sub-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 252
    iget v0, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->initialTransY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->dragStartY:F

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return v2

    .line 255
    :cond_2d
    iput-boolean v1, p0, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->isDragging:Z

    .line 256
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->clampTranslationToBounds()V

    .line 257
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->saveRelativePosition()V

    .line 258
    invoke-virtual {p0}, Lcom/gold/extension/youtube/sponsorblock/ui/NewSegmentLayout;->performClick()Z

    return v2
.end method

.method public performClick()Z
    .registers 1

    .line 212
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public showWithAnimation()V
    .registers 3

    const-wide/16 v0, 0x64

    .line 299
    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/ui/ViewAnimations;->fadeIn(Landroid/view/View;J)V

    return-void
.end method

.method public updateLayout()V
    .registers 4

    .line 171
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->SB_SQUARE_LAYOUT:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_14

    const/4 v2, 0x0

    goto :goto_16

    :cond_14
    const/16 v2, 0xc

    .line 177
    :goto_16
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 178
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 181
    const-string v2, "skip_ad_button_background_color"

    invoke-static {v2}, Lcom/gold/extension/shared/ResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_31

    .line 182
    :cond_2e
    sget v0, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    int-to-float v0, v0

    .line 183
    :goto_31
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 184
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
