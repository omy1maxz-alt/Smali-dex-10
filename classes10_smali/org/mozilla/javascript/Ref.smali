.class public abstract Lorg/mozilla/javascript/Ref;
.super Ljava/lang/Object;
.source "Ref.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x382118061377e6c0L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lorg/mozilla/javascript/Context;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
.end method

.method public has(Lorg/mozilla/javascript/Context;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public abstract set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public set(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/Ref;->set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
