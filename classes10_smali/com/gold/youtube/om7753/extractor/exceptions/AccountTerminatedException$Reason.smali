.class public final enum Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;
.super Ljava/lang/Enum;
.source "AccountTerminatedException.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

.field public static final enum UNKNOWN:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

.field public static final enum VIOLATION:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    const-string v1, "VIOLATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->VIOLATION:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->VIOLATION:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    filled-new-array {v0, v1}, [Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->$VALUES:[Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->$VALUES:[Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    return-object v0
.end method
