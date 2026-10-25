.class public final synthetic Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$1:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$2:Lorg/mozilla/javascript/Function;

.field public final synthetic f$3:[Ljava/lang/Object;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/mozilla/javascript/Scriptable;

    iput-object p2, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$2:Lorg/mozilla/javascript/Function;

    iput-object p4, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$3:[Ljava/lang/Object;

    iput-wide p5, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$4:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$2:Lorg/mozilla/javascript/Function;

    iget-object v3, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$3:[Ljava/lang/Object;

    iget-wide v4, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;->f$4:J

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->$r8$lambda$RhoMg7_DFZ5Wj5W_0fBedu9o0sQ(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
