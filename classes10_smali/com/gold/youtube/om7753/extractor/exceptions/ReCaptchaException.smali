.class public Lcom/gold/youtube/om7753/extractor/exceptions/ReCaptchaException;
.super Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;
.source "ReCaptchaException.java"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/exceptions/ReCaptchaException;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/exceptions/ReCaptchaException;->url:Ljava/lang/String;

    return-object v0
.end method
