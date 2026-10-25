.class public Lcom/gold/youtube/om7753/extractor/stream/Description;
.super Ljava/lang/Object;
.source "Description.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY_DESCRIPTION:Lcom/gold/youtube/om7753/extractor/stream/Description;

.field public static final HTML:I = 0x1

.field public static final MARKDOWN:I = 0x2

.field public static final PLAIN_TEXT:I = 0x3


# instance fields
.field private final content:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/Description;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/Description;->EMPTY_DESCRIPTION:Lcom/gold/youtube/om7753/extractor/stream/Description;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/gold/youtube/om7753/extractor/stream/Description;->type:I

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Description;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/gold/youtube/om7753/extractor/stream/Description;

    iget v3, p0, Lcom/gold/youtube/om7753/extractor/stream/Description;->type:I

    iget v4, v2, Lcom/gold/youtube/om7753/extractor/stream/Description;->type:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/stream/Description;->content:Ljava/lang/String;

    iget-object v4, v2, Lcom/gold/youtube/om7753/extractor/stream/Description;->content:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    :cond_28
    :goto_28
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Description;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Description;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/stream/Description;->content:Ljava/lang/String;

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/stream/Description;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
