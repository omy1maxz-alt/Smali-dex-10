.class abstract synthetic Lio/reactivex/rxjava3/core/Observable$1;
.super Ljava/lang/Object;
.source "Observable.java"


# static fields
.field static final synthetic $SwitchMap$io$reactivex$rxjava3$core$BackpressureStrategy:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/reactivex/rxjava3/core/BackpressureStrategy;->values()[Lio/reactivex/rxjava3/core/BackpressureStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/reactivex/rxjava3/core/Observable$1;->$SwitchMap$io$reactivex$rxjava3$core$BackpressureStrategy:[I

    :try_start_9
    sget-object v1, Lio/reactivex/rxjava3/core/BackpressureStrategy;->DROP:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/reactivex/rxjava3/core/Observable$1;->$SwitchMap$io$reactivex$rxjava3$core$BackpressureStrategy:[I

    sget-object v1, Lio/reactivex/rxjava3/core/BackpressureStrategy;->LATEST:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/reactivex/rxjava3/core/Observable$1;->$SwitchMap$io$reactivex$rxjava3$core$BackpressureStrategy:[I

    sget-object v1, Lio/reactivex/rxjava3/core/BackpressureStrategy;->MISSING:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/reactivex/rxjava3/core/Observable$1;->$SwitchMap$io$reactivex$rxjava3$core$BackpressureStrategy:[I

    sget-object v1, Lio/reactivex/rxjava3/core/BackpressureStrategy;->ERROR:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
