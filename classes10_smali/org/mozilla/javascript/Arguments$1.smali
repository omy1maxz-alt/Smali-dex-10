.class final Lorg/mozilla/javascript/Arguments$1;
.super Lorg/mozilla/javascript/BaseFunction;
.source "Arguments.java"


# static fields
.field private static final serialVersionUID:J = 0x3ad46349f75afdefL


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    new-instance p1, Lorg/mozilla/javascript/NativeArrayIterator;

    sget-object p4, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->VALUES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    invoke-direct {p1, p2, p3, p4}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V

    return-object p1
.end method
