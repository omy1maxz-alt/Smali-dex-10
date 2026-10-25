.class abstract synthetic Lcom/gold/youtube/om7753/download/DownloadDialog$3;
.super Ljava/lang/Object;
.source "DownloadDialog.java"


# static fields
.field static final synthetic $SwitchMap$us$shandian$giga$service$MissionState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lus/shandian/giga/service/MissionState;->values()[Lus/shandian/giga/service/MissionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gold/youtube/om7753/download/DownloadDialog$3;->$SwitchMap$us$shandian$giga$service$MissionState:[I

    :try_start_9
    sget-object v1, Lus/shandian/giga/service/MissionState;->Finished:Lus/shandian/giga/service/MissionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gold/youtube/om7753/download/DownloadDialog$3;->$SwitchMap$us$shandian$giga$service$MissionState:[I

    sget-object v1, Lus/shandian/giga/service/MissionState;->Pending:Lus/shandian/giga/service/MissionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/gold/youtube/om7753/download/DownloadDialog$3;->$SwitchMap$us$shandian$giga$service$MissionState:[I

    sget-object v1, Lus/shandian/giga/service/MissionState;->PendingRunning:Lus/shandian/giga/service/MissionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/gold/youtube/om7753/download/DownloadDialog$3;->$SwitchMap$us$shandian$giga$service$MissionState:[I

    sget-object v1, Lus/shandian/giga/service/MissionState;->None:Lus/shandian/giga/service/MissionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
