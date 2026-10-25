.class public final Lcom/gold/youtube/om7753/extractor/utils/JavaScript;
.super Ljava/lang/Object;
.source "JavaScript.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileOrThrow(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setInterpretedMode(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, v2}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->close()V

    :cond_11
    return-void

    :catchall_12
    move-exception v1

    if-eqz v0, :cond_1d

    :try_start_15
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    throw v1
.end method

.method public static varargs run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Context;->setInterpretedMode(Z)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->initSafeStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2a

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    :try_start_10
    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Function;

    invoke-interface {p0, v1, v2, v2, p2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_27

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V

    :cond_26
    return-object v0

    :catchall_27
    move-exception v0

    move-object p0, v0

    goto :goto_2e

    :catchall_2a
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move-object p0, v0

    :goto_2e
    if-eqz v1, :cond_39

    :try_start_30
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_39

    :catchall_34
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw p0
.end method
