.class final Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;
.super Ljava/lang/Object;
.source "ScriptRuntime.java"


# instance fields
.field final index:I

.field final stringId:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    iput p1, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    return-void
.end method
