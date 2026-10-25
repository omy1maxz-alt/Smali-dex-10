.class public final enum Lcom/gold/youtube/om7753/extractor/MediaFormat;
.super Ljava/lang/Enum;
.source "MediaFormat.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum AIF:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum AIFF:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum ALAC:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum FLAC:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum MP2:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum MP3:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum OGG:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum SRT:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum TRANSCRIPT1:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum TRANSCRIPT2:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum TRANSCRIPT3:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum TTML:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum VTT:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum WAV:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum WEBMA:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field public static final enum v3GPP:Lcom/gold/youtube/om7753/extractor/MediaFormat;


# instance fields
.field public final id:I

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v5, "mp4"

    const-string v6, "video/mp4"

    const-string v1, "MPEG_4"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "MPEG-4"

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v6, "3gp"

    const-string v7, "video/3gpp"

    const-string v2, "v3GPP"

    const/4 v3, 0x1

    const/16 v4, 0x10

    const-string v5, "3GPP"

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->v3GPP:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v7, "webm"

    const-string v8, "video/webm"

    const-string v3, "WEBM"

    const/4 v4, 0x2

    const/16 v5, 0x20

    const-string v6, "WebM"

    invoke-direct/range {v2 .. v8}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v8, "m4a"

    const-string v9, "audio/mp4"

    const-string v4, "M4A"

    const/4 v5, 0x3

    const/16 v6, 0x100

    const-string v7, "m4a"

    invoke-direct/range {v3 .. v9}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v9, "webm"

    const-string v10, "audio/webm"

    const-string v5, "WEBMA"

    const/4 v6, 0x4

    const/16 v7, 0x200

    const-string v8, "WebM"

    invoke-direct/range {v4 .. v10}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v10, "mp3"

    const-string v11, "audio/mpeg"

    const-string v6, "MP3"

    const/4 v7, 0x5

    const/16 v8, 0x300

    const-string v9, "MP3"

    invoke-direct/range {v5 .. v11}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MP3:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v6, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v11, "mp2"

    const-string v12, "audio/mpeg"

    const-string v7, "MP2"

    const/4 v8, 0x6

    const/16 v9, 0x310

    const-string v10, "MP2"

    invoke-direct/range {v6 .. v12}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MP2:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v12, "opus"

    const-string v13, "audio/opus"

    const-string v8, "OPUS"

    const/4 v9, 0x7

    const/16 v10, 0x400

    const-string v11, "opus"

    invoke-direct/range {v7 .. v13}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v5, "ogg"

    const-string v6, "audio/ogg"

    const-string v1, "OGG"

    const/16 v2, 0x8

    const/16 v3, 0x500

    const-string v4, "ogg"

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->OGG:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v6, "webm"

    const-string v7, "audio/webm"

    const-string v2, "WEBMA_OPUS"

    const/16 v3, 0x9

    const/16 v4, 0x200

    const-string v5, "WebM Opus"

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v7, "aiff"

    const-string v8, "audio/aiff"

    const-string v3, "AIFF"

    const/16 v4, 0xa

    const/16 v5, 0x600

    const-string v6, "AIFF"

    invoke-direct/range {v2 .. v8}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;->AIFF:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v8, "aif"

    const-string v9, "audio/aiff"

    const-string v4, "AIF"

    const/16 v5, 0xb

    const/16 v6, 0x600

    const-string v7, "AIFF"

    invoke-direct/range {v3 .. v9}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->AIF:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v9, "wav"

    const-string v10, "audio/wav"

    const-string v5, "WAV"

    const/16 v6, 0xc

    const/16 v7, 0x700

    const-string v8, "WAV"

    invoke-direct/range {v4 .. v10}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WAV:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v10, "flac"

    const-string v11, "audio/flac"

    const-string v6, "FLAC"

    const/16 v7, 0xd

    const/16 v8, 0x800

    const-string v9, "FLAC"

    invoke-direct/range {v5 .. v11}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->FLAC:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v6, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v11, "alac"

    const-string v12, "audio/alac"

    const-string v7, "ALAC"

    const/16 v8, 0xe

    const/16 v9, 0x900

    const-string v10, "ALAC"

    invoke-direct/range {v6 .. v12}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/gold/youtube/om7753/extractor/MediaFormat;->ALAC:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v12, "vtt"

    const-string v13, "text/vtt"

    const-string v8, "VTT"

    const/16 v9, 0xf

    const/16 v10, 0x1000

    const-string v11, "WebVTT"

    invoke-direct/range {v7 .. v13}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->VTT:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v5, "ttml"

    const-string v6, "application/ttml+xml"

    const-string v1, "TTML"

    const/16 v2, 0x10

    const/16 v3, 0x2000

    const-string v4, "Timed Text Markup Language"

    invoke-direct/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TTML:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v6, "srv1"

    const-string v7, "text/xml"

    const-string v2, "TRANSCRIPT1"

    const/16 v3, 0x11

    const/16 v4, 0x3000

    const-string v5, "TranScript v1"

    invoke-direct/range {v1 .. v7}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TRANSCRIPT1:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v7, "srv2"

    const-string v8, "text/xml"

    const-string v3, "TRANSCRIPT2"

    const/16 v4, 0x12

    const/16 v5, 0x4000

    const-string v6, "TranScript v2"

    invoke-direct/range {v2 .. v8}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TRANSCRIPT2:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v8, "srv3"

    const-string v9, "text/xml"

    const-string v4, "TRANSCRIPT3"

    const/16 v5, 0x13

    const/16 v6, 0x5000

    const-string v7, "TranScript v3"

    invoke-direct/range {v3 .. v9}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TRANSCRIPT3:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    new-instance v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v9, "srt"

    const-string v10, "text/srt"

    const-string v5, "SRT"

    const/16 v6, 0x14

    const/16 v7, 0x6000

    const-string v8, "SubRip file format"

    invoke-direct/range {v4 .. v10}, Lcom/gold/youtube/om7753/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;->SRT:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/MediaFormat;->v3GPP:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v9, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v10, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MP3:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v11, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MP2:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v12, Lcom/gold/youtube/om7753/extractor/MediaFormat;->OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v13, Lcom/gold/youtube/om7753/extractor/MediaFormat;->OGG:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v15, Lcom/gold/youtube/om7753/extractor/MediaFormat;->AIFF:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v16, Lcom/gold/youtube/om7753/extractor/MediaFormat;->AIF:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v17, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WAV:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v18, Lcom/gold/youtube/om7753/extractor/MediaFormat;->FLAC:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v19, Lcom/gold/youtube/om7753/extractor/MediaFormat;->ALAC:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v20, Lcom/gold/youtube/om7753/extractor/MediaFormat;->VTT:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v21, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TTML:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v22, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TRANSCRIPT1:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v23, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TRANSCRIPT2:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v24, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TRANSCRIPT3:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v25, Lcom/gold/youtube/om7753/extractor/MediaFormat;->SRT:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    filled-new-array/range {v5 .. v25}, [Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->$VALUES:[Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->id:I

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->suffix:Ljava/lang/String;

    iput-object p6, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static getAllFromMimeType(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->values()[Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->values()[Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatById(I)Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object v0
.end method

.method public static getFromMimeType(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->values()[Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object v0
.end method

.method public static getFromSuffix(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->values()[Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object v0
.end method

.method public static getMimeById(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNameById(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSuffixById(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/MediaFormat$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getAllFromMimeType$2(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/MediaFormat;)Z
    .registers 3

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getById$0(ILcom/gold/youtube/om7753/extractor/MediaFormat;)Z
    .registers 3

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->id:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$getFormatById$3(Lcom/gold/youtube/om7753/extractor/MediaFormat;)Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 1

    return-object p0
.end method

.method static synthetic lambda$getFromMimeType$1(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/MediaFormat;)Z
    .registers 3

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFromSuffix$4(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/MediaFormat;)Z
    .registers 3

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->$VALUES:[Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method
