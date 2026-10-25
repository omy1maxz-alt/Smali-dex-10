.class public final synthetic Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/InterfaceAdapter;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/reflect/Method;

.field public final synthetic f$5:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/InterfaceAdapter;

    iput-object p2, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$4:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$5:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/InterfaceAdapter;

    iget-object v1, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$4:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lorg/mozilla/javascript/InterfaceAdapter$$ExternalSyntheticLambda0;->f$5:[Ljava/lang/Object;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/InterfaceAdapter;->$r8$lambda$SfNYed_5bcd5vQPGPa9tMFbmvPI(Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
