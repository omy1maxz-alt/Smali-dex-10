.class public abstract Lcom/gold/youtube/om7753/extractor/Info;
.super Ljava/lang/Object;
.source "Info.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Info"


# instance fields
.field private final errors:Ljava/util/List;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private originalUrl:Ljava/lang/String;

.field private final serviceId:I

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;Ljava/lang/String;)V
    .registers 10

    nop

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->errors:Ljava/util/List;

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/Info;->serviceId:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/Info;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/Info;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/Info;->originalUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/Info;->name:Ljava/lang/String;

    const-string v0, "Base Created {}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Info"

    invoke-static {v2, v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addAllErrors(Ljava/util/Collection;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrors()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->errors:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lcom/gold/youtube/om7753/extractor/StreamingService;
    .registers 4

    :try_start_0
    iget v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->serviceId:I

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getService(I)Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object v0
    :try_end_6
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Info object has invalid service id"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getServiceId()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->serviceId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/Info;->originalUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/Info;->originalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    goto :goto_28

    :cond_d
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Info;->originalUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (originalUrl=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/Info;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/Info;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "[url=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
