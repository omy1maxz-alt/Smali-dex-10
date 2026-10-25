.class Lcom/apksam/task/DevMsg$2;
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

    iput-object p1, p0, Lcom/apksam/task/DevMsg$2;->this$0:Lcom/apksam/task/DevMsg;

    iput-object p2, p0, Lcom/apksam/task/DevMsg$2;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object p1, p0, Lcom/apksam/task/DevMsg$2;->this$0:Lcom/apksam/task/DevMsg;

    iget-object p2, p0, Lcom/apksam/task/DevMsg$2;->val$jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lcom/apksam/task/DevMsg;->onButton1Click(Lorg/json/JSONObject;)V

    return-void
.end method
