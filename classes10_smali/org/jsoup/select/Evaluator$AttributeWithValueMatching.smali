.class public final Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# instance fields
.field key:Ljava/lang/String;

.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    iput-object p2, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 4

    iget-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s~=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
