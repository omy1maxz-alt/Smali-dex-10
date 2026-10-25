.class public final enum Lcom/gold/youtube/om7753/extractor/stream/StreamType;
.super Ljava/lang/Enum;
.source "StreamType.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field public static final enum AUDIO_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field public static final enum AUDIO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field public static final enum LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field public static final enum NONE:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field public static final enum POST_LIVE_AUDIO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field public static final enum POST_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

.field public static final enum VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->NONE:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const-string v1, "VIDEO_STREAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const-string v1, "AUDIO_STREAM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->AUDIO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const-string v1, "LIVE_STREAM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const-string v1, "AUDIO_LIVE_STREAM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const-string v1, "POST_LIVE_STREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->POST_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    const-string v1, "POST_LIVE_AUDIO_STREAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->POST_LIVE_AUDIO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->NONE:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->VIDEO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->AUDIO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->POST_LIVE_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    sget-object v9, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->POST_LIVE_AUDIO_STREAM:Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    filled-new-array/range {v3 .. v9}, [Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamType;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/stream/StreamType;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/stream/StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/stream/StreamType;

    return-object v0
.end method
