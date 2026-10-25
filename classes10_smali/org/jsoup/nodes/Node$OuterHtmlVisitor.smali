.class Lorg/jsoup/nodes/Node$OuterHtmlVisitor;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field private final accum:Ljava/lang/Appendable;

.field private final out:Lorg/jsoup/nodes/Document$OutputSettings;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    iput-object p2, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->prepareEncoder()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    iget-object v1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/Node;->outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    new-instance p2, Lorg/jsoup/SerializationException;

    invoke-direct {p2, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .registers 5

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :try_start_c
    iget-object v0, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    iget-object v1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/Node;->outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    move-exception p1

    new-instance p2, Lorg/jsoup/SerializationException;

    invoke-direct {p2, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1b
    :goto_1b
    return-void
.end method
