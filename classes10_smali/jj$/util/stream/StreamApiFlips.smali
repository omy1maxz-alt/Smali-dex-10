.class public Ljj$/util/stream/StreamApiFlips;
.super Ljava/lang/Object;
.source "StreamApiFlips.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 2

    const-string v0, "java.util.stream.Collector.Characteristics"

    invoke-static {v0, p0}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static flipCharacteristicSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 4

    if-eqz p0, :cond_67

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_67

    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljj$/util/stream/Collector$Characteristics;

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_28
    check-cast v1, Ljj$/util/stream/Collector$Characteristics;
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_2a} :catch_33

    nop

    invoke-static {v1}, Ljj$/util/stream/Collector$Characteristics$EnumConversion;->convert(Ljj$/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector$Characteristics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catch_33
    move-exception p0

    invoke-static {p0}, Ljj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_39
    return-object v0

    :cond_3a
    instance-of v2, v1, Ljava/util/stream/Collector$Characteristics;

    if-eqz v2, :cond_5e

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_4c
    check-cast v1, Ljava/util/stream/Collector$Characteristics;
    :try_end_4e
    .catch Ljava/lang/ClassCastException; {:try_start_4c .. :try_end_4e} :catch_57

    nop

    invoke-static {v1}, Ljj$/util/stream/Collector$Characteristics$EnumConversion;->convert(Ljava/util/stream/Collector$Characteristics;)Ljj$/util/stream/Collector$Characteristics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :catch_57
    move-exception p0

    invoke-static {p0}, Ljj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5d
    return-object v0

    :cond_5e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_67
    :goto_67
    return-object p0
.end method
