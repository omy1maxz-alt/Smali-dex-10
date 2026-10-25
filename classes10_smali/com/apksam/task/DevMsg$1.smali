.class Lcom/apksam/task/DevMsg$1;
.super Ljava/lang/Object;
.source "DevMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/apksam/task/DevMsg;


# direct methods
.method constructor <init>(Lcom/apksam/task/DevMsg;)V
    .registers 2

    iput-object p1, p0, Lcom/apksam/task/DevMsg$1;->this$0:Lcom/apksam/task/DevMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/apksam/task/DevMsg$1;->this$0:Lcom/apksam/task/DevMsg;

    invoke-virtual {v0}, Lcom/apksam/task/DevMsg;->fetchTheData()V

    return-void
.end method
