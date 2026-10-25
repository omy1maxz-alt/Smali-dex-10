.class public final enum Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;
.super Ljava/lang/Enum;
.source "StreamExtractor.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

.field public static final enum INTERNAL:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

.field public static final enum OTHER:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

.field public static final enum PRIVATE:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

.field public static final enum PUBLIC:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

.field public static final enum UNLISTED:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    const-string v1, "UNLISTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    const-string v1, "PRIVATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->PRIVATE:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    const-string v1, "INTERNAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->INTERNAL:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->OTHER:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->PRIVATE:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->INTERNAL:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->OTHER:Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->$VALUES:[Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method
