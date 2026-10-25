.class public abstract Lorg/mozilla/javascript/ast/XmlRef;
.super Lorg/mozilla/javascript/ast/AstNode;
.source "XmlRef.java"


# instance fields
.field protected atPos:I

.field protected colonPos:I

.field protected namespace:Lorg/mozilla/javascript/ast/Name;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    iput v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    return-void
.end method


# virtual methods
.method public getAtPos()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    return v0
.end method

.method public getColonPos()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    return v0
.end method

.method public getNamespace()Lorg/mozilla/javascript/ast/Name;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public isAttributeAccess()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setAtPos(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->atPos:I

    return-void
.end method

.method public setColonPos(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->colonPos:I

    return-void
.end method

.method public setNamespace(Lorg/mozilla/javascript/ast/Name;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ast/XmlRef;->namespace:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_7
    return-void
.end method
