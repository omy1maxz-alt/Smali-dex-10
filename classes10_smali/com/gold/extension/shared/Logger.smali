.class public Lcom/gold/extension/shared/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/Logger$LogMessage;,
        Lcom/gold/extension/shared/Logger$LogLevel;
    }
.end annotation


# static fields
.field private static final BUFFER_MAX_BYTES:I = 0xdbba0

.field private static final BUFFER_MAX_SIZE:I = 0x2710

.field private static final LOGGER_CLASS_NAME:Ljava/lang/String;

.field private static final MORPHE_LOG_TAG_PREFIX:Ljava/lang/String; = "morphe: "

.field private static final logBuffer:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logBufferByteSize:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/Logger;->logBuffer:Ljava/util/Deque;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/Logger;->logBufferByteSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    const-class v0, Lcom/gold/extension/shared/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/Logger;->LOGGER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendToLogBuffer(Ljava/lang/String;)V
    .registers 2

    .line 51
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/gold/extension/shared/Logger;->logBuffer:Ljava/util/Deque;

    invoke-interface {v0, p0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/gold/extension/shared/Logger;->logBufferByteSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    :goto_12
    const v0, 0xdbba0

    if-gt p0, v0, :cond_21

    .line 60
    sget-object p0, Lcom/gold/extension/shared/Logger;->logBuffer:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    const/16 v0, 0x2710

    if-le p0, v0, :cond_2b

    .line 61
    :cond_21
    sget-object p0, Lcom/gold/extension/shared/Logger;->logBuffer:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2c

    :cond_2b
    return-void

    .line 67
    :cond_2c
    sget-object v0, Lcom/gold/extension/shared/Logger;->logBufferByteSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    goto :goto_12
.end method

.method public static clearLogBufferData()V
    .registers 2

    .line 79
    :cond_0
    :goto_0
    sget-object v0, Lcom/gold/extension/shared/Logger;->logBuffer:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 80
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    sget-object v1, Lcom/gold/extension/shared/Logger;->logBufferByteSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    :cond_1b
    return-void
.end method

.method public static getFilteredLogs()Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gold/extension/shared/Logger;->logBufferByteSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    sget-object v1, Lcom/gold/extension/shared/Logger;->logBuffer:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 47
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogBuffer()Ljava/util/Deque;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/gold/extension/shared/Logger;->logBuffer:Ljava/util/Deque;

    return-object v0
.end method

.method private static getOuterClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_15

    .line 128
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/16 p0, 0x2e

    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 135
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static includeStackTrace()Z
    .registers 1

    .line 213
    sget-object v0, Lcom/gold/extension/shared/Utils;->context:Landroid/content/Context;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG_STACKTRACE:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private static logInternal(Lcom/gold/extension/shared/Logger$LogLevel;Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;ZZ)V
    .registers 8
    .param p2  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 154
    invoke-interface {p1}, Lcom/gold/extension/shared/Logger$LogMessage;->buildMessageString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->getOuterClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_24

    .line 161
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nException: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_24
    if-eqz p3, :cond_5b

    .line 168
    new-instance p3, Ljava/io/StringWriter;

    invoke-direct {p3}, Ljava/io/StringWriter;-><init>()V

    .line 169
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 170
    invoke-virtual {p3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p3

    .line 172
    sget-object v1, Lcom/gold/extension/shared/Logger;->LOGGER_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    .line 173
    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_5b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 179
    invoke-static {p3}, Lcom/gold/extension/shared/Logger;->appendToLogBuffer(Ljava/lang/String;)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "morphe: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_a1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_97

    const/4 v1, 0x2

    if-eq p0, v1, :cond_8d

    goto :goto_aa

    :cond_8d
    if-nez p2, :cond_93

    .line 192
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 193
    :cond_93
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_aa

    :cond_97
    if-nez p2, :cond_9d

    .line 188
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 189
    :cond_9d
    invoke-static {p1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_aa

    :cond_a1
    if-nez p2, :cond_a7

    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 185
    :cond_a7
    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_aa
    if-eqz p4, :cond_af

    .line 198
    invoke-static {p3}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    :cond_af
    return-void
.end method

.method public static printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    .registers 2

    const/4 v0, 0x0

    .line 224
    invoke-static {p0, v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public static printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V
    .registers 5
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 235
    invoke-static {}, Lcom/gold/extension/shared/Logger;->shouldLogDebug()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 236
    sget-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->DEBUG:Lcom/gold/extension/shared/Logger$LogLevel;

    invoke-static {}, Lcom/gold/extension/shared/Logger;->includeStackTrace()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/gold/extension/shared/Logger;->logInternal(Lcom/gold/extension/shared/Logger$LogLevel;Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;ZZ)V

    :cond_10
    return-void
.end method

.method public static printException(Lcom/gold/extension/shared/Logger$LogMessage;)V
    .registers 2

    const/4 v0, 0x0

    .line 259
    invoke-static {p0, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 272
    sget-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->ERROR:Lcom/gold/extension/shared/Logger$LogLevel;

    invoke-static {}, Lcom/gold/extension/shared/Logger;->includeStackTrace()Z

    move-result v1

    invoke-static {}, Lcom/gold/extension/shared/Logger;->shouldShowErrorToast()Z

    move-result v2

    invoke-static {v0, p0, p1, v1, v2}, Lcom/gold/extension/shared/Logger;->logInternal(Lcom/gold/extension/shared/Logger$LogLevel;Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method public static printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V
    .registers 2

    const/4 v0, 0x0

    .line 244
    invoke-static {p0, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public static printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V
    .registers 5
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 251
    sget-object v0, Lcom/gold/extension/shared/Logger$LogLevel;->INFO:Lcom/gold/extension/shared/Logger$LogLevel;

    invoke-static {}, Lcom/gold/extension/shared/Logger;->includeStackTrace()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, p1, v1, v2}, Lcom/gold/extension/shared/Logger;->logInternal(Lcom/gold/extension/shared/Logger$LogLevel;Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method private static shouldLogDebug()Z
    .registers 1

    .line 205
    sget-object v0, Lcom/gold/extension/shared/Utils;->context:Landroid/content/Context;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method private static shouldShowErrorToast()Z
    .registers 1

    .line 209
    sget-object v0, Lcom/gold/extension/shared/Utils;->context:Landroid/content/Context;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG_TOAST_ON_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
