.class synthetic Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$1;
.super Ljava/lang/Object;
.source "ExtractorLogger.java"


# static fields
.field static final synthetic $SwitchMap$com$gold$youtube$om7753$extractor$utils$ExtractorLogger$Level:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->values()[Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$1;->$SwitchMap$com$gold$youtube$om7753$extractor$utils$ExtractorLogger$Level:[I

    :try_start_9
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$1;->$SwitchMap$com$gold$youtube$om7753$extractor$utils$ExtractorLogger$Level:[I

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->DEBUG:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$1;->$SwitchMap$com$gold$youtube$om7753$extractor$utils$ExtractorLogger$Level:[I

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->WARN:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$1;->$SwitchMap$com$gold$youtube$om7753$extractor$utils$ExtractorLogger$Level:[I

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ERROR:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-void
.end method
