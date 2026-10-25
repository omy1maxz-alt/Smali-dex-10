.class public abstract Lorg/mozilla/javascript/ast/AstNode;
.super Lorg/mozilla/javascript/Node;
.source "AstNode.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static operatorNames:Ljava/util/Map;


# instance fields
.field protected inlineComment:Lorg/mozilla/javascript/ast/AstNode;

.field protected length:I

.field protected parent:Lorg/mozilla/javascript/ast/AstNode;

.field protected position:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "in"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "typeof"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "instanceof"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "delete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ","

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ":"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "||"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "++"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "--"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "^"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "=="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<<"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">>>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "-"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "*"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "/"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "%"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "!"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "~"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "==="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!=="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "|="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "&="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<<="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">>="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">>>="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "+="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "/="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "%="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "^="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    const/16 v1, 0x7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "void"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    iput v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    iput p2, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method

.method public static codeBug()Ljava/lang/RuntimeException;
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static operatorToString(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/ast/AstNode;->operatorNames:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addChild(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method

.method protected assertNotNull(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->compareTo(Lorg/mozilla/javascript/ast/AstNode;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/mozilla/javascript/ast/AstNode;)I
    .registers 6

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_14

    return v2

    :cond_14
    const/4 v3, 0x1

    if-ge v1, v0, :cond_18

    return v3

    :cond_18
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_23

    return v2

    :cond_23
    if-ge v1, v0, :cond_26

    return v3

    :cond_26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public debugPrint()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode$DebugPrintVisitor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public depth()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_c
    return v0
.end method

.method public getAbsolutePosition()I
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    iget-object v1, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    :goto_4
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getPosition()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    goto :goto_4

    :cond_10
    return v0
.end method

.method public getAstRoot()Lorg/mozilla/javascript/ast/AstRoot;
    .registers 3

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_c

    instance-of v1, v0, Lorg/mozilla/javascript/ast/AstRoot;

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_1

    :cond_c
    check-cast v0, Lorg/mozilla/javascript/ast/AstRoot;

    return-object v0
.end method

.method public getEnclosingFunction()Lorg/mozilla/javascript/ast/FunctionNode;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_f

    instance-of v1, v0, Lorg/mozilla/javascript/ast/FunctionNode;

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_4

    :cond_f
    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    return-object v0
.end method

.method public getEnclosingScope()Lorg/mozilla/javascript/ast/Scope;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_f

    instance-of v1, v0, Lorg/mozilla/javascript/ast/Scope;

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    goto :goto_4

    :cond_f
    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    return-object v0
.end method

.method public getInlineComment()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->inlineComment:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getLength()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return v0
.end method

.method public getLineno()I
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Node;->lineno:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v0

    return v0

    :cond_f
    return v1
.end method

.method public getParent()Lorg/mozilla/javascript/ast/AstNode;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return v0
.end method

.method public hasSideEffects()Z
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_42

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_42

    const/16 v1, 0x25

    if-eq v0, v1, :cond_42

    const/16 v1, 0x26

    if-eq v0, v1, :cond_42

    const/16 v1, 0x32

    if-eq v0, v1, :cond_42

    const/16 v1, 0x33

    if-eq v0, v1, :cond_42

    const/16 v1, 0x38

    if-eq v0, v1, :cond_42

    const/16 v1, 0x39

    if-eq v0, v1, :cond_42

    const/16 v1, 0x52

    if-eq v0, v1, :cond_42

    const/16 v1, 0x53

    if-eq v0, v1, :cond_42

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_42

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_42

    sparse-switch v0, :sswitch_data_44

    packed-switch v0, :pswitch_data_e6

    packed-switch v0, :pswitch_data_f8

    packed-switch v0, :pswitch_data_102

    const/4 v0, 0x0

    return v0

    :cond_42
    :pswitch_42  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x45, 0x46, 0x47, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73
    :sswitch_42
    const/4 v0, 0x1

    return v0

    :sswitch_data_44
    .sparse-switch
        -0x1 -> :sswitch_42
        0x23 -> :sswitch_42
        0x41 -> :sswitch_42
        0x49 -> :sswitch_42
        0x5b -> :sswitch_42
        0x5c -> :sswitch_42
        0x5d -> :sswitch_42
        0x5e -> :sswitch_42
        0x5f -> :sswitch_42
        0x60 -> :sswitch_42
        0x61 -> :sswitch_42
        0x62 -> :sswitch_42
        0x63 -> :sswitch_42
        0x64 -> :sswitch_42
        0x65 -> :sswitch_42
        0x66 -> :sswitch_42
        0x76 -> :sswitch_42
        0x77 -> :sswitch_42
        0x78 -> :sswitch_42
        0x79 -> :sswitch_42
        0x7a -> :sswitch_42
        0x7b -> :sswitch_42
        0x7c -> :sswitch_42
        0x7d -> :sswitch_42
        0x7e -> :sswitch_42
        0x82 -> :sswitch_42
        0x83 -> :sswitch_42
        0x84 -> :sswitch_42
        0x85 -> :sswitch_42
        0x87 -> :sswitch_42
        0x88 -> :sswitch_42
        0x8c -> :sswitch_42
        0x8d -> :sswitch_42
        0x8e -> :sswitch_42
        0x8f -> :sswitch_42
        0x9a -> :sswitch_42
        0x9b -> :sswitch_42
        0x9f -> :sswitch_42
        0xa0 -> :sswitch_42
        0xa6 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x2
        :pswitch_42  #00000002
        :pswitch_42  #00000003
        :pswitch_42  #00000004
        :pswitch_42  #00000005
        :pswitch_42  #00000006
        :pswitch_42  #00000007
        :pswitch_42  #00000008
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x45
        :pswitch_42  #00000045
        :pswitch_42  #00000046
        :pswitch_42  #00000047
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x6e
        :pswitch_42  #0000006e
        :pswitch_42  #0000006f
        :pswitch_42  #00000070
        :pswitch_42  #00000071
        :pswitch_42  #00000072
        :pswitch_42  #00000073
    .end packed-switch
.end method

.method public makeIndent(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p1, :cond_10

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected printList(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .registers 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_29

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_29
    instance-of v2, v3, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-eqz v2, :cond_32

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    :goto_32
    move v2, v4

    goto :goto_a

    :cond_34
    return-void
.end method

.method public setBounds(II)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setPosition(I)V

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/AstNode;->setLength(I)V

    return-void
.end method

.method public setInlineComment(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/AstNode;->inlineComment:Lorg/mozilla/javascript/ast/AstNode;

    return-void
.end method

.method public setLength(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->length:I

    return-void
.end method

.method public setParent(Lorg/mozilla/javascript/ast/AstNode;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_f
    iput-object p1, p0, Lorg/mozilla/javascript/ast/AstNode;->parent:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;->setRelative(I)V

    :cond_1a
    return-void
.end method

.method public setPosition(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public setRelative(I)V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/ast/AstNode;->position:I

    return-void
.end method

.method public shortName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSource()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toSource(I)Ljava/lang/String;
.end method

.method public abstract visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
.end method
