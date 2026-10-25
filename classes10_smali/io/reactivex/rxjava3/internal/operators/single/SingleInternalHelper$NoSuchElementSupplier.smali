.class final enum Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;
.super Ljava/lang/Enum;
.source "SingleInternalHelper.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Supplier;


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

.field public static final enum INSTANCE:Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    aput-object v0, v1, v2

    sput-object v1, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;->$VALUES:[Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;
    .registers 2

    const-class v0, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    return-object p0
.end method

.method public static values()[Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;->$VALUES:[Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    invoke-virtual {v0}, [Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleInternalHelper$NoSuchElementSupplier;->get()Ljava/util/NoSuchElementException;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/NoSuchElementException;
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    return-object v0
.end method
