.class public final enum Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;
.super Ljava/lang/Enum;
.source "DeliveryType.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

.field public static final enum LIVE:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

.field public static final enum OTF:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

.field public static final enum PROGRESSIVE:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    const-string v1, "PROGRESSIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->PROGRESSIVE:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    const-string v1, "OTF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->OTF:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    const-string v1, "LIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->LIVE:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->PROGRESSIVE:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->OTF:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->LIVE:Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    filled-new-array {v0, v1, v2}, [Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/services/youtube/DeliveryType;

    return-object v0
.end method
