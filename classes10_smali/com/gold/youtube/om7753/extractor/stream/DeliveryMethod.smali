.class public final enum Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;
.super Ljava/lang/Enum;
.source "DeliveryMethod.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

.field public static final enum DASH:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

.field public static final enum HLS:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

.field public static final enum PROGRESSIVE_HTTP:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

.field public static final enum SS:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

.field public static final enum TORRENT:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    const-string v1, "PROGRESSIVE_HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    const-string v1, "DASH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->DASH:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    const-string v1, "HLS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->HLS:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    const-string v1, "SS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->SS:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    const-string v1, "TORRENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->TORRENT:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->DASH:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->HLS:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->SS:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->TORRENT:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    return-object v0
.end method
