.class public final synthetic Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Callable;

.field public final synthetic f$1:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$2:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$3:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Callable;

    iput-object p2, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Callable;

    iget-object v1, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/mozilla/javascript/Context;->$r8$lambda$FBfUmmX3GbL3akcaT52xTgeMGSk(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
