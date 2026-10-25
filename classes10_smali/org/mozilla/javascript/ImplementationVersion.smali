.class public Lorg/mozilla/javascript/ImplementationVersion;
.super Ljava/lang/Object;
.source "ImplementationVersion.java"


# static fields
.field private static final version:Lorg/mozilla/javascript/ImplementationVersion;


# instance fields
.field private versionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/ImplementationVersion;

    invoke-direct {v0}, Lorg/mozilla/javascript/ImplementationVersion;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ImplementationVersion;->version:Lorg/mozilla/javascript/ImplementationVersion;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    const-string v0, " "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_5
    const-class v1, Lorg/mozilla/javascript/ImplementationVersion;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_7f

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    :try_start_1d
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_7d

    :try_start_21
    new-instance v3, Ljava/util/jar/Manifest;

    invoke-direct {v3, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    const-string v4, "Mozilla Rhino"

    const-string v5, "Implementation-Title"

    invoke-virtual {v3, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rhino "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Implementation-Version"

    invoke-virtual {v3, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Built-Date"

    invoke-virtual {v3, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/javascript/ImplementationVersion;->versionString:Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_21 .. :try_end_63} :catchall_6f

    if-eqz v2, :cond_68

    :try_start_65
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_68
    return-void

    :cond_69
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6e} :catch_7d

    goto :goto_11

    :catchall_6f
    move-exception v3

    :try_start_70
    throw v3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    :catchall_71
    move-exception v4

    if-eqz v2, :cond_7c

    :try_start_74
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v2

    :try_start_79
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw v4
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_7d

    :catch_7d
    nop

    goto :goto_11

    :catch_7f
    :cond_7f
    return-void
.end method

.method public static get()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/ImplementationVersion;->version:Lorg/mozilla/javascript/ImplementationVersion;

    iget-object v0, v0, Lorg/mozilla/javascript/ImplementationVersion;->versionString:Ljava/lang/String;

    return-object v0
.end method
