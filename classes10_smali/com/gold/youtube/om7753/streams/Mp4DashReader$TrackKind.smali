.class public final enum Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;
.super Ljava/lang/Enum;
.source "Mp4DashReader.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

.field public static final enum Audio:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

.field public static final enum Other:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

.field public static final enum Subtitles:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

.field public static final enum Video:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    const-string v1, "Audio"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Audio:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    new-instance v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    const-string v3, "Video"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Video:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    new-instance v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    const-string v5, "Subtitles"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Subtitles:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    new-instance v5, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    const-string v7, "Other"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->Other:Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->$VALUES:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    return-object p0
.end method

.method public static values()[Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->$VALUES:[Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/streams/Mp4DashReader$TrackKind;

    return-object v0
.end method
