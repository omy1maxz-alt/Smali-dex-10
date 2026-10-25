.class public final Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;
.super Ljava/lang/Object;
.source "ImageSuffix.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final height:I

.field private final resolutionLevel:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

.field private final suffix:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->height:I

    iput p3, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->width:I

    const-string v0, "estimatedResolutionLevel is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->resolutionLevel:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->height:I

    return v0
.end method

.method public getResolutionLevel()Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->resolutionLevel:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->height:I

    iget v2, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->width:I

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/ImageSuffix;->resolutionLevel:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageSuffix {suffix="

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

    const-string v1, ", resolutionLevel="

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
