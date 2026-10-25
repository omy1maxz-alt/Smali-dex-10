.class synthetic Lcom/gold/youtube/om7753/streams/OggFromWebMWriter$1;
.super Ljava/lang/Object;
.source "OggFromWebMWriter.java"


# static fields
.field static final synthetic $SwitchMap$com$gold$youtube$streams$WebMReader$TrackKind:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->values()[Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter$1;->$SwitchMap$com$gold$youtube$streams$WebMReader$TrackKind:[I

    :try_start_9
    sget-object v1, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Audio:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter$1;->$SwitchMap$com$gold$youtube$streams$WebMReader$TrackKind:[I

    sget-object v1, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Video:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
