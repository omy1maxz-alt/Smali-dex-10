.class public abstract Lio/reactivex/rxjava3/internal/functions/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# static fields
.field static final ALWAYS_FALSE:Lio/reactivex/rxjava3/functions/Predicate;

.field static final ALWAYS_TRUE:Lio/reactivex/rxjava3/functions/Predicate;

.field public static final EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

.field static final EMPTY_CONSUMER:Lio/reactivex/rxjava3/functions/Consumer;

.field public static final EMPTY_LONG_CONSUMER:Lio/reactivex/rxjava3/functions/LongConsumer;

.field public static final EMPTY_RUNNABLE:Ljava/lang/Runnable;

.field public static final ERROR_CONSUMER:Lio/reactivex/rxjava3/functions/Consumer;

.field static final IDENTITY:Lio/reactivex/rxjava3/functions/Function;

.field static final NULL_SUPPLIER:Lio/reactivex/rxjava3/functions/Supplier;

.field public static final ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

.field public static final REQUEST_MAX:Lio/reactivex/rxjava3/functions/Consumer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$Identity;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$Identity;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->IDENTITY:Lio/reactivex/rxjava3/functions/Function;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyRunnable;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_RUNNABLE:Ljava/lang/Runnable;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyAction;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyAction;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/rxjava3/functions/Action;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyConsumer;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyConsumer;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex/rxjava3/functions/Consumer;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$ErrorConsumer;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$ErrorConsumer;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ERROR_CONSUMER:Lio/reactivex/rxjava3/functions/Consumer;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$OnErrorMissingConsumer;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$OnErrorMissingConsumer;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/rxjava3/functions/Consumer;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyLongConsumer;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$EmptyLongConsumer;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_LONG_CONSUMER:Lio/reactivex/rxjava3/functions/LongConsumer;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$TruePredicate;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$TruePredicate;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ALWAYS_TRUE:Lio/reactivex/rxjava3/functions/Predicate;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$FalsePredicate;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$FalsePredicate;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ALWAYS_FALSE:Lio/reactivex/rxjava3/functions/Predicate;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$NullProvider;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$NullProvider;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->NULL_SUPPLIER:Lio/reactivex/rxjava3/functions/Supplier;

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$MaxRequestSubscription;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/functions/Functions$MaxRequestSubscription;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->REQUEST_MAX:Lio/reactivex/rxjava3/functions/Consumer;

    return-void
.end method

.method public static actionConsumer(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/functions/Consumer;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$ActionConsumer;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/functions/Functions$ActionConsumer;-><init>(Lio/reactivex/rxjava3/functions/Action;)V

    return-object v0
.end method

.method public static alwaysTrue()Lio/reactivex/rxjava3/functions/Predicate;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->ALWAYS_TRUE:Lio/reactivex/rxjava3/functions/Predicate;

    return-object v0
.end method

.method public static emptyConsumer()Lio/reactivex/rxjava3/functions/Consumer;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex/rxjava3/functions/Consumer;

    return-object v0
.end method

.method public static identity()Lio/reactivex/rxjava3/functions/Function;
    .registers 1

    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->IDENTITY:Lio/reactivex/rxjava3/functions/Function;

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/rxjava3/functions/BiFunction;)Lio/reactivex/rxjava3/functions/Function;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$Array2Func;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/functions/Functions$Array2Func;-><init>(Lio/reactivex/rxjava3/functions/BiFunction;)V

    return-object v0
.end method

.method public static toFunction(Lio/reactivex/rxjava3/functions/Function6;)Lio/reactivex/rxjava3/functions/Function;
    .registers 2

    new-instance v0, Lio/reactivex/rxjava3/internal/functions/Functions$Array6Func;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/functions/Functions$Array6Func;-><init>(Lio/reactivex/rxjava3/functions/Function6;)V

    return-object v0
.end method
