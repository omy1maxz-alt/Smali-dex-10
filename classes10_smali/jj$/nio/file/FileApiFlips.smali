.class public Ljj$/nio/file/FileApiFlips;
.super Ljava/lang/Object;
.source "FileApiFlips.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionFileTime(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 2

    const-string v0, "java.nio.file.attribute.FileTime"

    invoke-static {v0, p0}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static exceptionOpenOption(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 2

    const-string v0, "java.nio.file.OpenOption"

    invoke-static {v0, p0}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static exceptionPosixPermission(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 2

    const-string v0, "java.nio.file.attribute.PosixFilePermission"

    invoke-static {v0, p0}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static exceptionWatchEvent(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 2

    const-string v0, "java.nio.file.WatchEvent"

    invoke-static {v0, p0}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static flipFileAttributeView(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p0, v0, :cond_b

    const-class p0, Ljj$/nio/file/attribute/BasicFileAttributeView;

    return-object p0

    :cond_b
    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributeView;

    if-ne p0, v0, :cond_12

    const-class p0, Ljava/nio/file/attribute/BasicFileAttributeView;

    return-object p0

    :cond_12
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-ne p0, v0, :cond_19

    const-class p0, Ljj$/nio/file/attribute/PosixFileAttributeView;

    return-object p0

    :cond_19
    const-class v0, Ljj$/nio/file/attribute/PosixFileAttributeView;

    if-ne p0, v0, :cond_20

    const-class p0, Ljava/nio/file/attribute/PosixFileAttributeView;

    return-object p0

    :cond_20
    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p0, v0, :cond_27

    const-class p0, Ljj$/nio/file/attribute/FileOwnerAttributeView;

    return-object p0

    :cond_27
    const-class v0, Ljj$/nio/file/attribute/FileOwnerAttributeView;

    if-ne p0, v0, :cond_2e

    const-class p0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    return-object p0

    :cond_2e
    const-class v0, Ljj$/nio/file/attribute/DosFileAttributeView;

    if-ne p0, v0, :cond_35

    const-class p0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object p0

    :cond_35
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    if-ne p0, v0, :cond_3c

    const-class p0, Ljj$/nio/file/attribute/DosFileAttributeView;

    return-object p0

    :cond_3c
    const-class v0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView;

    if-ne p0, v0, :cond_43

    const-class p0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p0

    :cond_43
    const-class v0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    if-ne p0, v0, :cond_4a

    const-class p0, Ljj$/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p0

    :cond_4a
    const-class v0, Ljj$/nio/file/attribute/AclFileAttributeView;

    if-ne p0, v0, :cond_51

    const-class p0, Ljava/nio/file/attribute/AclFileAttributeView;

    return-object p0

    :cond_51
    const-class v0, Ljava/nio/file/attribute/AclFileAttributeView;

    if-ne p0, v0, :cond_58

    const-class p0, Ljj$/nio/file/attribute/AclFileAttributeView;

    return-object p0

    :cond_58
    const-string v0, "java.nio.file.attribute.FileAttributeView"

    invoke-static {v0, p0}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static flipFileAttributes(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    if-ne p0, v0, :cond_b

    const-class p0, Ljj$/nio/file/attribute/BasicFileAttributes;

    return-object p0

    :cond_b
    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributes;

    if-ne p0, v0, :cond_12

    const-class p0, Ljava/nio/file/attribute/BasicFileAttributes;

    return-object p0

    :cond_12
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributes;

    if-ne p0, v0, :cond_19

    const-class p0, Ljj$/nio/file/attribute/PosixFileAttributes;

    return-object p0

    :cond_19
    const-class v0, Ljj$/nio/file/attribute/PosixFileAttributes;

    if-ne p0, v0, :cond_20

    const-class p0, Ljava/nio/file/attribute/PosixFileAttributes;

    return-object p0

    :cond_20
    const-class v0, Ljj$/nio/file/attribute/DosFileAttributes;

    if-ne p0, v0, :cond_27

    const-class p0, Ljava/nio/file/attribute/DosFileAttributes;

    return-object p0

    :cond_27
    const-class v0, Ljava/nio/file/attribute/DosFileAttributes;

    if-ne p0, v0, :cond_2e

    const-class p0, Ljj$/nio/file/attribute/DosFileAttributes;

    return-object p0

    :cond_2e
    const-string v0, "java.nio.file.attribute.BasicFileAttributes"

    invoke-static {v0, p0}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static flipMapWithMaybeFileTimeValues(Ljava/util/Map;)Ljava/util/Map;
    .registers 5

    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2f

    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljj$/nio/file/FileApiFlips;->flipMaybeFileTime(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_2e
    return-object v0

    :cond_2f
    :goto_2f
    return-object p0
.end method

.method public static flipMaybeFileTime(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_12

    :try_start_4
    check-cast p0, Ljava/nio/file/attribute/FileTime;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_c

    nop

    invoke-static {p0}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljava/nio/file/attribute/FileTime;)Ljj$/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0

    :catch_c
    move-exception p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionFileTime(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_12
    instance-of v0, p0, Ljj$/nio/file/attribute/FileTime;

    if-eqz v0, :cond_24

    :try_start_16
    check-cast p0, Ljj$/nio/file/attribute/FileTime;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_18} :catch_1e

    nop

    invoke-static {p0}, Ljj$/nio/file/attribute/FileAttributeConversions;->convert(Ljj$/nio/file/attribute/FileTime;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0

    :catch_1e
    move-exception p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionFileTime(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_24
    return-object p0
.end method

.method public static flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;
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

    instance-of v2, v1, Ljj$/nio/file/OpenOption;

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
    check-cast v1, Ljj$/nio/file/OpenOption;
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_2a} :catch_33

    nop

    invoke-static {v1}, Ljj$/nio/file/OpenOption$Wrapper;->convert(Ljj$/nio/file/OpenOption;)Ljava/nio/file/OpenOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catch_33
    move-exception p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionOpenOption(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_39
    return-object v0

    :cond_3a
    instance-of v2, v1, Ljava/nio/file/OpenOption;

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
    check-cast v1, Ljava/nio/file/OpenOption;
    :try_end_4e
    .catch Ljava/lang/ClassCastException; {:try_start_4c .. :try_end_4e} :catch_57

    nop

    invoke-static {v1}, Ljj$/nio/file/OpenOption$VivifiedWrapper;->convert(Ljava/nio/file/OpenOption;)Ljj$/nio/file/OpenOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :catch_57
    move-exception p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionOpenOption(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5d
    return-object v0

    :cond_5e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionOpenOption(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_67
    :goto_67
    return-object p0
.end method

.method public static flipPosixPermissionSet(Ljava/util/Set;)Ljava/util/Set;
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

    instance-of v2, v1, Ljj$/nio/file/attribute/PosixFilePermission;

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
    check-cast v1, Ljj$/nio/file/attribute/PosixFilePermission;
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_2a} :catch_33

    nop

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermission$EnumConversion;->convert(Ljj$/nio/file/attribute/PosixFilePermission;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catch_33
    move-exception p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionPosixPermission(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_39
    return-object v0

    :cond_3a
    instance-of v2, v1, Ljava/nio/file/attribute/PosixFilePermission;

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
    check-cast v1, Ljava/nio/file/attribute/PosixFilePermission;
    :try_end_4e
    .catch Ljava/lang/ClassCastException; {:try_start_4c .. :try_end_4e} :catch_57

    nop

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermission$EnumConversion;->convert(Ljava/nio/file/attribute/PosixFilePermission;)Ljj$/nio/file/attribute/PosixFilePermission;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_42

    :catch_57
    move-exception p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionPosixPermission(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5d
    return-object v0

    :cond_5e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionPosixPermission(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_67
    :goto_67
    return-object p0
.end method

.method public static flipWatchEventList(Ljava/util/List;)Ljava/util/List;
    .registers 4

    if-eqz p0, :cond_64

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_64

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljj$/nio/file/WatchEvent;

    if-eqz v2, :cond_37

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_25
    check-cast v1, Ljj$/nio/file/WatchEvent;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_27} :catch_30

    nop

    invoke-static {v1}, Ljj$/nio/file/WatchEvent$Wrapper;->convert(Ljj$/nio/file/WatchEvent;)Ljava/nio/file/WatchEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :catch_30
    move-exception p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionWatchEvent(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_36
    return-object v0

    :cond_37
    instance-of v2, v1, Ljava/nio/file/WatchEvent;

    if-eqz v2, :cond_5b

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :try_start_49
    check-cast v1, Ljava/nio/file/WatchEvent;
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_4b} :catch_54

    nop

    invoke-static {v1}, Ljj$/nio/file/WatchEvent$VivifiedWrapper;->convert(Ljava/nio/file/WatchEvent;)Ljj$/nio/file/WatchEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :catch_54
    move-exception p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionWatchEvent(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_5a
    return-object v0

    :cond_5b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljj$/nio/file/FileApiFlips;->exceptionWatchEvent(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_64
    :goto_64
    return-object p0
.end method
