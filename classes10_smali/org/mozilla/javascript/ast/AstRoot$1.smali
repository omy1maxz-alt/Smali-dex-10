.class Lorg/mozilla/javascript/ast/AstRoot$1;
.super Ljava/lang/Object;
.source "AstRoot.java"

# interfaces
.implements Lorg/mozilla/javascript/ast/NodeVisitor;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/ast/AstRoot;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ast/AstRoot;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/AstRoot$1;->this$0:Lorg/mozilla/javascript/ast/AstRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/mozilla/javascript/ast/AstNode;)Z
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x89

    if-ne v0, v2, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No parent for node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
