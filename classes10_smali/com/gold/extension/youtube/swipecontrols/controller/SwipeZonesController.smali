.class public final Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;
.super Ljava/lang/Object;
.source "SwipeZonesController.kt"


# instance fields
.field private final _20dp:I

.field private final _40dp:I

.field private final _80dp:I

.field private final fallbackScreenRect:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final host:Landroid/app/Activity;

.field private playerRect:Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

.field private final sizeAdjustableOverlayId:I


# direct methods
.method public static synthetic $r8$lambda$vW8LeJzQ3sBTAi4ccDRnWSCds-c(Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .registers 11

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->maybeAttachPlayerBoundsListener$lambda$0$0(Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->host:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->fallbackScreenRect:Lkotlin/jvm/functions/Function0;

    const/16 p2, 0x14

    const/4 v0, 0x1

    .line 49
    invoke-static {p2, p1, v0}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;->applyDimension(ILandroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->_20dp:I

    const/16 p2, 0x28

    .line 54
    invoke-static {p2, p1, v0}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;->applyDimension(ILandroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->_40dp:I

    const/16 p2, 0x50

    .line 59
    invoke-static {p2, p1, v0}, Lcom/gold/extension/youtube/swipecontrols/misc/SwipeControlsUtilsKt;->applyDimension(ILandroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->_80dp:I

    .line 65
    sget-object p2, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    const-string v0, "inset_controls_overlay_wrapper"

    .line 64
    invoke-static {p1, p2, v0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Landroid/content/Context;Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->sizeAdjustableOverlayId:I

    return-void
.end method

.method private final getEffectiveSwipeRect()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;
    .registers 7

    .line 78
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->maybeAttachPlayerBoundsListener()V

    .line 79
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->playerRect:Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_13

    :cond_b
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->fallbackScreenRect:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    .line 80
    :goto_13
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    .line 81
    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getX()I

    move-result v2

    iget v3, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->_20dp:I

    add-int/2addr v2, v3

    .line 82
    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getY()I

    move-result v3

    iget v4, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->_40dp:I

    add-int/2addr v3, v4

    .line 83
    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->_20dp:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 84
    invoke-virtual {v0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getHeight()I

    move-result v0

    iget v5, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->_20dp:I

    sub-int/2addr v0, v5

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->_80dp:I

    sub-int/2addr v0, p0

    .line 80
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;-><init>(IIII)V

    return-object v1
.end method

.method private final maybeAttachPlayerBoundsListener()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->playerRect:Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    if-eqz v0, :cond_5

    goto :goto_1a

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->host:Landroid/app/Activity;

    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->sizeAdjustableOverlayId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 141
    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->onPlayerViewLayout(Landroid/view/View;)V

    .line 142
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private static final maybeAttachPlayerBoundsListener$lambda$0$0(Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .registers 11

    .line 143
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->onPlayerViewLayout(Landroid/view/View;)V

    return-void
.end method

.method private final onPlayerViewLayout(Landroid/view/View;)V
    .registers 7

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 159
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 159
    invoke-direct {v1, v2, v3, v0, p1}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;-><init>(IIII)V

    iput-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->playerRect:Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    return-void
.end method


# virtual methods
.method public final getBrightness()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;
    .registers 5

    .line 108
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getEffectiveSwipeRect()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getWidth()I

    move-result v0

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_ZONE_WIDTH:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 110
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    .line 111
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getLeft()I

    move-result v2

    .line 112
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getTop()I

    move-result v3

    .line 114
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getHeight()I

    move-result p0

    .line 110
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;-><init>(IIII)V

    return-object v1
.end method

.method public final getSpeed()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;
    .registers 5

    .line 124
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getEffectiveSwipeRect()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getHeight()I

    move-result v0

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_SPEED_ZONE_HEIGHT:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v2, 0x4b

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 126
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    .line 127
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getLeft()I

    move-result v2

    .line 128
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getTop()I

    move-result v3

    .line 129
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getWidth()I

    move-result p0

    .line 126
    invoke-direct {v1, v2, v3, p0, v0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;-><init>(IIII)V

    return-object v1
.end method

.method public final getVolume()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;
    .registers 5

    .line 93
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/controller/SwipeZonesController;->getEffectiveSwipeRect()Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getWidth()I

    move-result v0

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->SWIPE_ZONE_WIDTH:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 95
    new-instance v1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    .line 96
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getRight()I

    move-result v2

    sub-int/2addr v2, v0

    .line 97
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getTop()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->getHeight()I

    move-result p0

    .line 95
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;-><init>(IIII)V

    return-object v1
.end method
