.class public final enum Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;
.super Ljava/lang/Enum;
.source "ItagItem.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    const-string v1, "VIDEO_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    filled-new-array {v0, v1, v2}, [Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;
    .registers 2

    const-class v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    return-object v0
.end method

.method public static values()[Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->$VALUES:[Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    invoke-virtual {v0}, [Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/youtube/om7753/extractor/services/youtube/ItagItem$ItagType;

    return-object v0
.end method
