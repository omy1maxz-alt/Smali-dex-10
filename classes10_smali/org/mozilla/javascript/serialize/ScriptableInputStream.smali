.class public Lorg/mozilla/javascript/serialize/ScriptableInputStream;
.super Ljava/io/ObjectInputStream;
.source "ScriptableInputStream.java"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private scope:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/mozilla/javascript/serialize/ScriptableInputStream;->scope:Lorg/mozilla/javascript/Scriptable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/io/ObjectInputStream;->enableResolveObject(Z)Z

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/serialize/ScriptableInputStream;->classLoader:Ljava/lang/ClassLoader;

    :cond_15
    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 4

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/serialize/ScriptableInputStream;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_d

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    :cond_d
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    instance-of v0, p1, Lorg/mozilla/javascript/serialize/ScriptableOutputStream$PendingLookup;

    if-eqz v0, :cond_32

    check-cast p1, Lorg/mozilla/javascript/serialize/ScriptableOutputStream$PendingLookup;

    invoke-virtual {p1}, Lorg/mozilla/javascript/serialize/ScriptableOutputStream$PendingLookup;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/serialize/ScriptableInputStream;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/serialize/ScriptableOutputStream;->lookupQualifiedName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_16

    move-object p1, v0

    goto :goto_47

    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found upon deserialization."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    instance-of v0, p1, Lorg/mozilla/javascript/UniqueTag;

    if-eqz v0, :cond_3d

    check-cast p1, Lorg/mozilla/javascript/UniqueTag;

    invoke-virtual {p1}, Lorg/mozilla/javascript/UniqueTag;->readResolve()Ljava/lang/Object;

    move-result-object p1

    goto :goto_47

    :cond_3d
    instance-of v0, p1, Lorg/mozilla/javascript/Undefined;

    if-eqz v0, :cond_47

    check-cast p1, Lorg/mozilla/javascript/Undefined;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Undefined;->readResolve()Ljava/lang/Object;

    move-result-object p1

    :cond_47
    :goto_47
    return-object p1
.end method
