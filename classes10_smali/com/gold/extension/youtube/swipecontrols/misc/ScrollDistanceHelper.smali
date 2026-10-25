.class public final Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;
.super Ljava/lang/Object;
.source "ScrollDistanceHelper.kt"


# instance fields
.field private final callback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field private scrolledDistance:D

.field private final unitDistance:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function3;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->unitDistance:I

    .line 14
    iput-object p2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->callback:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method private final subtractUnitDistance()V
    .registers 7

    .line 54
    iget-wide v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->unitDistance:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    return-void
.end method


# virtual methods
.method public final add(D)V
    .registers 6

    .line 29
    iget-wide v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    .line 32
    :goto_5
    iget-wide p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->unitDistance:I

    int-to-double v0, v0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_32

    .line 33
    iget-wide p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    .line 34
    invoke-direct {p0}, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->subtractUnitDistance()V

    .line 35
    iget-object v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->callback:Lkotlin/jvm/functions/Function3;

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 37
    iget-wide v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 38
    iget-wide v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    invoke-static {v1, v2}, Ljava/lang/Math;->signum(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 35
    invoke-interface {v0, p1, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_32
    return-void
.end method

.method public final reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/ScrollDistanceHelper;->scrolledDistance:D

    return-void
.end method
