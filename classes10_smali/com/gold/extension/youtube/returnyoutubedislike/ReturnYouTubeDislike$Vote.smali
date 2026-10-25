.class public final enum Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;
.super Ljava/lang/Enum;
.source "ReturnYouTubeDislike.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Vote"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

.field public static final enum DISLIKE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

.field public static final enum LIKE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

.field public static final enum LIKE_REMOVE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;


# instance fields
.field public final endpoint:Ljava/lang/String;

.field public final value:I


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;
    .registers 3

    .line 56
    sget-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->LIKE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    sget-object v1, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->DISLIKE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    sget-object v2, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->LIKE_REMOVE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 57
    new-instance v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    const-string v1, "LIKE"

    const/4 v2, 0x0

    const-string v3, "like/like"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->LIKE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    .line 58
    new-instance v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    const-string v1, "like/dislike"

    const/4 v3, -0x1

    const-string v5, "DISLIKE"

    invoke-direct {v0, v5, v4, v1, v3}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->DISLIKE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    .line 59
    new-instance v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    const/4 v1, 0x2

    const-string v3, "like/removelike"

    const-string v4, "LIKE_REMOVE"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->LIKE_REMOVE:Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    .line 56
    invoke-static {}, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->$values()[Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->$VALUES:[Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->endpoint:Ljava/lang/String;

    .line 66
    iput p4, p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 56
    const-class v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;
    .registers 1

    .line 56
    sget-object v0, Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->$VALUES:[Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/returnyoutubedislike/ReturnYouTubeDislike$Vote;

    return-object v0
.end method
