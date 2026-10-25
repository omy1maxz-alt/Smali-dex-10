.class abstract synthetic Lcom/gold/youtube/om7753/util/Localization$1;
.super Ljava/lang/Object;
.source "Localization.java"


# static fields
.field static final synthetic $SwitchMap$com$gold$youtube$om7753$extractor$stream$AudioTrackType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->values()[Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gold/youtube/om7753/util/Localization$1;->$SwitchMap$com$gold$youtube$om7753$extractor$stream$AudioTrackType:[I

    :try_start_9
    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->ORIGINAL:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gold/youtube/om7753/util/Localization$1;->$SwitchMap$com$gold$youtube$om7753$extractor$stream$AudioTrackType:[I

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DUBBED:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/gold/youtube/om7753/util/Localization$1;->$SwitchMap$com$gold$youtube$om7753$extractor$stream$AudioTrackType:[I

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
