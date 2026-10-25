.class public Lorg/mozilla/javascript/ast/ErrorNode;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "ErrorNode.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/Node;->type:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ErrorNode;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ErrorNode;->message:Ljava/lang/String;

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    return-void
.end method
