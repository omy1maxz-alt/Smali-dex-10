.class public final enum Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;
.super Ljava/lang/Enum;
.source "StreamingService.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

.field public static final enum CHANNEL:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

.field public static final enum NONE:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

.field public static final enum PLAYLIST:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

.field public static final enum STREAM:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->NONE:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    const-string v1, "STREAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->STREAM:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    const-string v1, "CHANNEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->CHANNEL:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    const-string v1, "PLAYLIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->PLAYLIST:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->NONE:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->STREAM:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->CHANNEL:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->PLAYLIST:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    return-object v0
.end method
