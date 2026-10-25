.class Lokhttp4/RealCall$1;
.super Lokin/AsyncTimeout;
.source "RealCall.java"


# instance fields
.field final synthetic this$0:Lokhttp4/RealCall;


# direct methods
.method constructor <init>(Lokhttp4/RealCall;)V
    .registers 2

    iput-object p1, p0, Lokhttp4/RealCall$1;->this$0:Lokhttp4/RealCall;

    invoke-direct {p0}, Lokin/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method protected timedOut()V
    .registers 2

    iget-object v0, p0, Lokhttp4/RealCall$1;->this$0:Lokhttp4/RealCall;

    invoke-virtual {v0}, Lokhttp4/RealCall;->cancel()V

    return-void
.end method
