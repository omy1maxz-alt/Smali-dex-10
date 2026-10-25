.class public final Lcom/gold/youtube/om7753/extractor/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HEIGHT_UNKNOWN:I = -0x1

.field public static final WIDTH_UNKNOWN:I = -0x1


# instance fields
.field private final estimatedResolutionLevel:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

.field private final height:I

.field private final url:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/Image;->url:Ljava/lang/String;

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/Image;->height:I

    iput p3, p0, Lcom/gold/youtube/om7753/extractor/Image;->width:I

    const-string v0, "estimatedResolutionLevel is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/Image;->estimatedResolutionLevel:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-void
.end method


# virtual methods
.method public getEstimatedResolutionLevel()Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Image;->estimatedResolutionLevel:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/Image;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/Image;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Image;->url:Ljava/lang/String;

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/Image;->height:I

    iget v2, p0, Lcom/gold/youtube/om7753/extractor/Image;->width:I

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/Image;->estimatedResolutionLevel:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image {url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", height="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estimatedResolutionLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
