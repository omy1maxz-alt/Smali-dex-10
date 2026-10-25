.class public final Lcom/gold/extension/youtube/swipecontrols/misc/Point;
.super Ljava/lang/Object;
.source "Point.kt"


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->x:I

    .line 10
    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->y:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/gold/extension/youtube/swipecontrols/misc/Point;IIILjava/lang/Object;)Lcom/gold/extension/youtube/swipecontrols/misc/Point;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->x:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->y:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->copy(II)Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->x:I

    return p0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->y:I

    return p0
.end method

.method public final copy(II)Lcom/gold/extension/youtube/swipecontrols/misc/Point;
    .registers 3

    .line 0
    new-instance p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/swipecontrols/misc/Point;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/gold/extension/youtube/swipecontrols/misc/Point;

    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->x:I

    iget v3, p1, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->x:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->y:I

    iget p1, p1, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->y:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final getX()I
    .registers 1

    .line 9
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->x:I

    return p0
.end method

.method public final getY()I
    .registers 1

    .line 10
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->y:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->x:I

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Point;->y:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Point(x="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
