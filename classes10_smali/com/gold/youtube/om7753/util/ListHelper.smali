.class public abstract Lcom/gold/youtube/om7753/util/ListHelper;
.super Ljava/lang/Object;
.source "ListHelper.java"


# static fields
.field private static final AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

.field private static final AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

.field private static final AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

.field private static final AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

.field private static final HIGH_RESOLUTION_LIST:Ljava/util/Set;

.field private static final SUPPORTED_ITAG_IDS:Ljava/util/List;

.field private static final VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$0tDGExVLgP0p_ZV4x0f7bEZoaIw(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getDefaultAudioTrackGroup$0(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2_ivLYwg5ueAp-iFimt_huo5bX0(Ljava/util/Locale;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getAudioTrackComparator$12(Ljava/util/Locale;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$84N6UwHCNwexoXqHORfPA-TdNTk(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getUrlAndNonTorrentStreams$2(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ACI-gN6Ul5MtSjy5stPZTHezE3g(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/AudioStream;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getAudioFormatComparator$9(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/AudioStream;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$E5KAYtCjaQAxDLaoDFjd7t0o3yo(ZLcom/gold/youtube/om7753/extractor/stream/VideoStream;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getSortedStreamVideosList$6(ZLcom/gold/youtube/om7753/extractor/stream/VideoStream;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GMIiTcEobdz7IWmYCGAsf57_M7Q(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getAudioTrackNameComparator$13(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PYvOxlyIxVmkNi0gT0wt-wqeIuY(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getAudioTrackComparator$11(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VMt-sZr4Luz78iud1KTbe36qq4Y(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getGroupedAudioStreams$4(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZJEOvGNqMnxvbpEQXJ0250ttSAA(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getStreamsOfSpecifiedDelivery$1(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bF8NpN5YnAzIYU1DnD7GydeMcO8(Lcom/gold/youtube/om7753/extractor/stream/VideoStream;)I
    .registers 1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$sortStreamList$7(Lcom/gold/youtube/om7753/extractor/stream/VideoStream;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dZoA0KU1Nz1kI37t-ornt4mE7XY(IILcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getPlayableStreams$3(IILcom/gold/youtube/om7753/extractor/stream/Stream;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gMu_H7C0fyH24tDPwKx7fsmsblQ(Lcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/MediaFormat;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getAudioFormatComparator$8(Lcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pswRBfXqLlQUQPFFY0mq5RyT04A(ZLcom/gold/youtube/om7753/extractor/stream/AudioTrackType;Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getAudioTrackComparator$10(ZLcom/gold/youtube/om7753/extractor/stream/AudioTrackType;Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$t_Aek5FfSry8OfqvLmYwz6s6d0U(Ljava/util/Comparator;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->lambda$getGroupedAudioStreams$5(Ljava/util/Comparator;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zTK3687QeBb-evgBWcl8llazpKk(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 15

    sget-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->v3GPP:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-static {v0, v1, v2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MP3:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-static {v0, v1, v2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/gold/youtube/om7753/util/ListHelper;->AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    invoke-static {v0, v2, v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/util/ListHelper;->AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

    const-string v0, "1440p"

    const-string v1, "2160p"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/util/ListHelper;->HIGH_RESOLUTION_LIST:Ljava/util/Set;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DUBBED:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->ORIGINAL:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    invoke-static {v0, v1, v2}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/gold/youtube/om7753/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

    invoke-static {v2, v1, v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

    const/16 v0, 0x2f

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/16 v4, 0x22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const/16 v5, 0x23

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v0, v7

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v0, v7

    const/16 v6, 0x4e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v0, v7

    const/16 v6, 0x16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v0, v8

    const/16 v7, 0x25

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v0, v9

    const/16 v8, 0x26

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x9

    aput-object v9, v0, v10

    const/16 v9, 0x2b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0xa

    aput-object v10, v0, v11

    const/16 v10, 0x2c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0xb

    aput-object v11, v0, v12

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v0, v13

    const/16 v12, 0x2e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xd

    aput-object v13, v0, v14

    const/16 v13, 0xab

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xe

    aput-object v13, v0, v14

    const/16 v13, 0xac

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0xf

    aput-object v13, v0, v14

    const/16 v13, 0x8b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v0, v14

    const/16 v13, 0x8c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v0, v1

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xf9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v0, v3

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x17

    aput-object v1, v0, v3

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const/16 v1, 0xd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    const/16 v1, 0x12a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    const/16 v1, 0x12b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    const/16 v1, 0x116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x20

    aput-object v1, v0, v3

    const/16 v1, 0xf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x21

    aput-object v1, v0, v3

    const/16 v1, 0xf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0xf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0xf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xf6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0xf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const/16 v1, 0xf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const/16 v1, 0x10f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const/16 v1, 0x110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const/16 v1, 0x12f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    const/16 v1, 0x134

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    const/16 v1, 0x139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    const/16 v1, 0x13b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0}, Lcom/google/android/material/appbar/FlingBehavior$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/util/ListHelper;->SUPPORTED_ITAG_IDS:Ljava/util/List;

    return-void
.end method

.method private static compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-string v0, ""

    const-string v1, "[^\\d.]"

    const-string v2, "1"

    const-string v3, "0p\\d+$"

    :try_start_8
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_20} :catch_22

    sub-int/2addr p0, p1

    return p0

    :catch_22
    const/4 p0, 0x1

    return p0
.end method

.method private static computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "best_resolution_key"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_19

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1d
    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_35

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    invoke-static {p2, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_35

    :cond_34
    move-object p1, p2

    :cond_35
    return-object p1
.end method

.method private static getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;
    .registers 3

    const-string v0, "default_audio_format_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "default_audio_format_value"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->isLimitingDataUsage(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioFormatComparator(Lcom/gold/youtube/om7753/extractor/MediaFormat;Z)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method static getAudioFormatComparator(Lcom/gold/youtube/om7753/extractor/MediaFormat;Z)Ljava/util/Comparator;
    .registers 5

    if-eqz p1, :cond_5

    sget-object v0, Lcom/gold/youtube/om7753/util/ListHelper;->AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/gold/youtube/om7753/util/ListHelper;->AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    :goto_7
    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    if-eqz p1, :cond_16

    invoke-static {v1}, Ljj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    :cond_16
    new-instance p1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda2;-><init>(Lcom/gold/youtube/om7753/extractor/MediaFormat;)V

    invoke-static {p1, v2}, Ljj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0, v1}, Ljj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    new-instance p1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {p0, p1}, Ljj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioFormatIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I
    .registers 6

    if-eqz p2, :cond_23

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_23
    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static getAudioIndexByHighestRank(Ljava/util/List;Ljava/util/Comparator;)I
    .registers 3

    if-eqz p0, :cond_1d

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1d

    :cond_9
    invoke-static {p0}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/stream/Stream;->max(Ljava/util/Comparator;)Ljj$/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, -0x1

    return p0
.end method

.method private static getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;
    .registers 6

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "prefer_original_audio"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string p0, "prefer_descriptive_audio"

    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {v1, v2, p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioTrackComparator(Ljava/util/Locale;ZZ)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method static getAudioTrackComparator(Ljava/util/Locale;ZZ)Ljava/util/Comparator;
    .registers 5

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_9

    sget-object p2, Lcom/gold/youtube/om7753/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING_DESCRIPTIVE:Ljava/util/List;

    goto :goto_b

    :cond_9
    sget-object p2, Lcom/gold/youtube/om7753/util/ListHelper;->AUDIO_TRACK_TYPE_RANKING:Ljava/util/List;

    :goto_b
    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda7;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda8;-><init>(Z)V

    invoke-static {v0, v1}, Ljj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda9;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0}, Ljj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    new-instance p1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Ljj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p2}, Ljj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ljj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    new-instance p1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda9;

    invoke-direct {p1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda9;-><init>()V

    new-instance p2, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda12;

    invoke-direct {p2}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p2}, Ljj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p2}, Ljj$/util/Comparator$-CC;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ljj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method private static getAudioTrackNameComparator(Landroid/content/Context;)Ljava/util/Comparator;
    .registers 3

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Localization;->getAppLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda9;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda19;-><init>(Ljava/util/Locale;)V

    invoke-static {v1}, Ljj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p0}, Ljj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p0, v0}, Ljj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I
    .registers 3

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioIndexByHighestRank(Ljava/util/List;Ljava/util/Comparator;)I

    move-result p0

    return p0
.end method

.method public static getDefaultAudioTrackGroup(Landroid/content/Context;Ljava/util/List;)I
    .registers 4

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_26

    :cond_9
    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioTrackComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda16;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->max(Ljava/util/Comparator;)Ljj$/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_26
    :goto_26
    const/4 p0, -0x1

    return p0
.end method

.method private static getDefaultFormat(Landroid/content/Context;II)Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 5

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->getMediaFormatFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v1

    if-nez v1, :cond_29

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->getMediaFormatFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v1

    :cond_29
    return-object v1
.end method

.method public static getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I
    .registers 4

    const-string v0, "default_resolution_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "default_resolution_value"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static getDefaultResolutionIndex(Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/util/List;)I
    .registers 6

    const/4 v0, -0x1

    if-eqz p3, :cond_1d

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1d

    :cond_a
    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->sortStreamList(Ljava/util/List;Z)Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    return v1

    :cond_15
    invoke-static {p0, p2, p3}, Lcom/gold/youtube/om7753/util/ListHelper;->getVideoStreamIndex(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/util/List;)I

    move-result p0

    if-ne p0, v0, :cond_1c

    return v1

    :cond_1c
    return p0

    :cond_1d
    :goto_1d
    return v0
.end method

.method private static getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I
    .registers 5

    const-string v0, "default_video_format_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "default_video_format_value"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    const-string v1, "best_resolution_key"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultResolutionIndex(Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 8

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getDeliveryMethod()Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    move-result-object v4

    sget-object v5, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->TORRENT:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    if-ne v4, v5, :cond_2b

    goto :goto_14

    :cond_2b
    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    if-eqz v4, :cond_41

    invoke-interface {v1, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_14

    :cond_41
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_45
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_4f

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioTrackNameComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p1, p0}, Ljj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljj$/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljj$/util/stream/Stream;->collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;
    .registers 2

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p0}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljj$/util/stream/Stream;->collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getGroupedAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 6

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_42
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_4c

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioTrackNameComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getAudioFormatComparator(Landroid/content/Context;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda17;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda18;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p1, v0}, Ljj$/util/stream/Stream;->map(Ljava/util/function/Function;)Ljj$/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljj$/util/stream/Stream;->collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getMediaFormatFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 3

    const-string v0, "video_webm_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    goto :goto_60

    :cond_13
    const-string v0, "video_mp4_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    goto :goto_60

    :cond_26
    const-string v0, "video_3gp_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->v3GPP:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    goto :goto_60

    :cond_39
    const-string v0, "audio_webm_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    goto :goto_60

    :cond_4c
    const-string v0, "audio_m4a_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    sget-object p0, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    goto :goto_60

    :cond_5f
    const/4 p0, 0x0

    :goto_60
    return-object p0
.end method

.method public static getPlayableStreams(Ljava/util/List;I)Ljava/util/List;
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/ServiceList;->YouTube:Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeService;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getServiceId()I

    move-result v0

    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda21;

    invoke-direct {v1, p1, v0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda21;-><init>(II)V

    invoke-static {p0, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPopupDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I
    .registers 4

    const-string v0, "default_popup_resolution_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "default_popup_resolution_value"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static getPopupResolutionIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p2, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static getResolutionIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p2, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private static getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->isMeteredNetwork(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "limit_data_usage_none_key"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "limit_mobile_data_usage_key"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object v1, p0

    :cond_2b
    :goto_2b
    return-object v1
.end method

.method public static getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZZ)Ljava/util/List;
    .registers 14

    invoke-static {p0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_higher_resolutions_key"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "default_video_format_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const-string v1, "default_video_format_value"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v3

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcom/gold/youtube/om7753/util/ListHelper;->getSortedStreamVideosList(Lcom/gold/youtube/om7753/extractor/MediaFormat;ZLjava/util/List;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getSortedStreamVideosList(Lcom/gold/youtube/om7753/extractor/MediaFormat;ZLjava/util/List;Ljava/util/List;ZZ)Ljava/util/List;
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p5, :cond_10

    new-array p5, v2, [Ljava/util/List;

    aput-object p2, p5, v1

    aput-object p3, p5, v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1a

    :cond_10
    new-array p5, v2, [Ljava/util/List;

    aput-object p3, p5, v1

    aput-object p2, p5, v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_1a
    invoke-static {p2}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda13;

    invoke-direct {p3}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {p2, p3}, Ljj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda14;

    invoke-direct {p3}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {p2, p3}, Ljj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljj$/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda15;

    invoke-direct {p3, p1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda15;-><init>(Z)V

    invoke-interface {p2, p3}, Ljj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljj$/util/stream/Stream;->collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_60

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {p5}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_64
    :goto_64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {p3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object p5

    if-ne p5, p0, :cond_64

    invoke-virtual {p3}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_7e
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p4}, Lcom/gold/youtube/om7753/util/ListHelper;->sortStreamList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getStreamsOfSpecifiedDelivery(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Ljava/util/List;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda4;-><init>(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)V

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getVideoStreamIndex(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/util/List;)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "p\\d+$"

    const-string v4, "p"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_15
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_67

    if-nez v1, :cond_1f

    const/4 v13, 0x0

    goto :goto_29

    :cond_1f
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v13}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v13

    :goto_29
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v14}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-ne v13, v1, :cond_40

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_40

    move v8, v7

    :cond_40
    if-ne v13, v1, :cond_49

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    move v9, v7

    :cond_49
    if-ne v10, v6, :cond_52

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    move v10, v7

    :cond_52
    if-ne v11, v6, :cond_5b

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    move v11, v7

    :cond_5b
    if-ne v12, v6, :cond_64

    invoke-static {v15, v5}, Lcom/gold/youtube/om7753/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_64

    move v12, v7

    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_67
    if-eq v8, v6, :cond_6a

    return v8

    :cond_6a
    if-eq v9, v6, :cond_6d

    return v9

    :cond_6d
    if-eq v10, v6, :cond_70

    return v10

    :cond_70
    if-eq v11, v6, :cond_73

    return v11

    :cond_73
    return v12
.end method

.method private static isLimitingDataUsage(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ListHelper;->getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static isMeteredNetwork(Landroid/content/Context;)Z
    .registers 2

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-static {p0, v0}, Landroidx/core/contents/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_16

    :cond_11
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$getAudioFormatComparator$8(Lcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/MediaFormat;Lcom/gold/youtube/om7753/extractor/MediaFormat;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-ne p2, p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-static {p1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    :cond_11
    return v0
.end method

.method private static synthetic lambda$getAudioFormatComparator$9(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/AudioStream;)I
    .registers 2

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAudioTrackComparator$10(ZLcom/gold/youtube/om7753/extractor/stream/AudioTrackType;Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    sget-object p0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->ORIGINAL:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    const/4 v1, 0x1

    if-ne p1, p0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    if-ne p2, p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    invoke-static {p1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    :cond_13
    return v0
.end method

.method private static synthetic lambda$getAudioTrackComparator$11(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAudioTrackComparator$12(Ljava/util/Locale;)Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAudioTrackNameComparator$13(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDefaultAudioTrackGroup$0(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getGroupedAudioStreams$4(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getGroupedAudioStreams$5(Ljava/util/Comparator;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p1}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1, p0}, Ljj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljj$/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljj$/util/stream/Stream;->collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getPlayableStreams$3(IILcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 5

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getDeliveryMethod()Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    move-result-object v0

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->TORRENT:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    if-eq v0, v1, :cond_24

    if-ne p0, p1, :cond_22

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getItagItem()Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object p0

    if-eqz p0, :cond_22

    sget-object p0, Lcom/gold/youtube/om7753/util/ListHelper;->SUPPORTED_ITAG_IDS:Ljava/util/List;

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getItagItem()Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object p1

    iget p1, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private static synthetic lambda$getSortedStreamVideosList$6(ZLcom/gold/youtube/om7753/extractor/stream/VideoStream;)Z
    .registers 4

    if-nez p0, :cond_19

    sget-object p0, Lcom/gold/youtube/om7753/util/ListHelper;->HIGH_RESOLUTION_LIST:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p1

    const-string v0, "p\\d+$"

    const-string v1, "p"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method private static synthetic lambda$getStreamsOfSpecifiedDelivery$1(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 2

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getDeliveryMethod()Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    move-result-object p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$getUrlAndNonTorrentStreams$2(Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->isUrl()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getDeliveryMethod()Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    move-result-object p0

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->TORRENT:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    if-eq p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static synthetic lambda$sortStreamList$7(Lcom/gold/youtube/om7753/extractor/stream/VideoStream;)I
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static sortStreamList(Ljava/util/List;Z)Ljava/util/List;
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda22;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Ljj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1}, Ljj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Comparator$-CC;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz p1, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-static {v0}, Ljj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    :goto_22
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method
