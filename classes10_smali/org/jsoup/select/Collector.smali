.class public abstract Lorg/jsoup/select/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# direct methods
.method public static synthetic $r8$lambda$vZmCXg9I8SS0Em-X6lKRDz13BBU(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/nodes/Node;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lorg/jsoup/select/Collector;->lambda$collect$0(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/nodes/Node;I)V

    return-void
.end method

.method public static collect(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/select/Elements;
    .registers 4

    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    new-instance v1, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;-><init>(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V

    invoke-static {v1, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-object v0
.end method

.method public static findFirst(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .registers 3

    new-instance v0, Lorg/jsoup/select/Collector$FirstFinder;

    invoke-direct {v0, p0}, Lorg/jsoup/select/Collector$FirstFinder;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-virtual {v0, p1, p1}, Lorg/jsoup/select/Collector$FirstFinder;->find(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$collect$0(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/nodes/Node;I)V
    .registers 5

    instance-of p4, p3, Lorg/jsoup/nodes/Element;

    if-eqz p4, :cond_f

    check-cast p3, Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, p1, p3}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {p2, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method
