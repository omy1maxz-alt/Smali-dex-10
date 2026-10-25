.class public final Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;
.super Ljava/lang/Object;
.source "ExtractorLogger.java"


# static fields
.field private static final EMPTY_LOGGER:Lcom/gold/youtube/om7753/extractor/utils/Logger;

.field private static volatile logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$EmptyLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$EmptyLogger;-><init>(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger-IA;)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->EMPTY_LOGGER:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->EMPTY_LOGGER:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->DEBUG:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->log(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->DEBUG:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->log(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->DEBUG:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logFormat(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->DEBUG:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logFormat(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ERROR:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->log(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ERROR:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->log(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ERROR:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logFormat(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ERROR:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logFormat(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_82

    if-eqz p1, :cond_82

    array-length v0, p1

    if-nez v0, :cond_9

    goto/16 :goto_82

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    const/16 v3, 0x20

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_22
    if-ge v1, v3, :cond_7d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_3e

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v3, :cond_3e

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3e

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_22

    :cond_3e
    const/16 v6, 0x7d

    if-ne v4, v6, :cond_54

    add-int/lit8 v7, v1, 0x1

    if-ge v7, v3, :cond_54

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_54

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_22

    :cond_54
    if-ne v4, v5, :cond_76

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_62

    invoke-virtual {v0, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_7d

    :cond_62
    array-length v6, p1

    if-ge v2, v6, :cond_6e

    add-int/lit8 v6, v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v6

    goto :goto_73

    :cond_6e
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, p0, v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_73
    add-int/lit8 v1, v5, 0x1

    goto :goto_22

    :cond_76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_7d
    :goto_7d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_82
    :goto_82
    return-object p0
.end method

.method private static log(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->EMPTY_LOGGER:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$1;->$SwitchMap$com$gold$youtube$om7753$extractor$utils$ExtractorLogger$Level:[I

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    goto :goto_3d

    :pswitch_13  #0x3
    if-nez p3, :cond_1b

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    invoke-interface {v0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_1b
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    invoke-interface {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/utils/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    :pswitch_21  #0x2
    if-nez p3, :cond_29

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    invoke-interface {v0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_29
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    invoke-interface {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    :pswitch_2f  #0x1
    if-nez p3, :cond_37

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    invoke-interface {v0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_37
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    invoke-interface {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2f  #00000001
        :pswitch_21  #00000002
        :pswitch_13  #00000003
    .end packed-switch
.end method

.method private static varargs logFormat(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->EMPTY_LOGGER:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    invoke-static {p3, p4}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->log(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setLogger(Lcom/gold/youtube/om7753/extractor/utils/Logger;)V
    .registers 2

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->EMPTY_LOGGER:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    :goto_6
    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logger:Lcom/gold/youtube/om7753/extractor/utils/Logger;

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->WARN:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->log(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->WARN:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->log(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->WARN:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logFormat(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->WARN:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger;->logFormat(Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
