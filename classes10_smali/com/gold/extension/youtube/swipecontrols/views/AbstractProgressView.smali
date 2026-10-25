.class public abstract Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;
.super Landroid/view/View;
.source "SwipeControlsOverlayLayout.kt"


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private displayText:Ljava/lang/String;

.field private final fillBackgroundPaint:Landroid/graphics/Paint;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private isBrightness:Z

.field private final isMinimalStyle:Z

.field private maxProgress:I

.field private final overlayTextColor:I

.field private final overlayTextSize:I

.field private progress:I

.field private final progressPaint:Landroid/graphics/Paint;

.field private final textBounds:Landroid/graphics/Rect;

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V
    .registers 17

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v1, p9

    .line 281
    invoke-direct {p0, p1, p8, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 284
    iput-boolean p3, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle:Z

    .line 287
    iput p6, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->overlayTextColor:I

    .line 288
    iput p7, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->overlayTextSize:I

    .line 309
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    .line 307
    invoke-static/range {v0 .. v6}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->createPaint$default(Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;ILandroid/graphics/Paint$Style;Landroid/graphics/Paint$Cap;FILjava/lang/Object;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->backgroundPaint:Landroid/graphics/Paint;

    .line 313
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 314
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/high16 p3, 0x40c00000  # 6.0f

    .line 315
    invoke-static {p3}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p3

    .line 311
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->createPaint(ILandroid/graphics/Paint$Style;Landroid/graphics/Paint$Cap;F)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->progressPaint:Landroid/graphics/Paint;

    move v1, p5

    .line 317
    invoke-static/range {v0 .. v6}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->createPaint$default(Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;ILandroid/graphics/Paint$Style;Landroid/graphics/Paint$Cap;FILjava/lang/Object;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->fillBackgroundPaint:Landroid/graphics/Paint;

    .line 321
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 322
    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float p3, p7

    .line 324
    invoke-static {p3}, Lcom/gold/extension/youtube/swipecontrols/views/SwipeControlsOverlayLayoutKt;->toDisplayPixels(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 321
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->textPaint:Landroid/graphics/Paint;

    .line 328
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->textBounds:Landroid/graphics/Rect;

    const/16 p1, 0x64

    .line 331
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->maxProgress:I

    .line 332
    const-string p1, "0"

    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->displayText:Ljava/lang/String;

    .line 333
    iput-boolean p2, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isBrightness:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 24

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_b

    :cond_9
    move-object/from16 v10, p8

    :goto_b
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    move v11, v0

    :goto_11
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    goto :goto_21

    :cond_1e
    move/from16 v11, p9

    goto :goto_11

    .line 281
    :goto_21
    invoke-direct/range {v2 .. v11}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;-><init>(Landroid/content/Context;IZIIIILandroid/util/AttributeSet;I)V

    return-void
.end method

.method private final createPaint(ILandroid/graphics/Paint$Style;Landroid/graphics/Paint$Cap;F)Landroid/graphics/Paint;
    .registers 6

    .line 299
    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 300
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 303
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public static synthetic createPaint$default(Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;ILandroid/graphics/Paint$Style;Landroid/graphics/Paint$Cap;FILjava/lang/Object;)Landroid/graphics/Paint;
    .registers 7

    if-nez p6, :cond_18

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_8

    .line 296
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :cond_8
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_e

    .line 297
    sget-object p3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :cond_e
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_13

    const/4 p4, 0x0

    .line 294
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->createPaint(ILandroid/graphics/Paint$Style;Landroid/graphics/Paint$Cap;F)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createPaint"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBackgroundPaint()Landroid/graphics/Paint;
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getDisplayText()Ljava/lang/String;
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->displayText:Ljava/lang/String;

    return-object p0
.end method

.method public final getFillBackgroundPaint()Landroid/graphics/Paint;
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->fillBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getMaxProgress()I
    .registers 1

    .line 331
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->maxProgress:I

    return p0
.end method

.method public final getOverlayTextSize()I
    .registers 1

    .line 288
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->overlayTextSize:I

    return p0
.end method

.method public final getProgress()I
    .registers 1

    .line 330
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->progress:I

    return p0
.end method

.method public final getProgressPaint()Landroid/graphics/Paint;
    .registers 1

    .line 311
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getTextBounds()Landroid/graphics/Rect;
    .registers 1

    .line 328
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->textBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getTextPaint()Landroid/graphics/Paint;
    .registers 1

    .line 321
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->textPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final isBrightness()Z
    .registers 1

    .line 333
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isBrightness:Z

    return p0
.end method

.method public final isMinimalStyle()Z
    .registers 1

    .line 284
    iget-boolean p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isMinimalStyle:Z

    return p0
.end method

.method public final measureTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->textBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 351
    iget-object p0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final setBrightness(Z)V
    .registers 2

    .line 333
    iput-boolean p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isBrightness:Z

    return-void
.end method

.method public final setDisplayText(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->displayText:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setMaxProgress(I)V
    .registers 2

    .line 331
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->maxProgress:I

    return-void
.end method

.method public final setProgress(I)V
    .registers 2

    .line 330
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->progress:I

    return-void
.end method

.method public setProgress(IILjava/lang/String;Z)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->progress:I

    .line 338
    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->maxProgress:I

    .line 339
    iput-object p3, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->displayText:Ljava/lang/String;

    .line 340
    iput-boolean p4, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->isBrightness:Z

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgressColor(I)V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/views/AbstractProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
