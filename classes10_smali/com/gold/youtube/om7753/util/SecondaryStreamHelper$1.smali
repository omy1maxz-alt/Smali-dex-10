.class synthetic Lcom/gold/youtube/om7753/util/SecondaryStreamHelper$1;
.super Ljava/lang/Object;
.source "SecondaryStreamHelper.java"


# static fields
.field static final synthetic $SwitchMap$com$gold$youtube$extractor$MediaFormat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->values()[Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper$1;->$SwitchMap$com$gold$youtube$extractor$MediaFormat:[I

    :try_start_9
    sget-object v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBM:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper$1;->$SwitchMap$com$gold$youtube$extractor$MediaFormat:[I

    sget-object v1, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
