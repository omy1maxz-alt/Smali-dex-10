.class public Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;
.super Ljava/lang/Object;
.source "LegacyPlayerControlButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;
    }
.end annotation


# static fields
.field public static final buttonWidth:I

.field public static final fadeInDuration:I

.field private static final fadeOutDuration:I

.field private static totalUpperButtonCount:I


# instance fields
.field private final buttonRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final containerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final enabledStatus:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;

.field private isVisible:Z

.field private lastTimeSetVisible:J

.field private final textOverlayRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$T-9np5IGxkVgkc8jBJRIQmlUjv0(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->lambda$new$2(Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bivIZjhhvXBsNdr8VwNRD0c_kxU(Landroid/view/View;)V
    .registers 2

    const/16 v0, 0x8

    .line 202
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cMPGP4VARRjyg8c2Bxk7GZ51w-w()Ljava/lang/String;
    .registers 1

    .line 205
    const-string v0, "setVisibilityNegatedImmediate failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$deP3WCGGCvdMaOWKPK2m8SXUVxA(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->lambda$new$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTsN3QiNcxiq6jOxlMCuYwCoArk(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->lambda$setVisibilityImmediate$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$jlV8lmI2JWXe3P1byVD8CrJ0rjw()Ljava/lang/String;
    .registers 1

    .line 270
    const-string v0, "privateSetVisibility failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ojoW6rDtUakRMjT1aHsPb6_aPrI(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->lambda$new$1(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rq4hh1u48bnYqdgJQG6_C6UO2AY()Ljava/lang/String;
    .registers 1

    .line 163
    const-string v0, "animateIcon failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$rsC8radKeM8lM3Y3iUxoSkRgbp8(Landroid/view/View;)V
    .registers 2

    const/16 v0, 0x8

    .line 263
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-string v0, "controls_overlay_action_button_size"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getDimension(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->buttonWidth:I

    .line 47
    const-string v0, "fade_duration_fast"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeInDuration:I

    .line 48
    const-string v0, "fade_duration_scheduled"

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeOutDuration:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 17
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Landroid/view/View$OnLongClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 77
    invoke-direct/range {v0 .. v8}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 10
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Landroid/view/View$OnLongClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1, p2}, Lcom/gold/extension/shared/Utils;->getChildViewByResourceName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->containerRef:Ljava/lang/ref/WeakReference;

    .line 101
    invoke-static {p1, p3}, Lcom/gold/extension/shared/Utils;->getChildViewByResourceName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    if-eqz p5, :cond_30

    .line 104
    sget-object p3, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    .line 105
    sget-boolean v0, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-eqz v0, :cond_20

    goto :goto_26

    .line 107
    :cond_20
    const-string v0, "_bold"

    invoke-virtual {p5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 104
    :goto_26
    invoke-static {p3, p5}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p3

    .line 109
    move-object p5, p2

    check-cast p5, Landroid/widget/ImageView;

    invoke-virtual {p5, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :cond_30
    new-instance p3, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p7}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p8, :cond_42

    .line 122
    new-instance p3, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p8}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 128
    :cond_42
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->buttonRef:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_52

    .line 132
    invoke-static {p1, p4}, Lcom/gold/extension/shared/Utils;->getChildViewByResourceName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_53

    :cond_52
    const/4 p1, 0x0

    .line 134
    :goto_53
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->textOverlayRef:Ljava/lang/ref/WeakReference;

    .line 136
    iput-object p6, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->enabledStatus:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->isVisible:Z

    .line 144
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object p1

    new-instance p2, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda8;-><init>(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;)V

    invoke-virtual {p1, p2}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static getDialogBackgroundColor()I
    .registers 1

    .line 355
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "yt_black1"

    goto :goto_b

    :cond_9
    const-string v0, "yt_white1"

    .line 354
    :goto_b
    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTotalUpperButtonCount()I
    .registers 1

    .line 60
    sget v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->totalUpperButtonCount:I

    return v0
.end method

.method public static incrementUpperButtonCount()V
    .registers 1

    .line 56
    sget v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->totalUpperButtonCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->totalUpperButtonCount:I

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    .line 114
    invoke-virtual {p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->animateIcon()V

    if-eqz p1, :cond_8

    .line 116
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z
    .registers 3

    .line 123
    invoke-virtual {p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->animateIcon()V

    .line 124
    invoke-interface {p1, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$2(Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->playerTypeChanged(Lcom/gold/extension/youtube/shared/PlayerType;)V

    .line 146
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$setVisibilityImmediate$6()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->privateSetVisibility(ZZ)V

    return-void
.end method

.method private playerTypeChanged(Lcom/gold/extension/youtube/shared/PlayerType;)V
    .registers 3

    .line 278
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 279
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MINIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq p1, v0, :cond_e

    invoke-virtual {p1}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_18

    .line 283
    :cond_e
    iget-object p1, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->containerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_19

    :goto_18
    return-void

    .line 288
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 290
    iget-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->isVisible:Z

    if-eqz v0, :cond_36

    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->enabledStatus:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;

    invoke-interface {p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;->buttonEnabled()Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x0

    .line 291
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000  # 1.0f

    .line 292
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_36
    const/16 p0, 0x8

    .line 294
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private privateSetVisibility(ZZ)V
    .registers 5

    .line 227
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 229
    iget-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->isVisible:Z

    if-ne v0, p1, :cond_9

    goto/16 :goto_7d

    .line 230
    :cond_9
    iput-boolean p1, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->isVisible:Z

    if-eqz p1, :cond_13

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->lastTimeSetVisible:J

    .line 236
    :cond_13
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->containerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1e

    goto :goto_7d

    :cond_1e
    const/4 v1, 0x0

    if-eqz p1, :cond_51

    .line 241
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->enabledStatus:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;

    invoke-interface {p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;->buttonEnabled()Z

    move-result p0

    if-eqz p0, :cond_51

    .line 242
    invoke-static {v0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->initializeHeadingFromUpperButton(Landroid/view/View;)V

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p1, 0x0

    .line 246
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000  # 1.0f

    if-eqz p2, :cond_4d

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 250
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget p1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeInDuration:I

    int-to-long p1, p1

    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 254
    :cond_4d
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 256
    :cond_51
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_7d

    .line 257
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_78

    .line 261
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget p1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeOutDuration:I

    int-to-long p1, p1

    .line 262
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    .line 263
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_78
    const/16 p0, 0x8

    .line 266
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    :cond_7d
    :goto_7d
    return-void

    :catch_7e
    move-exception p0

    .line 270
    new-instance p1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public animateIcon()V
    .registers 2

    .line 155
    :try_start_0
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->buttonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 156
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    check-cast p0, Landroid/widget/ImageView;

    .line 157
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 158
    instance-of v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1b

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 159
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception p0

    .line 163
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public hide()V
    .registers 2

    .line 299
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 300
    iget-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->isVisible:Z

    if-nez v0, :cond_8

    goto :goto_15

    :cond_8
    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->isVisible:Z

    .line 305
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->containerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_16

    :goto_15
    return-void

    :cond_16
    const/16 v0, 0x8

    .line 307
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 315
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 317
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->buttonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 318
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    check-cast p0, Landroid/widget/ImageView;

    .line 319
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, -0x1

    .line 320
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1c
    return-void
.end method

.method public setImageAlpha(I)V
    .registers 3

    .line 329
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 331
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->buttonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 332
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    check-cast p0, Landroid/widget/ImageView;

    .line 333
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_14
    return-void
.end method

.method public setTextOverlay(Ljava/lang/CharSequence;)V
    .registers 2

    .line 342
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 344
    iget-object p0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->textOverlayRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_10

    .line 346
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public setVisibility(ZZ)V
    .registers 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    return-void

    .line 222
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->privateSetVisibility(ZZ)V

    return-void
.end method

.method public setVisibilityImmediate(Z)V
    .registers 2

    if-eqz p1, :cond_b

    .line 213
    new-instance p1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    const/4 p1, 0x0

    .line 215
    invoke-direct {p0, p1, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->privateSetVisibility(ZZ)V

    return-void
.end method

.method public setVisibilityNegatedImmediate()V
    .registers 9

    .line 169
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 170
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;->PLAYER_CONTROLS_VISIBILITY_HIDDEN:Lcom/gold/extension/youtube/shared/PlayerControlsVisibility;

    if-eq v0, v1, :cond_c

    goto :goto_1f

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->enabledStatus:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;

    invoke-interface {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;->buttonEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1f

    .line 179
    :cond_15
    iget-object v0, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->containerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_20

    :goto_1f
    return-void

    :cond_20
    const/4 v1, 0x0

    .line 184
    iput-boolean v1, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->isVisible:Z

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 192
    sget v2, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->fadeInDuration:I

    int-to-long v2, v2

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->lastTimeSetVisible:J

    sub-long/2addr v4, v6

    .line 192
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_44

    const/16 p0, 0x8

    .line 196
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_44
    const/4 p0, 0x0

    .line 200
    invoke-virtual {v1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 201
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    .line 202
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p0

    .line 205
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
