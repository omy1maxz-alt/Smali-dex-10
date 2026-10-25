.class public final enum Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;
.super Ljava/lang/Enum;
.source "Image.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

.field public static final enum HIGH:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

.field public static final enum LOW:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

.field public static final enum MEDIUM:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

.field public static final enum UNKNOWN:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->HIGH:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->MEDIUM:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    const-string v1, "LOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->LOW:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->HIGH:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->MEDIUM:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->LOW:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->$VALUES:[Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromHeight(I)Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;
    .registers 2

    if-gtz p0, :cond_5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->UNKNOWN:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-object v0

    :cond_5
    const/16 v0, 0xaf

    if-ge p0, v0, :cond_c

    sget-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->LOW:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-object v0

    :cond_c
    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_13

    sget-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->MEDIUM:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-object v0

    :cond_13
    sget-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->HIGH:Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->$VALUES:[Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    return-object v0
.end method
