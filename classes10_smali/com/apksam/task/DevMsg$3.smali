.class Lcom/apksam/task/DevMsg$3;
.super Ljava/lang/Object;
.source "DevMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/apksam/task/DevMsg;

.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/apksam/task/DevMsg;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/apksam/task/DevMsg$3;->this$0:Lcom/apksam/task/DevMsg;

    iput-object p2, p0, Lcom/apksam/task/DevMsg$3;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/apksam/task/DevMsg$3;->this$0:Lcom/apksam/task/DevMsg;

    iget-object p2, p0, Lcom/apksam/task/DevMsg$3;->val$jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/apksam/task/DevMsg;->onButton2Click(Lorg/json/JSONObject;)V

    return-void
.end method
