.class public Lorg/jsoup/nodes/FormElement;
.super Lorg/jsoup/nodes/Element;
.source "FormElement.java"


# instance fields
.field private final elements:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    new-instance p1, Lorg/jsoup/select/Elements;

    invoke-direct {p1}, Lorg/jsoup/select/Elements;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    return-void
.end method


# virtual methods
.method public addElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/FormElement;
    .registers 3

    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Element;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/FormElement;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/FormElement;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/FormElement;->clone()Lorg/jsoup/nodes/FormElement;

    move-result-object v0

    return-object v0
.end method

.method protected removeChild(Lorg/jsoup/nodes/Node;)V
    .registers 3

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    iget-object v0, p0, Lorg/jsoup/nodes/FormElement;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
