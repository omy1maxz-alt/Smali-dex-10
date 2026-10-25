.class public Lcom/gold/youtube/om7753/player/helper/LockManager;
.super Ljava/lang/Object;
.source "LockManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final powerManager:Landroid/os/PowerManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockManager@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-static {v0, v1}, Landroidx/core/contents/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->powerManager:Landroid/os/PowerManager;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-static {p1, v0}, Landroidx/core/contents/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public acquireWifiAndCpu()V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->TAG:Ljava/lang/String;

    const-string v1, "acquireWifiAndCpu() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->powerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_38
    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_3f
    return-void
.end method

.method public releaseWifiAndCpu()V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseWifiAndCpu() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_16
    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/gold/youtube/om7753/player/helper/LockManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method
