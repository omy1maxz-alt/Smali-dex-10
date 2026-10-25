.class public final enum Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;
.super Ljava/lang/Enum;
.source "AudioTrackType.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

.field public static final enum DESCRIPTIVE:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

.field public static final enum DUBBED:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

.field public static final enum ORIGINAL:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

.field public static final enum SECONDARY:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->ORIGINAL:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    const-string v1, "DUBBED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DUBBED:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    const-string v1, "DESCRIPTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    const-string v1, "SECONDARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->SECONDARY:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->ORIGINAL:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DUBBED:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->SECONDARY:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object v0
.end method
