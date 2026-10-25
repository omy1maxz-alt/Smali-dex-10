.class public Lcom/gold/youtube/om7753/extractor/exceptions/YoutubeMusicPremiumContentException;
.super Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;
.source "YoutubeMusicPremiumContentException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "This video is a YouTube Music Premium video"

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "This video is a YouTube Music Premium video"

    invoke-direct {p0, v0, p1}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
