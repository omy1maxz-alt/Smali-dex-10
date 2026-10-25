.class public Lorg/mozilla/javascript/NativeIterator$StopIteration;
.super Lorg/mozilla/javascript/NativeObject;
.source "NativeIterator.java"


# static fields
.field private static final serialVersionUID:J = 0x227d07bedda89dbfL


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeIterator$StopIteration;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeIterator$StopIteration;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "StopIteration"

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeIterator$StopIteration;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 2

    instance-of p1, p1, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    return p1
.end method
