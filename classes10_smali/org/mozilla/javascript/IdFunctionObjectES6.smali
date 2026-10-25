.class public Lorg/mozilla/javascript/IdFunctionObjectES6;
.super Lorg/mozilla/javascript/IdFunctionObject;
.source "IdFunctionObjectES6.java"


# static fields
.field private static final Id_length:I = 0x1

.field private static final Id_name:I = 0x3

.field private static final serialVersionUID:J = -0x6f57bca1671552fdL


# instance fields
.field private myLength:Z

.field private myName:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/javascript/IdFunctionObjectES6;->myLength:Z

    iput-boolean p1, p0, Lorg/mozilla/javascript/IdFunctionObjectES6;->myName:Z

    return-void
.end method


# virtual methods
.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 4

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_f

    const/4 p1, 0x1

    invoke-static {v1, p1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :cond_f
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {v1, v1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :cond_1c
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget-boolean v0, p0, Lorg/mozilla/javascript/IdFunctionObjectES6;->myLength:Z

    if-nez v0, :cond_a

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_a
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    iget-boolean v0, p0, Lorg/mozilla/javascript/IdFunctionObjectES6;->myName:Z

    if-nez v0, :cond_14

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_14
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, v1, :cond_b

    iput-boolean v0, p0, Lorg/mozilla/javascript/IdFunctionObjectES6;->myLength:Z

    return-void

    :cond_b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, v1, :cond_15

    iput-boolean v0, p0, Lorg/mozilla/javascript/IdFunctionObjectES6;->myName:Z

    return-void

    :cond_15
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdValue(ILjava/lang/Object;)V

    return-void
.end method
