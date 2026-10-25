.class public Lorg/mozilla/javascript/ast/Label;
.super Lorg/mozilla/javascript/ast/Jump;
.source "Label.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x83

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ast/Label;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x83

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    iput p2, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/Label;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/Label;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/Label;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_8
    if-eqz p1, :cond_15

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iput-object p1, p0, Lorg/mozilla/javascript/ast/Label;->name:Ljava/lang/String;

    return-void

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid label name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->makeIndent(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mozilla/javascript/ast/Label;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    return-void
.end method
