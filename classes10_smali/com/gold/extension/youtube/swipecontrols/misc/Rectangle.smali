.class public final Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.kt"


# instance fields
.field private final bottom:I

.field private final height:I

.field private final left:I

.field private final right:I

.field private final top:I

.field private final width:I

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->x:I

    .line 8
    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->y:I

    .line 9
    iput p3, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->width:I

    .line 10
    iput p4, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->height:I

    .line 12
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->left:I

    add-int/2addr p1, p3

    .line 13
    iput p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->right:I

    .line 14
    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->top:I

    add-int/2addr p2, p4

    .line 15
    iput p2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->bottom:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;IIIIILjava/lang/Object;)Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;
    .registers 7

    .line 0
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->x:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->y:I

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->width:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->height:I

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->copy(IIII)Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->x:I

    return p0
.end method

.method public final component2()I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->y:I

    return p0
.end method

.method public final component3()I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->width:I

    return p0
.end method

.method public final component4()I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->height:I

    return p0
.end method

.method public final copy(IIII)Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;
    .registers 5

    .line 0
    new-instance p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->x:I

    iget v3, p1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->x:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->y:I

    iget v3, p1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->y:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->width:I

    iget v3, p1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->width:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->height:I

    iget p1, p1, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->height:I

    if-eq p0, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getBottom()I
    .registers 1

    .line 15
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->bottom:I

    return p0
.end method

.method public final getHeight()I
    .registers 1

    .line 10
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->height:I

    return p0
.end method

.method public final getLeft()I
    .registers 1

    .line 12
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->left:I

    return p0
.end method

.method public final getRight()I
    .registers 1

    .line 13
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->right:I

    return p0
.end method

.method public final getTop()I
    .registers 1

    .line 14
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->top:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    .line 9
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->width:I

    return p0
.end method

.method public final getX()I
    .registers 1

    .line 7
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->x:I

    return p0
.end method

.method public final getY()I
    .registers 1

    .line 8
    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->y:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 0
    iget v0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->x:I

    iget v1, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->y:I

    iget v2, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->width:I

    iget p0, p0, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;->height:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Rectangle(x="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
