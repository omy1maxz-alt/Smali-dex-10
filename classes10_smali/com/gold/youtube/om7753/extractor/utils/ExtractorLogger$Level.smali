.class public final enum Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;
.super Ljava/lang/Enum;
.source "ExtractorLogger.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

.field public static final enum DEBUG:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

.field public static final enum ERROR:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

.field public static final enum WARN:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->DEBUG:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const-string v1, "WARN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->WARN:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ERROR:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->DEBUG:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->WARN:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->ERROR:Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    filled-new-array {v0, v1, v2}, [Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->$VALUES:[Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->$VALUES:[Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/utils/ExtractorLogger$Level;

    return-object v0
.end method
