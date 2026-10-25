.class public final enum Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;
.super Ljava/lang/Enum;
.source "WebMReader.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

.field public static final enum Audio:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

.field public static final enum Other:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

.field public static final enum Video:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    const-string v1, "Audio"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Audio:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    new-instance v1, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    const-string v3, "Video"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Video:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    new-instance v3, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    const-string v5, "Other"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Other:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->$VALUES:[Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    return-object p0
.end method

.method public static values()[Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->$VALUES:[Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    return-object v0
.end method
