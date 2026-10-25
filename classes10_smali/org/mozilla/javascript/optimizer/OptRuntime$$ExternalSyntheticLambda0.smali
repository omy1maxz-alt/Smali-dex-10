.class public final synthetic Lorg/mozilla/javascript/optimizer/OptRuntime$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Lorg/mozilla/javascript/Script;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lorg/mozilla/javascript/Script;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/OptRuntime$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/OptRuntime$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Script;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/OptRuntime$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/OptRuntime$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Script;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->$r8$lambda$nkcl7ufBnCixh_eNHP8jiz3N5n8([Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
