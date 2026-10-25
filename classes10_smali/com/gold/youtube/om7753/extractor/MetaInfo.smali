.class public Lcom/gold/youtube/om7753/extractor/MetaInfo;
.super Ljava/lang/Object;
.source "MetaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Lcom/gold/youtube/om7753/extractor/stream/Description;

.field private title:Ljava/lang/String;

.field private urlTexts:Ljava/util/List;

.field private urls:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->title:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/stream/Description;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->title:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->content:Lcom/gold/youtube/om7753/extractor/stream/Description;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urls:Ljava/util/List;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addUrl(Ljava/net/URL;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUrlText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContent()Lcom/gold/youtube/om7753/extractor/stream/Description;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->content:Lcom/gold/youtube/om7753/extractor/stream/Description;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlTexts()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urls:Ljava/util/List;

    return-object v0
.end method

.method public setContent(Lcom/gold/youtube/om7753/extractor/stream/Description;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->content:Lcom/gold/youtube/om7753/extractor/stream/Description;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrlTexts(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-void
.end method

.method public setUrls(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/MetaInfo;->urls:Ljava/util/List;

    return-void
.end method
