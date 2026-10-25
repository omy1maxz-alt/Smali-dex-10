.class public final enum Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;
.super Ljava/lang/Enum;
.source "StreamingService.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

.field public static final enum AUDIO:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

.field public static final enum COMMENTS:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

.field public static final enum LIVE:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

.field public static final enum VIDEO:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    const-string v1, "LIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->LIVE:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    const-string v1, "COMMENTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->LIVE:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->$VALUES:[Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->$VALUES:[Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/StreamingService$ServiceInfo$MediaCapability;

    return-object v0
.end method
