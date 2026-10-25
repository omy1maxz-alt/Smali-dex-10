.class public final Lcom/gold/youtube/om7753/util/SavedState$Creator;
.super Ljava/lang/Object;
.source "SavedState.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/gold/youtube/om7753/util/SavedState;
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/gold/youtube/om7753/util/SavedState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/gold/youtube/om7753/util/SavedState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/util/SavedState$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/gold/youtube/om7753/util/SavedState;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/gold/youtube/om7753/util/SavedState;
    .registers 2

    new-array p1, p1, [Lcom/gold/youtube/om7753/util/SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/util/SavedState$Creator;->newArray(I)[Lcom/gold/youtube/om7753/util/SavedState;

    move-result-object p1

    return-object p1
.end method
