.class Ljj$/util/stream/Collectors$1OptionalBox;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field present:Z

.field final synthetic val$op:Ljava/util/function/BinaryOperator;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/stream/Collectors$1OptionalBox;->val$op:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ljj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljj$/util/stream/Collectors$1OptionalBox;->present:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Ljj$/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/util/stream/Collectors$1OptionalBox;->val$op:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    goto :goto_14

    :cond_f
    iput-object p1, p0, Ljj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/stream/Collectors$1OptionalBox;->present:Z

    :goto_14
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
