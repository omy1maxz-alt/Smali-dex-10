.class public final Lorg/jsoup/select/Evaluator$IsOnlyChild;
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
    .registers 3

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    if-eqz p1, :cond_16

    instance-of p1, p1, Lorg/jsoup/nodes/Document;

    if-nez p1, :cond_16

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->siblingElements()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":only-child"

    return-object v0
.end method
