.class public final Lorg/jsoup/select/Evaluator$IsEmpty;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 4

    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/nodes/Node;

    instance-of v0, p2, Lorg/jsoup/nodes/Comment;

    if-nez v0, :cond_8

    instance-of v0, p2, Lorg/jsoup/nodes/XmlDeclaration;

    if-nez v0, :cond_8

    instance-of p2, p2, Lorg/jsoup/nodes/DocumentType;

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_22
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":empty"

    return-object v0
.end method
