.class public final Lus/shandian/giga/get/MissionRecoveryInfo$Creator;
.super Ljava/lang/Object;
.source "MissionRecoveryInfo.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lus/shandian/giga/get/MissionRecoveryInfo$Creator;->createFromParcel(Landroid/os/Parcel;)Lus/shandian/giga/get/MissionRecoveryInfo;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lus/shandian/giga/get/MissionRecoveryInfo;
    .registers 10

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->valueOf(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v6, v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lcom/gold/youtube/om7753/extractor/MediaFormat;Ljava/lang/String;ZICLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lus/shandian/giga/get/MissionRecoveryInfo$Creator;->newArray(I)[Lus/shandian/giga/get/MissionRecoveryInfo;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lus/shandian/giga/get/MissionRecoveryInfo;
    .registers 2

    new-array p1, p1, [Lus/shandian/giga/get/MissionRecoveryInfo;

    return-object p1
.end method
