.class Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;
.super Ljava/lang/Object;
.source "AlternativeThumbnailsPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodedThumbnailURL"
.end annotation


# static fields
.field private static final YOUTUBE_THUMBNAIL_DOMAIN:Ljava/lang/String; = "https://i.ytimg.com/"


# instance fields
.field final imageExtension:Ljava/lang/String;

.field final imageQuality:Ljava/lang/String;

.field final originalFullURL:Ljava/lang/String;

.field final sanitizedURL:Ljava/lang/String;

.field final urlPath:Ljava/lang/String;

.field final videoId:Ljava/lang/String;

.field final viewTrackingParameters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 10

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->originalFullURL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p1, v0, p8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->sanitizedURL:Ljava/lang/String;

    .line 701
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->urlPath:Ljava/lang/String;

    .line 702
    invoke-virtual {p1, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->videoId:Ljava/lang/String;

    .line 703
    invoke-virtual {p1, p6, p7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->imageQuality:Ljava/lang/String;

    add-int/lit8 p7, p7, 0x1

    .line 704
    invoke-virtual {p1, p7, p8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->imageExtension:Ljava/lang/String;

    .line 705
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p8, p2, :cond_2f

    .line 706
    const-string p1, ""

    goto :goto_33

    :cond_2f
    invoke-virtual {p1, p8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_33
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->viewTrackingParameters:Ljava/lang/String;

    return-void
.end method

.method public static decodeImageURL(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0x8

    const/16 v1, 0x2f

    .line 661
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    const/4 v0, 0x0

    if-gtz v4, :cond_e

    return-object v0

    .line 664
    :cond_e
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_15

    return-object v0

    .line 667
    :cond_15
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    if-gtz v6, :cond_1e

    return-object v0

    .line 670
    :cond_1e
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v7, :cond_25

    return-object v0

    :cond_25
    add-int/lit8 v8, v7, 0x1

    const/16 v1, 0x2e

    .line 674
    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-gez v9, :cond_30

    return-object v0

    :cond_30
    const/16 v0, 0x3f

    .line 677
    invoke-virtual {p0, v0, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_3c

    .line 678
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_3c
    move v10, v0

    .line 680
    new-instance v2, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;-><init>(Ljava/lang/String;IIIIIII)V

    return-object v2
.end method


# virtual methods
.method public createStillsURL(Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;Z)Ljava/lang/String;
    .registers 6
    .param p1  # Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->originalFullURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 719
    const-string v1, "https://i.ytimg.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->urlPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    iget-object v2, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {p1}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailQuality;->getAltImageNameToUse()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    .line 722
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->imageExtension:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3c

    .line 724
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DecodedThumbnailURL;->viewTrackingParameters:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
