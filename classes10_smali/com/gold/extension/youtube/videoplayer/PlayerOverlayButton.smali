.class public Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;
.super Ljava/lang/Object;
.source "PlayerOverlayButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;,
        Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;,
        Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;
    }
.end annotation


# static fields
.field private static final HIDE_FULLSCREEN_BUTTON_ENABLED:Ljava/lang/Boolean;

.field private static final buttonControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;",
            ">;"
        }
    .end annotation
.end field

.field private static final chapterTitleContainer:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

.field private static skipFirstExceptionLog:Z = true

.field private static final videoHeadingContainer:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

.field private static ytSourceButtonRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UfnYgzaz1jTaM2s8LS8FIVMZaKw(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown button parent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetHIDE_FULLSCREEN_BUTTON_ENABLED()Ljava/lang/Boolean;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->HIDE_FULLSCREEN_BUTTON_ENABLED:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetbuttonControllers()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->buttonControllers:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetchapterTitleContainer()Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->chapterTitleContainer:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetskipFirstExceptionLog()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->skipFirstExceptionLog:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetytSourceButtonRef()Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->ytSourceButtonRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputskipFirstExceptionLog(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->skipFirstExceptionLog:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetButtonWidthPercentage(I)F
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->getButtonWidthPercentage(I)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 223
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->HIDE_FULLSCREEN_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->HIDE_FULLSCREEN_BUTTON_ENABLED:Ljava/lang/Boolean;

    .line 226
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

    const-string v1, "player_video_heading"

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->videoHeadingContainer:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

    .line 230
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

    const-string v1, "time_bar_chapter_title_container"

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->chapterTitleContainer:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->ytSourceButtonRef:Ljava/lang/ref/WeakReference;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->buttonControllers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addButton(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/widget/ImageView;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 298
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->updateRefsFromSourceButton(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 301
    :cond_8
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setId(I)V

    .line 303
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 304
    sget-object p0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    invoke-static {p0, p1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-virtual {v2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 309
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 311
    sget-object p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->buttonControllers:Ljava/util/List;

    new-instance p1, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;

    new-instance p2, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$$ExternalSyntheticLambda1;

    invoke-direct {p2, v2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {p1, v2, p2, v1}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;-><init>(Landroid/view/View;Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton-IA;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static addButtonWithTextOverlay(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/widget/TextView;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 330
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->updateRefsFromSourceButton(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 334
    :cond_8
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 335
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setId(I)V

    const/16 p0, 0x11

    .line 336
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p0, 0x41600000  # 14.0f

    .line 337
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p0, -0x1

    .line 338
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    const-string p0, "sans-serif-condensed"

    const/4 v3, 0x1

    invoke-static {p0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 340
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 342
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 344
    sget-object p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->buttonControllers:Ljava/util/List;

    new-instance p1, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;

    new-instance p2, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$$ExternalSyntheticLambda2;

    invoke-direct {p2, v2}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextView;)V

    invoke-direct {p1, v2, p2, v1}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$PlayerOverlayButtonController;-><init>(Landroid/view/View;Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$SetViewBackgroundInterface;Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton-IA;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private static getButtonWidthPercentage(I)F
    .registers 2

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_c
    const p0, 0x3f333333  # 0.7f

    return p0

    :cond_10
    const p0, 0x3f4ccccd  # 0.8f

    return p0

    :cond_14
    const p0, 0x3f666666  # 0.9f

    return p0
.end method

.method public static initializeHeadingFromUpperButton(Landroid/view/View;)V
    .registers 3

    .line 254
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    check-cast p0, Landroid/view/ViewGroup;

    .line 258
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->videoHeadingContainer:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->updateContainerRef(Landroid/view/View;)V

    .line 259
    sget p0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->buttonWidth:I

    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->getTotalUpperButtonCount()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->updateMargin(II)V

    :cond_1b
    return-void
.end method

.method private static updateRefsFromSourceButton(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 264
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/view/ViewGroup;

    .line 271
    sget-object v1, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->ytSourceButtonRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_21

    .line 272
    sget-object v1, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->buttonControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 273
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->ytSourceButtonRef:Ljava/lang/ref/WeakReference;

    .line 277
    :cond_21
    sget-object p0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton;->chapterTitleContainer:Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;

    invoke-virtual {p0, v0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$MarginAdjustableContainer;->updateContainerRef(Landroid/view/View;)V

    return-object v0

    .line 267
    :cond_27
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/videoplayer/PlayerOverlayButton$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x0

    return-object p0
.end method
