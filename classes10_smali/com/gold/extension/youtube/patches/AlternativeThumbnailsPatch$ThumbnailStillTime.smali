.class public final enum Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;
.super Ljava/lang/Enum;
.source "AlternativeThumbnailsPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThumbnailStillTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

.field public static final enum BEGINNING:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

.field public static final enum END:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

.field public static final enum MIDDLE:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;


# instance fields
.field final altImageNumber:I


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;
    .registers 3

    .line 126
    sget-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->BEGINNING:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    sget-object v1, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->MIDDLE:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    sget-object v2, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->END:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 127
    new-instance v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    const-string v1, "BEGINNING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->BEGINNING:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    .line 128
    new-instance v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    const-string v1, "MIDDLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->MIDDLE:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    .line 129
    new-instance v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    const-string v1, "END"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->END:Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    .line 126
    invoke-static {}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->$values()[Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->$VALUES:[Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput p3, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->altImageNumber:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 126
    const-class v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;
    .registers 1

    .line 126
    sget-object v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->$VALUES:[Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailStillTime;

    return-object v0
.end method
