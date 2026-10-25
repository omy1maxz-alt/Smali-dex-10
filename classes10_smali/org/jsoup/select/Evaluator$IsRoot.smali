.class public final Lorg/jsoup/select/Evaluator$IsRoot;
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
    .registers 5

    instance-of v0, p1, Lorg/jsoup/nodes/Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object p1

    :cond_9
    if-ne p2, p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":root"

    return-object v0
.end method
