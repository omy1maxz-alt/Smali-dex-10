.class Lorg/mozilla/javascript/SecurityController$1;
.super Ljava/lang/Object;
.source "SecurityController.java"

# interfaces
.implements Lorg/mozilla/javascript/Script;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/SecurityController;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$callable:Lorg/mozilla/javascript/Callable;

.field final synthetic val$thisObj:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/SecurityController;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lorg/mozilla/javascript/SecurityController$1;->this$0:Lorg/mozilla/javascript/SecurityController;

    iput-object p2, p0, Lorg/mozilla/javascript/SecurityController$1;->val$callable:Lorg/mozilla/javascript/Callable;

    iput-object p3, p0, Lorg/mozilla/javascript/SecurityController$1;->val$thisObj:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/SecurityController$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/SecurityController$1;->val$callable:Lorg/mozilla/javascript/Callable;

    iget-object v1, p0, Lorg/mozilla/javascript/SecurityController$1;->val$thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/SecurityController$1;->val$args:[Ljava/lang/Object;

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
