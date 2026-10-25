.class public final Lcom/gold/youtube/om7753/extractor/stream/Frameset;
.super Ljava/lang/Object;
.source "Frameset.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final durationPerFrame:I

.field private final frameHeight:I

.field private final frameWidth:I

.field private final framesPerPageX:I

.field private final framesPerPageY:I

.field private final totalCount:I

.field private final urls:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->urls:Ljava/util/List;

    iput p4, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->totalCount:I

    iput p5, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->durationPerFrame:I

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameWidth:I

    iput p3, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameHeight:I

    iput p6, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->framesPerPageX:I

    iput p7, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->framesPerPageY:I

    return-void
.end method


# virtual methods
.method public getDurationPerFrame()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->durationPerFrame:I

    return v0
.end method

.method public getFrameBoundsAt(J)[I
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4d

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget v2, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->durationPerFrame:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_14

    goto :goto_4d

    :cond_14
    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->framesPerPageX:I

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->framesPerPageY:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->durationPerFrame:I

    int-to-long v1, v1

    div-long v1, p1, v1

    long-to-int v1, v1

    iget v2, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->totalCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    rem-int v2, v1, v0

    iget v3, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->framesPerPageX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->floorDiv(II)I

    move-result v3

    iget v4, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->framesPerPageY:I

    rem-int v4, v2, v4

    nop

    invoke-static {v1, v0}, Ljava/lang/Math;->floorDiv(II)I

    move-result v5

    iget v6, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameWidth:I

    mul-int/2addr v6, v4

    iget v7, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameHeight:I

    mul-int/2addr v7, v3

    iget v8, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameWidth:I

    mul-int/2addr v8, v4

    iget v9, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameWidth:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameHeight:I

    mul-int/2addr v9, v3

    iget v10, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameHeight:I

    add-int/2addr v9, v10

    filled-new-array {v5, v6, v7, v8, v9}, [I

    move-result-object v5

    return-object v5

    :cond_4d
    :goto_4d
    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameWidth:I

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameHeight:I

    const/4 v2, 0x0

    filled-new-array {v2, v2, v2, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public getFrameHeight()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->frameWidth:I

    return v0
.end method

.method public getFramesPerPageX()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->framesPerPageX:I

    return v0
.end method

.method public getFramesPerPageY()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->framesPerPageY:I

    return v0
.end method

.method public getTotalCount()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->totalCount:I

    return v0
.end method

.method public getUrls()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Frameset;->urls:Ljava/util/List;

    return-object v0
.end method
