.class public final synthetic Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Script;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Script;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Script;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Script;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/JavaAdapter;->$r8$lambda$jD16HtgOAwsZhTZ4dDuKKJahxQc(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method
