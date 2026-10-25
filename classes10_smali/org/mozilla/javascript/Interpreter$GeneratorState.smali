.class Lorg/mozilla/javascript/Interpreter$GeneratorState;
.super Ljava/lang/Object;
.source "Interpreter.java"


# instance fields
.field operation:I

.field returnedException:Ljava/lang/RuntimeException;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    return-void
.end method
