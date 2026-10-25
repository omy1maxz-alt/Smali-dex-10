.class public final Lorg/jsoup/select/Evaluator$Id;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    iput-object p1, p0, Lorg/jsoup/select/Evaluator$Id;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 3

    iget-object p1, p0, Lorg/jsoup/select/Evaluator$Id;->id:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jsoup/select/Evaluator$Id;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "#%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
