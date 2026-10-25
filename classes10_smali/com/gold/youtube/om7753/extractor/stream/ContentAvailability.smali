.class public final enum Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
.super Ljava/lang/Enum;
.source "ContentAvailability.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

.field public static final enum AVAILABLE:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

.field public static final enum MEMBERSHIP:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

.field public static final enum PAID:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

.field public static final enum UNKNOWN:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

.field public static final enum UPCOMING:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->AVAILABLE:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    const-string v1, "MEMBERSHIP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->MEMBERSHIP:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    const-string v1, "PAID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->PAID:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    const-string v1, "UPCOMING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->UPCOMING:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->AVAILABLE:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->MEMBERSHIP:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->PAID:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->UPCOMING:Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/stream/ContentAvailability;

    return-object v0
.end method
