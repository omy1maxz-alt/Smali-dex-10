.class public Lcom/gold/youtube/VersionInt;
.super Ljava/lang/Object;


# static fields
.field public static version1:I

.field public static version2:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2

    sput v0, Lcom/gold/youtube/VersionInt;->version1:I

    const/4 v0, 0x0

    sput v0, Lcom/gold/youtube/VersionInt;->version2:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
