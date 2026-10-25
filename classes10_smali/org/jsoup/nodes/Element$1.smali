.class Lorg/jsoup/nodes/Element$1;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field final synthetic this$0:Lorg/jsoup/nodes/Element;

.field final synthetic val$accum:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .registers 3

    iput-object p1, p0, Lorg/jsoup/nodes/Element$1;->this$0:Lorg/jsoup/nodes/Element;

    iput-object p2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .registers 3

    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz p2, :cond_c

    check-cast p1, Lorg/jsoup/nodes/TextNode;

    iget-object p2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lorg/jsoup/nodes/Element;->access$000(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    goto :goto_37

    :cond_c
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_37

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object p2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_37

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result p2

    if-nez p2, :cond_28

    const-string p2, "br"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Node;->isNode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    :cond_28
    iget-object p1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_37

    iget-object p1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_37
    :goto_37
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .registers 3

    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_34

    move-object p2, p1

    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result p2

    if-eqz p2, :cond_34

    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    if-nez p2, :cond_25

    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_34

    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lorg/jsoup/nodes/Element;->access$100(Lorg/jsoup/nodes/Element;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result p1

    if-nez p1, :cond_34

    :cond_25
    iget-object p1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_34
    return-void
.end method
