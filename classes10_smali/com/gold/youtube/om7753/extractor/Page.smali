.class public Lcom/gold/youtube/om7753/extractor/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final body:[B

.field private final cookies:Ljava/util/Map;

.field private final id:Ljava/lang/String;

.field private final ids:Ljava/util/List;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/Page;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/Page;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/Page;->ids:Ljava/util/List;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/Page;->cookies:Ljava/util/Map;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/Page;->body:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public static isValid(Lcom/gold/youtube/om7753/extractor/Page;)Z
    .registers 2

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/Page;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method


# virtual methods
.method public getBody()[B
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Page;->body:[B

    return-object v0
.end method

.method public getCookies()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Page;->cookies:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Page;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Page;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/Page;->url:Ljava/lang/String;

    return-object v0
.end method
