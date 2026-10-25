.class public Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;
.super Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;
.source "AccountTerminatedException.java"


# instance fields
.field private reason:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;->reason:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;->reason:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;->reason:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;->reason:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method


# virtual methods
.method public getReason()Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;->reason:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    return-object v0
.end method
