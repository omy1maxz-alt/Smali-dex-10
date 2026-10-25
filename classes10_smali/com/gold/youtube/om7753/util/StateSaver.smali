.class public final Lcom/gold/youtube/om7753/util/StateSaver;
.super Ljava/lang/Object;
.source "StateSaver.java"


# static fields
.field private static final STATE_OBJECTS_HOLDER:Ljava/util/concurrent/ConcurrentHashMap;

.field private static cacheDirPath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$UTv1VhydkdSQmo_Tdl5X4pa5QCs(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/StateSaver;->lambda$tryToSave$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/util/StateSaver;->STATE_OBJECTS_HOLDER:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static clearStateFiles()V
    .registers 4

    sget-boolean v0, Lcom/gold/youtube/om7753/App;->debug:Z

    if-eqz v0, :cond_b

    const-string v0, "StateSaver"

    const-string v1, "clearStateFiles() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v0, Lcom/gold/youtube/om7753/util/StateSaver;->STATE_OBJECTS_HOLDER:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/gold/youtube/om7753/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    return-void

    :cond_1e
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "state_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3e

    array-length v1, v0

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v1, :cond_3e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_3e
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    :cond_c
    sget-object v0, Lcom/gold/youtube/om7753/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gold/youtube/om7753/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    :cond_1e
    return-void
.end method

.method private static synthetic lambda$tryToSave$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static onDestroy(Lcom/gold/youtube/om7753/util/SavedState;)V
    .registers 3

    sget-boolean v0, Lcom/gold/youtube/om7753/App;->debug:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy() called with: savedState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateSaver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-eqz p0, :cond_40

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/util/SavedState;->getPathFileSaved()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/gold/youtube/om7753/util/StateSaver;->STATE_OBJECTS_HOLDER:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/util/SavedState;->getPrefixFileSaved()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_34
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/util/SavedState;->getPathFileSaved()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_40

    :catch_40
    :cond_40
    return-void
.end method

.method public static tryToRestore(Landroid/os/Bundle;Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;)Lcom/gold/youtube/om7753/util/SavedState;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_16

    if-nez p1, :cond_6

    goto :goto_16

    :cond_6
    const-string v1, "key_saved_state"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/gold/youtube/om7753/util/SavedState;

    if-nez p0, :cond_11

    return-object v0

    :cond_11
    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/StateSaver;->tryToRestore(Lcom/gold/youtube/om7753/util/SavedState;Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;)Lcom/gold/youtube/om7753/util/SavedState;

    move-result-object p0

    return-object p0

    :cond_16
    :goto_16
    return-object v0
.end method

.method private static tryToRestore(Lcom/gold/youtube/om7753/util/SavedState;Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;)Lcom/gold/youtube/om7753/util/SavedState;
    .registers 7

    sget-boolean v0, Lcom/gold/youtube/om7753/App;->debug:Z

    const-string v1, "StateSaver"

    if-eqz v0, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryToRestore() called with: savedState = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], writeRead = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 v2, 0x0

    :try_start_29
    sget-object v3, Lcom/gold/youtube/om7753/util/StateSaver;->STATE_OBJECTS_HOLDER:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/util/SavedState;->getPrefixFileSaved()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    if-eqz v4, :cond_5a

    invoke-interface {p1, v4}, Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;->readFrom(Ljava/util/Queue;)V

    if-eqz v0, :cond_59

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tryToSave: reading objects from holder > "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stateObjectsHolder > "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-object p0

    :cond_5a
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/util/SavedState;->getPathFileSaved()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_84

    if-eqz v0, :cond_83

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cache file doesn\'t exist: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return-object v2

    :cond_84
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_89} :catch_b4

    :try_start_89
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_aa

    :try_start_8e
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_a0

    :try_start_94
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_aa

    :try_start_97
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    if-eqz v4, :cond_9f

    invoke-interface {p1, v4}, Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;->readFrom(Ljava/util/Queue;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9f} :catch_b4

    :cond_9f
    return-object p0

    :catchall_a0
    move-exception p0

    :try_start_a1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_a9

    :catchall_a5
    move-exception p1

    :try_start_a6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a9
    throw p0
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception p0

    :try_start_ab
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_b3

    :catchall_af
    move-exception p1

    :try_start_b0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b3
    throw p0
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b4} :catch_b4

    :catch_b4
    move-exception p0

    const-string p1, "Failed to restore state"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static tryToSave(ZLcom/gold/youtube/om7753/util/SavedState;Landroid/os/Bundle;Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;)Lcom/gold/youtube/om7753/util/SavedState;
    .registers 8

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/util/SavedState;->getPrefixFileSaved()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/util/SavedState;->getPrefixFileSaved()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_12
    :goto_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2d
    invoke-interface {p3}, Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;->generateSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/gold/youtube/om7753/util/StateSaver;->tryToSave(ZLjava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;)Lcom/gold/youtube/om7753/util/SavedState;

    move-result-object p0

    if-eqz p0, :cond_3d

    const-string p1, "key_saved_state"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0

    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static tryToSave(ZLjava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;)Lcom/gold/youtube/om7753/util/SavedState;
    .registers 11

    sget-boolean v0, Lcom/gold/youtube/om7753/App;->debug:Z

    const-string v1, "StateSaver"

    if-eqz v0, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryToSave() called with: isChangingConfig = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], prefixFileName = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], suffixFileName = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], writeRead = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p3, v2}, Lcom/gold/youtube/om7753/util/StateSaver$WriteRead;->writeTo(Ljava/util/Queue;)V

    const/4 p3, 0x0

    if-eqz p0, :cond_5e

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-lez p0, :cond_56

    sget-object p0, Lcom/gold/youtube/om7753/util/StateSaver;->STATE_OBJECTS_HOLDER:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/gold/youtube/om7753/util/SavedState;

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/util/SavedState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_56
    if-eqz v0, :cond_5d

    const-string p0, "Nothing to save"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-object p3

    :cond_5e
    :try_start_5e
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/gold/youtube/om7753/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_fc

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "state_cache"

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_80

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_80

    return-object p3

    :cond_80
    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_92

    const-string p2, ".cache"

    :cond_92
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_b6

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_b6

    new-instance p2, Lcom/gold/youtube/om7753/util/SavedState;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/gold/youtube/om7753/util/SavedState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_b6
    new-instance p2, Lcom/gold/youtube/om7753/util/StateSaver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/gold/youtube/om7753/util/StateSaver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    array-length v0, p2

    const/4 v3, 0x0

    :goto_c1
    if-ge v3, v0, :cond_cb

    aget-object v4, p2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    :cond_cb
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_d0} :catch_115

    :try_start_d0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d5
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_f2

    :try_start_d5
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_e8

    :try_start_d8
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_f2

    :try_start_db
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    new-instance p2, Lcom/gold/youtube/om7753/util/SavedState;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/gold/youtube/om7753/util/SavedState;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e7} :catch_115

    return-object p2

    :catchall_e8
    move-exception p0

    :try_start_e9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_ed

    goto :goto_f1

    :catchall_ed
    move-exception p1

    :try_start_ee
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f1
    throw p0
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_f2

    :catchall_f2
    move-exception p0

    :try_start_f3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_f7

    goto :goto_fb

    :catchall_f7
    move-exception p1

    :try_start_f8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_fb
    throw p0

    :cond_fc
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cache dir does not exist > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/gold/youtube/om7753/util/StateSaver;->cacheDirPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_115} :catch_115

    :catch_115
    move-exception p0

    const-string p1, "Failed to save state"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p3
.end method
