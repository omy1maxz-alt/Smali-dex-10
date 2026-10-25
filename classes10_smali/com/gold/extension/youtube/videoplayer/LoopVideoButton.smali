.class public Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;
.super Ljava/lang/Object;
.source "LoopVideoButton.java"


# static fields
.field private static final LOOP_VIDEO_OFF:I

.field private static final LOOP_VIDEO_ON:I

.field private static final LOOP_VIDEO_RANGE:I

.field private static legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final videoRangeInvalidTimeStringName:Ljava/lang/String; = "youtube_loop_video_range_invalid_time"


# direct methods
.method public static synthetic $r8$lambda$1--HG3pVc3XpXwQT6JSl_a8kKLE()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$GAwEp-I2JmoLf6oE07BSkiiWLeg()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->updateButtonIcon()V

    return-void
.end method

.method public static synthetic $r8$lambda$J9AOl5jIUcaVpBtkcZEv_4Rb8_s(Landroid/view/View;)Z
    .registers 1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->showRangeDialog(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Kazfk05epOxhdNKId7bWlHSyxMI()Ljava/lang/String;
    .registers 1

    .line 185
    const-string v0, "showRangeDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Kef8Sz4OjUCMNovfc3nm2LdLKyc(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;ILandroid/widget/ImageView;)V
    .registers 3

    .line 269
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setIcon(I)V

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    .line 271
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 272
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 273
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    .line 274
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$LRDDLmwPQAPCwLFvFi_WEdsgwb8()V
    .registers 2

    .line 170
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->clearRange()V

    .line 171
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->onRangeCleared()V

    return-void
.end method

.method public static synthetic $r8$lambda$YBXwVRbw0dUWXLpWA9A2Ce8BYiY(Landroid/widget/EditText;Landroid/widget/EditText;J)V
    .registers 4

    .line 165
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {p0, p1, p2, p3}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->applyRange(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$aLe0Ipr_xb3I2pv_COqHWhKOfPU(Landroid/view/View;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->handleShortClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bKErnqF5IPpH114mCXKIWq6mtsk()Ljava/lang/String;
    .registers 1

    .line 95
    const-string v0, "initializeButton failure"

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smformatDigitsAsTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->formatDigitsAsTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 50
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->incrementUpperButtonCount()V

    .line 58
    :cond_f
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    .line 60
    sget-boolean v1, Lcom/gold/extension/youtube/patches/LegacyPlayerControlsPatch;->RESTORE_OLD_PLAYER_BUTTONS:Z

    if-eqz v1, :cond_18

    .line 61
    const-string v2, "youtube_loop_video_button_on"

    goto :goto_1a

    .line 62
    :cond_18
    const-string v2, "youtube_loop_video_button_on_bold"

    .line 58
    :goto_1a
    invoke-static {v0, v2}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->LOOP_VIDEO_ON:I

    if-eqz v1, :cond_25

    .line 66
    const-string v2, "youtube_loop_video_button_off"

    goto :goto_27

    .line 67
    :cond_25
    const-string v2, "youtube_loop_video_button_off_bold"

    .line 63
    :goto_27
    invoke-static {v0, v2}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->LOOP_VIDEO_OFF:I

    if-eqz v1, :cond_32

    .line 71
    const-string v1, "youtube_loop_video_button_range"

    goto :goto_34

    .line 72
    :cond_32
    const-string v1, "youtube_loop_video_button_range_bold"

    .line 68
    :goto_34
    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifierOrThrow(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->LOOP_VIDEO_RANGE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAutoColonWatcher(Landroid/widget/EditText;)V
    .registers 2

    .line 361
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private static animateButtonTransition(Landroid/view/View;I)V
    .registers 6

    .line 255
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-nez v0, :cond_5

    return-void

    .line 258
    :cond_5
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_34

    check-cast p0, Landroid/widget/ImageView;

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3e99999a  # 0.3f

    .line 264
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f933333  # 1.15f

    .line 265
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 267
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p1, p0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;ILandroid/widget/ImageView;)V

    .line 268
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 259
    :cond_34
    invoke-virtual {v0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setIcon(I)V

    return-void
.end method

.method private static applyRange(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    .line 190
    invoke-static {p0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    .line 191
    const-string v4, "youtube_loop_video_range_invalid_time"

    if-gez p0, :cond_14

    .line 192
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2a

    cmp-long p1, p2, v2

    if-gtz p1, :cond_45

    .line 200
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 205
    :cond_2a
    invoke-static {p1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->parseTime(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long p1, v5, v2

    if-gez p1, :cond_3a

    .line 207
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    :cond_3a
    cmp-long p1, p2, v2

    if-lez p1, :cond_44

    cmp-long p1, v5, p2

    if-ltz p1, :cond_44

    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    move-wide p2, v5

    :cond_45
    :goto_45
    cmp-long p1, p2, v0

    if-gtz p1, :cond_51

    .line 219
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 224
    :cond_51
    sget-object p1, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeVideoId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5d

    const/4 p1, 0x0

    .line 225
    invoke-static {p1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->setLoopButton(Z)V

    .line 228
    :cond_5d
    invoke-static {v0, v1, p2, p3, p0}, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->setRange(JJZ)V

    .line 229
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 231
    invoke-static {v0, v1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->formatTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->formatTime(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 230
    const-string p1, "youtube_loop_video_range_toast_on"

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->updateButtonIcon()V

    return-void
.end method

.method private static buildFieldsLayout(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;)Landroid/widget/LinearLayout;
    .registers 8

    .line 394
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 395
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 396
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    const-string v2, "youtube_loop_video_range_label_start"

    .line 401
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-static {p0, v2, p1, v1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->buildLabeledField(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;Z)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    const-string p1, "youtube_loop_video_range_label_end"

    .line 403
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 402
    invoke-static {p0, p1, p2, v1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->buildLabeledField(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;Z)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static buildLabeledField(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;Z)Landroid/widget/LinearLayout;
    .registers 11

    .line 409
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 411
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_15

    .line 414
    sget p3, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    goto :goto_17

    :cond_15
    sget p3, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    :goto_17
    const/4 v5, 0x0

    invoke-virtual {v2, v5, p3, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 415
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 418
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000  # 13.0f

    .line 419
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 420
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 424
    sget v2, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    invoke-virtual {p1, v2, v5, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 425
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v5, 0x41200000  # 10.0f

    .line 428
    invoke-static {v5}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 429
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getEditTextBackground()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 432
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 433
    invoke-virtual {v2, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 434
    sget p0, Lcom/gold/extension/shared/ui/Dim;->dp12:I

    sget p1, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v2, p0, p1, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 435
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 444
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static buildTimeEditText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .registers 4

    .line 342
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 p0, 0x2

    .line 344
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setInputType(I)V

    .line 347
    const-string p0, "0123456789:"

    invoke-static {p0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 348
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, -0x777778

    .line 349
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHintTextColor(I)V

    const/4 p0, 0x0

    .line 350
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 351
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 352
    invoke-static {v0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->addAutoColonWatcher(Landroid/widget/EditText;)V

    .line 353
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_40

    .line 354
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_40
    return-object v0
.end method

.method private static formatDigitsAsTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 386
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    :cond_12
    const/16 v2, 0x3a

    .line 387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    :cond_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 390
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatTime(J)Ljava/lang/String;
    .registers 8

    const-wide/16 v0, 0x3e8

    .line 304
    div-long/2addr p0, v0

    const-wide/16 v0, 0xe10

    .line 305
    div-long v2, p0, v0

    .line 306
    rem-long v0, p0, v0

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    .line 307
    rem-long/2addr p0, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2c

    .line 309
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v2, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v4, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 311
    :cond_2c
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTargetIcon()I
    .registers 1

    .line 236
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    sget v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->LOOP_VIDEO_OFF:I

    return v0

    .line 237
    :cond_f
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->isRangeActive()Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->LOOP_VIDEO_RANGE:I

    return v0

    .line 238
    :cond_18
    sget v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->LOOP_VIDEO_ON:I

    return v0
.end method

.method private static handleShortClick(Landroid/view/View;)V
    .registers 3

    .line 122
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-nez v0, :cond_5

    return-void

    .line 123
    :cond_5
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 125
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 126
    invoke-static {v1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->setLoopButton(Z)V

    if-nez v0, :cond_1c

    .line 129
    const-string v0, "youtube_loop_video_button_toast_on"

    goto :goto_1e

    .line 130
    :cond_1c
    const-string v0, "youtube_loop_video_button_toast_off"

    .line 128
    :goto_1e
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->getTargetIcon()I

    move-result v0

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->animateButtonTransition(Landroid/view/View;I)V

    return-void
.end method

.method public static initializeLegacyButton(Landroid/view/View;)V
    .registers 9

    .line 81
    :try_start_0
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    const-string v2, "youtube_loop_video_button"

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 86
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/gold/extension/youtube/videoplayer/CopyVideoLinkButton$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V

    new-instance v6, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda0;-><init>()V

    new-instance v7, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda1;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton$PlayerControlButtonStatus;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    sput-object v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    .line 93
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->updateButtonIcon()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception v0

    move-object p0, v0

    .line 95
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onRangeCleared()V
    .registers 1

    .line 251
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static parseTime(Ljava/lang/String;)J
    .registers 13

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_d

    return-wide v1

    .line 320
    :cond_d
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 323
    :try_start_13
    array-length v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1f

    .line 325
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_50

    .line 326
    :cond_1f
    array-length v0, p0

    const-wide/16 v5, 0x3c

    const/4 v7, 0x2

    if-ne v0, v7, :cond_34

    .line 327
    aget-object v0, p0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v5

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v7

    goto :goto_50

    .line 328
    :cond_34
    array-length v0, p0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_54

    .line 329
    aget-object v0, p0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    aget-object v0, p0, v4

    .line 330
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v5

    add-long/2addr v8, v3

    aget-object p0, p0, v7

    .line 331
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_4f} :catch_54

    add-long/2addr v0, v8

    :goto_50
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_54
    :cond_54
    return-wide v1
.end method

.method public static resetLoopButton()V
    .registers 1

    .line 111
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO_BUTTON:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DO_NOT_REMEMBER_LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    .line 112
    invoke-static {v0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->setLoopButton(Z)V

    :cond_1c
    return-void
.end method

.method public static setLoopButton(Z)V
    .registers 3

    .line 100
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->LOOP_VIDEO:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    if-nez p0, :cond_e

    .line 103
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->clearRange()V

    :cond_e
    return-void
.end method

.method public static setVisibility(ZZ)V
    .registers 3

    .line 299
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0, p1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibility(ZZ)V

    :cond_7
    if-eqz p0, :cond_c

    .line 300
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->updateButtonIcon()V

    :cond_c
    return-void
.end method

.method public static setVisibilityImmediate(Z)V
    .registers 2

    .line 291
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityImmediate(Z)V

    :cond_7
    if-eqz p0, :cond_c

    .line 292
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->updateButtonIcon()V

    :cond_c
    return-void
.end method

.method public static setVisibilityNegatedImmediate()V
    .registers 1

    .line 284
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setVisibilityNegatedImmediate()V

    :cond_7
    return-void
.end method

.method private static showRangeDialog(Landroid/content/Context;)V
    .registers 16

    .line 140
    :try_start_0
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v0

    .line 141
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoLength()J

    move-result-wide v2

    .line 143
    invoke-static {}, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->isRangeActive()Z

    move-result v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_7c

    .line 144
    const-string v5, ""

    if-eqz v4, :cond_17

    .line 145
    :try_start_10
    sget-wide v0, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeStartMs:J

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_17
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_22

    .line 146
    invoke-static {v0, v1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v5

    :goto_23
    if-eqz v4, :cond_2b

    .line 148
    sget-wide v4, Lcom/gold/extension/youtube/patches/LoopVideoPatch;->rangeEndMs:J

    invoke-static {v4, v5}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    .line 151
    :cond_2b
    const-string v1, "youtube_loop_video_range_hint_start"

    .line 152
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {p0, v1, v0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->buildTimeEditText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    .line 155
    const-string v1, "youtube_loop_video_range_hint_end"

    .line 156
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {p0, v1, v5}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->buildTimeEditText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v1

    .line 159
    const-string v4, "youtube_loop_video_range_dialog_title"

    .line 161
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "youtube_loop_video_range_set"

    .line 164
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;J)V

    new-instance v11, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda4;

    invoke-direct {v11}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "youtube_loop_video_range_clear"

    .line 168
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda5;

    invoke-direct {v13}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda5;-><init>()V

    const/4 v14, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 159
    invoke-static/range {v5 .. v14}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 177
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/Dialog;

    .line 178
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/widget/LinearLayout;

    .line 181
    invoke-static {v5, v0, v1}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->buildFieldsLayout(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 183
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_7b} :catch_7c

    return-void

    :catch_7c
    move-exception v0

    move-object p0, v0

    .line 185
    new-instance v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static updateButtonIcon()V
    .registers 2

    .line 242
    sget-object v0, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->legacy:Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;

    if-nez v0, :cond_5

    return-void

    .line 244
    :cond_5
    invoke-static {}, Lcom/gold/extension/youtube/videoplayer/LoopVideoButton;->getTargetIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/videoplayer/LegacyPlayerControlButton;->setIcon(I)V

    return-void
.end method
