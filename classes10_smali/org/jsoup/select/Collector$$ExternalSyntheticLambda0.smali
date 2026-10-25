.class public final synthetic Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic f$0:Lorg/jsoup/select/Evaluator;

.field public final synthetic f$1:Lorg/jsoup/nodes/Element;

.field public final synthetic f$2:Lorg/jsoup/select/Elements;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;->f$0:Lorg/jsoup/select/Evaluator;

    iput-object p2, p0, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;->f$1:Lorg/jsoup/nodes/Element;

    iput-object p3, p0, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;->f$2:Lorg/jsoup/select/Elements;

    return-void
.end method


# virtual methods
.method public final head(Lorg/jsoup/nodes/Node;I)V
    .registers 6

    iget-object v0, p0, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;->f$0:Lorg/jsoup/select/Evaluator;

    iget-object v1, p0, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;->f$1:Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/select/Collector$$ExternalSyntheticLambda0;->f$2:Lorg/jsoup/select/Elements;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/jsoup/select/Collector;->$r8$lambda$vZmCXg9I8SS0Em-X6lKRDz13BBU(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/nodes/Node;I)V

    return-void
.end method

.method public synthetic tail(Lorg/jsoup/nodes/Node;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/jsoup/select/NodeVisitor$-CC;->$default$tail(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;I)V

    return-void
.end method
