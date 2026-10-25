.class public final synthetic Lorg/mozilla/javascript/tools/shell/Global$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/tools/shell/Global;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/tools/shell/Global;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Global$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/tools/shell/Global;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Global$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/shell/Global;->$r8$lambda$QRMIKKwBvzpmLL1LluAGrzZ4Kjw(Lorg/mozilla/javascript/tools/shell/Global;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
