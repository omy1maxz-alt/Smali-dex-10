.class public Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;
.super Ljava/lang/Object;
.source "ItagItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final APPROX_DURATION_MS_UNKNOWN:J = -0x1L

.field public static final AUDIO_CHANNELS_NOT_APPLICABLE_OR_UNKNOWN:I = -0x1

.field public static final AVERAGE_BITRATE_UNKNOWN:I = -0x1

.field public static final CONTENT_LENGTH_UNKNOWN:J = -0x1L

.field public static final FPS_NOT_APPLICABLE_OR_UNKNOWN:I = -0x1

.field private static final ITAG_LIST:[Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

.field public static final LAST_MODIFIED_UNKOWN:J = -0x1L

.field public static final SAMPLE_RATE_UNKNOWN:I = -0x1

.field public static final TARGET_DURATION_SEC_UNKNOWN:I = -0x1


# instance fields
.field private approxDurationMs:J

.field private audioChannels:I

.field private audioLocale:Ljava/util/Locale;

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

.field public avgBitrate:I

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private contentLength:J

.field public fps:I

.field private height:I

.field public final id:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private isDrc:Z

.field public final itagType:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

.field private lastModified:J

.field private final mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field private quality:Ljava/lang/String;

.field public resolutionString:Ljava/lang/String;

.field private sampleRate:I

.field private targetDurationSec:I

.field private width:I

.field private xtags:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 66

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;->v3GPP:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v3, 0x11

    const-string v4, "144p"

    invoke-direct {v1, v3, v0, v2, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->v3GPP:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v5, 0x24

    const-string v6, "240p"

    invoke-direct {v2, v5, v0, v3, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0x12

    const-string v8, "360p"

    invoke-direct {v3, v7, v0, v5, v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v9, 0x22

    invoke-direct {v0, v9, v5, v7, v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v9, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v10, 0x23

    const-string v11, "480p"

    invoke-direct {v5, v10, v7, v9, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v9, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v12, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v13, 0x3b

    invoke-direct {v7, v13, v9, v12, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    move-object v9, v7

    new-instance v7, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v12, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v13, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v14, 0x4e

    invoke-direct {v7, v14, v12, v13, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v12, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v13, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v15, 0x16

    const-string v10, "720p"

    invoke-direct {v12, v15, v13, v14, v10}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    move-object v13, v9

    new-instance v9, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v17, v0

    const/16 v0, 0x25

    move-object/from16 v18, v1

    const-string v1, "1080p"

    invoke-direct {v9, v0, v14, v15, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v19, v2

    const/16 v2, 0x26

    invoke-direct {v0, v2, v14, v15, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v20, v0

    const/16 v0, 0x2b

    invoke-direct {v2, v0, v14, v15, v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    move-object v0, v12

    new-instance v12, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v21, v0

    const/16 v0, 0x2c

    invoke-direct {v12, v0, v14, v15, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    move-object v0, v13

    new-instance v13, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v14, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v22, v0

    const/16 v0, 0x2d

    invoke-direct {v13, v0, v14, v15, v10}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v14, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v23, v2

    const/16 v2, 0x2e

    invoke-direct {v14, v2, v0, v15, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v15, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v24, v3

    const/16 v3, 0xab

    move-object/from16 v25, v5

    const/16 v5, 0x80

    invoke-direct {v15, v3, v0, v2, v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v5, 0xac

    move-object/from16 v27, v7

    const/16 v7, 0x100

    invoke-direct {v0, v5, v2, v3, v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0x20

    move-object/from16 v29, v0

    const/16 v0, 0x257

    invoke-direct {v2, v0, v3, v5, v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0x30

    move-object/from16 v30, v2

    const/16 v2, 0x8b

    invoke-direct {v0, v2, v3, v5, v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0x8c

    move-object/from16 v31, v0

    const/16 v0, 0x80

    invoke-direct {v2, v7, v3, v5, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0x8d

    move-object/from16 v26, v2

    const/16 v2, 0x100

    invoke-direct {v0, v7, v3, v5, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0x258

    move-object/from16 v28, v0

    const/16 v0, 0x23

    invoke-direct {v2, v7, v3, v5, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0x32

    move-object/from16 v16, v2

    const/16 v2, 0xf9

    invoke-direct {v0, v2, v3, v5, v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0x46

    move-object/from16 v32, v0

    const/16 v0, 0xfa

    invoke-direct {v2, v0, v3, v5, v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0xfb

    move-object/from16 v33, v2

    const/16 v2, 0xa0

    invoke-direct {v0, v7, v3, v5, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-direct {v3, v2, v5, v7, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v34, v0

    const/16 v0, 0x18a

    invoke-direct {v2, v0, v5, v7, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v35, v2

    const/16 v2, 0x85

    invoke-direct {v0, v2, v5, v7, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v36, v0

    const/16 v0, 0x18b

    invoke-direct {v2, v0, v5, v7, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v37, v2

    const/16 v2, 0x86

    invoke-direct {v0, v2, v5, v7, v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v38, v0

    const/16 v0, 0x18c

    invoke-direct {v2, v0, v5, v7, v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v39, v2

    const/16 v2, 0x87

    invoke-direct {v0, v2, v5, v7, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v40, v0

    const/16 v0, 0xd4

    invoke-direct {v2, v0, v5, v7, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v41, v2

    const/16 v2, 0x18d

    invoke-direct {v0, v2, v5, v7, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v42, v0

    const/16 v0, 0x88

    invoke-direct {v2, v0, v5, v7, v10}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v43, v2

    const/16 v2, 0x18e

    invoke-direct {v0, v2, v5, v7, v10}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v44, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v46, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v47, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v48, "720p60"

    const/16 v49, 0x3c

    const/16 v45, 0x12a

    invoke-direct/range {v44 .. v49}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v45, v0

    const/16 v0, 0x89

    invoke-direct {v2, v0, v5, v7, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v46, v2

    const/16 v2, 0x18f

    invoke-direct {v0, v2, v5, v7, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v47, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v49, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v50, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v51, "1080p60"

    const/16 v52, 0x3c

    const/16 v48, 0x12b

    invoke-direct/range {v47 .. v52}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v48, v0

    const/16 v0, 0x190

    move-object/from16 v49, v3

    const-string v3, "1440p"

    invoke-direct {v2, v0, v5, v7, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v50, v2

    const/16 v2, 0x10a

    move-object/from16 v51, v9

    const-string v9, "2160p"

    invoke-direct {v0, v2, v5, v7, v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v52, v0

    const/16 v0, 0x191

    invoke-direct {v2, v0, v5, v7, v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v53, v2

    const/16 v2, 0x116

    invoke-direct {v0, v2, v5, v7, v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0xf2

    invoke-direct {v2, v7, v4, v5, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v7, 0xf3

    invoke-direct {v4, v7, v5, v6, v8}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v5, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v8, 0xf4

    invoke-direct {v5, v8, v6, v7, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v6, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v54, v0

    const/16 v0, 0xf5

    invoke-direct {v6, v0, v7, v8, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v55, v2

    const/16 v2, 0xf6

    invoke-direct {v0, v2, v7, v8, v11}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v11, 0xf7

    invoke-direct {v2, v11, v7, v8, v10}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v10, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v11, 0xf8

    invoke-direct {v7, v11, v8, v10, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v10, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v11, 0x10f

    invoke-direct {v1, v11, v8, v10, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v10, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v11, 0x110

    invoke-direct {v3, v11, v8, v10, v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v56, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v58, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v59, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v60, "720p60"

    const/16 v61, 0x3c

    const/16 v57, 0x12e

    invoke-direct/range {v56 .. v61}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v57, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v59, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v60, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v61, "1080p60"

    const/16 v62, 0x3c

    const/16 v58, 0x12f

    invoke-direct/range {v57 .. v62}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v58, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v60, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v61, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v62, "1440p60"

    const/16 v63, 0x3c

    const/16 v59, 0x134

    invoke-direct/range {v58 .. v63}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v8, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v10, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v11, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-object/from16 v59, v0

    const/16 v0, 0x139

    invoke-direct {v8, v0, v10, v11, v9}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v60, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    sget-object v62, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v63, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const-string v64, "2160p60"

    const/16 v65, 0x3c

    const/16 v61, 0x13b

    invoke-direct/range {v60 .. v65}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;I)V

    move-object/from16 v10, v20

    move-object/from16 v11, v23

    move-object/from16 v20, v28

    move-object/from16 v23, v33

    move-object/from16 v28, v37

    move-object/from16 v33, v42

    move-object/from16 v37, v46

    move-object/from16 v9, v51

    move-object/from16 v42, v53

    move-object/from16 v53, v56

    move-object/from16 v51, v1

    move-object/from16 v46, v5

    move-object/from16 v56, v8

    move-object/from16 v1, v18

    move-object/from16 v8, v21

    move-object/from16 v5, v25

    move-object/from16 v18, v31

    move-object/from16 v31, v40

    move-object/from16 v25, v49

    move-object/from16 v40, v50

    move-object/from16 v49, v2

    move-object/from16 v50, v7

    move-object/from16 v21, v16

    move-object/from16 v2, v19

    move-object/from16 v19, v26

    move-object/from16 v7, v27

    move-object/from16 v16, v29

    move-object/from16 v26, v35

    move-object/from16 v27, v36

    move-object/from16 v29, v38

    move-object/from16 v36, v44

    move-object/from16 v35, v45

    move-object/from16 v38, v48

    move-object/from16 v44, v55

    move-object/from16 v55, v58

    move-object/from16 v48, v59

    move-object/from16 v45, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v30

    move-object/from16 v30, v39

    move-object/from16 v39, v47

    move-object/from16 v47, v6

    move-object/from16 v6, v22

    move-object/from16 v22, v32

    move-object/from16 v32, v41

    move-object/from16 v41, v52

    move-object/from16 v52, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v34

    move-object/from16 v34, v43

    move-object/from16 v43, v54

    move-object/from16 v54, v57

    move-object/from16 v57, v60

    filled-new-array/range {v1 .. v57}, [Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    return-void
.end method

.method public constructor <init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->avgBitrate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->sampleRate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioChannels:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->contentLength:J

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->itagType:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iput p4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->avgBitrate:I

    return-void
.end method

.method public constructor <init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->avgBitrate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->sampleRate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioChannels:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->contentLength:J

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->itagType:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(ILcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->avgBitrate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->sampleRate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioChannels:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->contentLength:J

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->itagType:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    iput-object p3, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iput-object p4, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    iput p5, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->avgBitrate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->sampleRate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioChannels:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->contentLength:J

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->itagType:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->itagType:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->avgBitrate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->avgBitrate:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->sampleRate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->sampleRate:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioChannels:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioChannels:I

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->bitrate:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->bitrate:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->width:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->width:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->height:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->height:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->initStart:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->initStart:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->initEnd:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->initEnd:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->indexStart:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->indexStart:I

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->indexEnd:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->indexEnd:I

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    iget v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->targetDurationSec:I

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->targetDurationSec:I

    iget-wide v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iget-wide v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->contentLength:J

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->contentLength:J

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    iget-object v0, p1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-void
.end method

.method public static getItag(I)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;
    .registers 6

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    iget v4, v3, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v4, :cond_12

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    invoke-direct {v0, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;-><init>(Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;)V

    return-object v0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupported(I)Z
    .registers 7

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    iget v5, v4, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v5, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    return v2
.end method


# virtual methods
.method public getApproxDurationMs()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->approxDurationMs:J

    return-wide v0
.end method

.method public getAudioChannels()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioChannels:I

    return v0
.end method

.method public getAudioLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackType()Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object v0
.end method

.method public getAverageBitrate()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->avgBitrate:I

    return v0
.end method

.method public getBitrate()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->contentLength:J

    return-wide v0
.end method

.method public getFps()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->height:I

    return v0
.end method

.method public getIndexEnd()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->indexEnd:I

    return v0
.end method

.method public getIndexStart()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->indexStart:I

    return v0
.end method

.method public getInitEnd()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->initEnd:I

    return v0
.end method

.method public getInitStart()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->initStart:I

    return v0
.end method

.method public getLastModified()J
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->lastModified:J

    return-wide v0
.end method

.method public getMediaFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->mediaFormat:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->sampleRate:I

    return v0
.end method

.method public getTargetDurationSec()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->targetDurationSec:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->width:I

    return v0
.end method

.method public getXtags()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->xtags:Ljava/lang/String;

    return-object v0
.end method

.method public isDrc()Ljava/lang/Boolean;
    .registers 2

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->isDrc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setApproxDurationMs(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    move-wide v0, p1

    goto :goto_a

    :cond_8
    const-wide/16 v0, -0x1

    :goto_a
    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->approxDurationMs:J

    return-void
.end method

.method public setAudioChannels(I)V
    .registers 3

    if-lez p1, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioChannels:I

    return-void
.end method

.method public setAudioLocale(Ljava/util/Locale;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-void
.end method

.method public setAudioTrackId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    return-void
.end method

.method public setAudioTrackName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    return-void
.end method

.method public setAudioTrackType(Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->audioTrackType:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-void
.end method

.method public setBitrate(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->bitrate:I

    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    return-void
.end method

.method public setContentLength(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    move-wide v0, p1

    goto :goto_a

    :cond_8
    const-wide/16 v0, -0x1

    :goto_a
    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->contentLength:J

    return-void
.end method

.method public setFps(I)V
    .registers 3

    if-lez p1, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->height:I

    return-void
.end method

.method public setIndexEnd(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->indexEnd:I

    return-void
.end method

.method public setIndexStart(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->indexStart:I

    return-void
.end method

.method public setInitEnd(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->initEnd:I

    return-void
.end method

.method public setInitStart(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->initStart:I

    return-void
.end method

.method public setIsDrc(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->isDrc:Z

    return-void
.end method

.method public setLastModified(J)V
    .registers 3

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->lastModified:J

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .registers 3

    if-lez p1, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->sampleRate:I

    return-void
.end method

.method public setTargetDurationSec(I)V
    .registers 3

    if-lez p1, :cond_4

    move v0, p1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    iput v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->targetDurationSec:I

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->width:I

    return-void
.end method

.method public setXtags(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem;->xtags:Ljava/lang/String;

    return-void
.end method
