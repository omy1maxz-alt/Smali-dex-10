.class Lorg/mozilla/javascript/Arguments$ThrowTypeError;
.super Lorg/mozilla/javascript/BaseFunction;
.source "Arguments.java"


# static fields
.field private static final serialVersionUID:J = -0xa55683134c066a5L


# instance fields
.field private propertyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/Arguments$ThrowTypeError;->propertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object p1, p0, Lorg/mozilla/javascript/Arguments$ThrowTypeError;->propertyName:Ljava/lang/String;

    const-string p2, "msg.arguments.not.access.strict"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method
