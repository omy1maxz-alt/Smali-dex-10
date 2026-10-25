.class Lcom/sammods4h/task/DevMsg$FetchConfigTask;
.super Landroid/os/AsyncTask;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sammods4h/task/DevMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchConfigTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"  # Landroid/app/Activity;

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sammods4h/task/DevMsg$FetchConfigTask;->activity:Landroid/app/Activity;

    .line 41
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sammods4h/task/DevMsg$FetchConfigTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "voids"  # [Ljava/lang/Void;

    .line 46
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 47
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 48
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v2, "json":Ljava/lang/StringBuilder;
    :goto_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_33

    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 58
    :cond_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    return-object v3

    .line 61
    .end local v0  # "conn":Ljava/net/HttpURLConnection;
    .end local v1  # "reader":Ljava/io/BufferedReader;
    .end local v2  # "json":Ljava/lang/StringBuilder;
    .end local v4  # "line":Ljava/lang/String;
    :catch_40
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 36
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/sammods4h/task/DevMsg$FetchConfigTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "config"  # Lorg/json/JSONObject;

    .line 68
    if-eqz p1, :cond_2a

    const-string v0, "show_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 69
    iget-object v0, p0, Lcom/sammods4h/task/DevMsg$FetchConfigTask;->activity:Landroid/app/Activity;

    .line 70
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v3, "message"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    const-string v4, "button_text"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    const-string v5, "button_url"

    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v0, v1, v3, v4, v2}, Lcom/sammods4h/task/DevMsg;->-$$Nest$smshowDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_2a
    return-void
.end method
