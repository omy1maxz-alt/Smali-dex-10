.class public Lcom/gold/youtube/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 3

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static isConnected()Z
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/App;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static isConnectedFast(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Lcom/gold/youtube/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-static {v1, v2}, Lcom/gold/youtube/Connectivity;->isConnectionFast(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public static isConnectedMobile(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/gold/youtube/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isConnectedWifi(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/gold/youtube/Connectivity;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_14

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isConnectionFast(II)Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    :goto_4
    :pswitch_4  #0x3, 0x5, 0x6, 0x8, 0x9, 0xa, 0xc, 0xd, 0xe, 0xf
    return v0

    :cond_5
    if-nez p0, :cond_16

    packed-switch p1, :pswitch_data_18

    move v0, v1

    goto :goto_4

    :pswitch_c  #0x7
    move v0, v1

    goto :goto_4

    :pswitch_e  #0x4
    move v0, v1

    goto :goto_4

    :pswitch_10  #0x2
    move v0, v1

    goto :goto_4

    :pswitch_12  #0x1
    move v0, v1

    goto :goto_4

    :pswitch_14  #0xb
    move v0, v1

    goto :goto_4

    :cond_16
    move v0, v1

    goto :goto_4

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_12  #00000001
        :pswitch_10  #00000002
        :pswitch_4  #00000003
        :pswitch_e  #00000004
        :pswitch_4  #00000005
        :pswitch_4  #00000006
        :pswitch_c  #00000007
        :pswitch_4  #00000008
        :pswitch_4  #00000009
        :pswitch_4  #0000000a
        :pswitch_14  #0000000b
        :pswitch_4  #0000000c
        :pswitch_4  #0000000d
        :pswitch_4  #0000000e
        :pswitch_4  #0000000f
    .end packed-switch
.end method
