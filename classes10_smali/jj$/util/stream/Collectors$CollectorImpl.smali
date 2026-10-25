.class Ljj$/util/stream/Collectors$CollectorImpl;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljj$/util/stream/Collector;


# instance fields
.field private final accumulator:Ljava/util/function/BiConsumer;

.field private final characteristics:Ljava/util/Set;

.field private final combiner:Ljava/util/function/BinaryOperator;

.field private final finisher:Ljava/util/function/Function;

.field private final supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V
    .registers 11

    invoke-static {}, Ljj$/util/stream/Collectors;->-$$Nest$smcastingIdentity()Ljava/util/function/Function;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/Collectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljj$/util/stream/Collectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Ljj$/util/stream/Collectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    iput-object p4, p0, Ljj$/util/stream/Collectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    iput-object p5, p0, Ljj$/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Collectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method public characteristics()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    return-object v0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Collectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    return-object v0
.end method

.method public finisher()Ljava/util/function/Function;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Collectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    return-object v0
.end method

.method public supplier()Ljava/util/function/Supplier;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Collectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    return-object v0
.end method
