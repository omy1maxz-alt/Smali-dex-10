.class Lorg/jsoup/select/Collector$FirstFinder;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/jsoup/select/NodeFilter;


# instance fields
.field private final eval:Lorg/jsoup/select/Evaluator;

.field private evalRoot:Lorg/jsoup/nodes/Element;

.field private match:Lorg/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->eval:Lorg/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method find(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .registers 3

    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    invoke-static {p0, p2}, Lorg/jsoup/select/NodeTraversor;->filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;

    iget-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .registers 4

    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_15

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object p2, p0, Lorg/jsoup/select/Collector$FirstFinder;->eval:Lorg/jsoup/select/Evaluator;

    iget-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p2

    if-eqz p2, :cond_15

    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1

    :cond_15
    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .registers 3

    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1
.end method
