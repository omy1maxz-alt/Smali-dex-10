.class final Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;
.super Ljava/lang/Object;
.source "ItagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final content:Ljava/lang/String;

.field private isUrl:Z

.field private final itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-void
.end method


# virtual methods
.method getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method getIsUrl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->isUrl:Z

    return v0
.end method

.method getItagItem()Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->itagItem:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-object v0
.end method

.method setIsUrl(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/ItagInfo;->isUrl:Z

    return-void
.end method
