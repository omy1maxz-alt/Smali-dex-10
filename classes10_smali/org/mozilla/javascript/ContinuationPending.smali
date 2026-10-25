.class public Lorg/mozilla/javascript/ContinuationPending;
.super Ljava/lang/RuntimeException;
.source "ContinuationPending.java"


# static fields
.field private static final serialVersionUID:J = 0x44c7471fc8185f08L


# instance fields
.field private applicationState:Ljava/lang/Object;

.field private continuationState:Lorg/mozilla/javascript/NativeContinuation;


# direct methods
.method protected constructor <init>(Lorg/mozilla/javascript/NativeContinuation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    return-void
.end method


# virtual methods
.method public getApplicationState()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ContinuationPending;->applicationState:Ljava/lang/Object;

    return-object v0
.end method

.method public getContinuation()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    return-object v0
.end method

.method getContinuationState()Lorg/mozilla/javascript/NativeContinuation;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    return-object v0
.end method

.method public setApplicationState(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ContinuationPending;->applicationState:Ljava/lang/Object;

    return-void
.end method

.method public setContinuation(Lorg/mozilla/javascript/NativeContinuation;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ContinuationPending;->continuationState:Lorg/mozilla/javascript/NativeContinuation;

    return-void
.end method
