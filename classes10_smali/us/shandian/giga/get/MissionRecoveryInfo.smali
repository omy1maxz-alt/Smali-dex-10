.class public final Lus/shandian/giga/get/MissionRecoveryInfo;
.super Ljava/lang/Object;
.source "MissionRecoveryInfo.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private desired:Ljava/lang/String;

.field private desiredBitrate:I

.field private format:Lcom/gold/youtube/om7753/extractor/MediaFormat;

.field private isDesired2:Z

.field private kind:C

.field private validateCondition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lus/shandian/giga/get/MissionRecoveryInfo$Creator;

    invoke-direct {v0}, Lus/shandian/giga/get/MissionRecoveryInfo$Creator;-><init>()V

    sput-object v0, Lus/shandian/giga/get/MissionRecoveryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;)V
    .registers 8

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iput-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    iput-boolean p3, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    iput p4, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    iput-char p5, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    iput-object p6, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v0, p2

    :goto_8
    and-int/lit8 v2, p7, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_10

    :cond_f
    move v2, p3

    :goto_10
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    goto :goto_17

    :cond_16
    move v4, p4

    :goto_17
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_1c

    goto :goto_1d

    :cond_1c
    move v3, p5

    :goto_1d
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_22

    goto :goto_23

    :cond_22
    move-object v1, p6

    :goto_23
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move p5, v2

    move p6, v4

    move p7, v3

    move-object p8, v1

    invoke-direct/range {p2 .. p8}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/stream/Stream;)V
    .registers 12

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    instance-of v0, p1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    if-eqz v0, :cond_2c

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result p1

    iput p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    const/16 p1, 0x61

    iput-char p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    goto :goto_59

    :cond_2c
    instance-of v0, p1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    if-eqz v0, :cond_43

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result p1

    iput-boolean p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    const/16 p1, 0x76

    iput-char p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    goto :goto_59

    :cond_43
    instance-of v0, p1, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    if-eqz v0, :cond_5a

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->isAutoGenerated()Z

    move-result p1

    iput-boolean p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    const/16 p1, 0x73

    iput-char p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    :goto_59
    return-void

    :cond_5a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown stream kind"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getDesired()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    return-object v0
.end method

.method public final getDesiredBitrate()I
    .registers 2

    iget v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    return v0
.end method

.method public final getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    return-object v0
.end method

.method public final getKind()C
    .registers 2

    iget-char v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    return v0
.end method

.method public final getValidateCondition()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    return-object v0
.end method

.method public final isDesired2()Z
    .registers 2

    iget-boolean v0, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    return v0
.end method

.method public final setValidateCondition(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    const/16 v2, 0x61

    if-ne v1, v2, :cond_23

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bitrate="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_79

    :cond_23
    const/16 v2, 0x76

    if-ne v1, v2, :cond_4b

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quality="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " videoOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_79

    :cond_4b
    const/16 v2, 0x73

    if-ne v1, v2, :cond_72

    const-string v1, "subtitles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " autoGenerated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_79

    :cond_72
    const-string v1, "other"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    :goto_79
    const-string v2, " format="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "str.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->format:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desired:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->isDesired2:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->desiredBitrate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-char p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->kind:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lus/shandian/giga/get/MissionRecoveryInfo;->validateCondition:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
