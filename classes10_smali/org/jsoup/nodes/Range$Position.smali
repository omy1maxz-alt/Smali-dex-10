.class public Lorg/jsoup/nodes/Range$Position;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field private final columnNumber:I

.field private final lineNumber:I

.field private final pos:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    iput p2, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    iput p3, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    :cond_12
    check-cast p1, Lorg/jsoup/nodes/Range$Position;

    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    iget v3, p1, Lorg/jsoup/nodes/Range$Position;->pos:I

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    iget v3, p1, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    if-eq v2, v3, :cond_22

    return v1

    :cond_22
    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    iget p1, p1, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    if-ne v2, p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
