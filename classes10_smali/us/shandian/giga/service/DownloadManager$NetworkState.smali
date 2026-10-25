.class final enum Lus/shandian/giga/service/DownloadManager$NetworkState;
.super Ljava/lang/Enum;
.source "DownloadManager.java"


# static fields
.field private static final synthetic $VALUES:[Lus/shandian/giga/service/DownloadManager$NetworkState;

.field public static final enum MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

.field public static final enum Operating:Lus/shandian/giga/service/DownloadManager$NetworkState;

.field public static final enum Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;


# direct methods
.method private static synthetic $values()[Lus/shandian/giga/service/DownloadManager$NetworkState;
    .registers 3

    sget-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    sget-object v1, Lus/shandian/giga/service/DownloadManager$NetworkState;->Operating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    sget-object v2, Lus/shandian/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    filled-new-array {v0, v1, v2}, [Lus/shandian/giga/service/DownloadManager$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lus/shandian/giga/service/DownloadManager$NetworkState;

    const-string v1, "Unavailable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/service/DownloadManager$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->Unavailable:Lus/shandian/giga/service/DownloadManager$NetworkState;

    new-instance v0, Lus/shandian/giga/service/DownloadManager$NetworkState;

    const-string v1, "Operating"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/service/DownloadManager$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->Operating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    new-instance v0, Lus/shandian/giga/service/DownloadManager$NetworkState;

    const-string v1, "MeteredOperating"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/service/DownloadManager$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lus/shandian/giga/service/DownloadManager$NetworkState;

    invoke-static {}, Lus/shandian/giga/service/DownloadManager$NetworkState;->$values()[Lus/shandian/giga/service/DownloadManager$NetworkState;

    move-result-object v0

    sput-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->$VALUES:[Lus/shandian/giga/service/DownloadManager$NetworkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lus/shandian/giga/service/DownloadManager$NetworkState;
    .registers 2

    const-class v0, Lus/shandian/giga/service/DownloadManager$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lus/shandian/giga/service/DownloadManager$NetworkState;

    return-object v0
.end method

.method public static values()[Lus/shandian/giga/service/DownloadManager$NetworkState;
    .registers 1

    sget-object v0, Lus/shandian/giga/service/DownloadManager$NetworkState;->$VALUES:[Lus/shandian/giga/service/DownloadManager$NetworkState;

    invoke-virtual {v0}, [Lus/shandian/giga/service/DownloadManager$NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lus/shandian/giga/service/DownloadManager$NetworkState;

    return-object v0
.end method
