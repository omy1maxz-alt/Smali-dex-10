.class public Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
.super Ljava/lang/Object;
.source "LinkHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final id:Ljava/lang/String;

.field protected final originalUrl:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;)V
    .registers 5

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->originalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;->url:Ljava/lang/String;

    return-object v0
.end method
