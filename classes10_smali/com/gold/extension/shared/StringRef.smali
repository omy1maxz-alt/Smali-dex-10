.class public Lcom/gold/extension/shared/StringRef;
.super Ljava/lang/Object;
.source "StringRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/StringRef$StringKeyLookup;
    }
.end annotation


# static fields
.field public static final empty:Lcom/gold/extension/shared/StringRef;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/StringRef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private resolved:Z

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/StringRef;->strings:Ljava/util/Map;

    .line 104
    const-string v0, ""

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->constant(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/StringRef;->empty:Lcom/gold/extension/shared/StringRef;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/gold/extension/shared/StringRef;->value:Ljava/lang/String;

    return-void
.end method

.method public static constant(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 94
    new-instance v0, Lcom/gold/extension/shared/StringRef;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/StringRef;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 95
    iput-boolean p0, v0, Lcom/gold/extension/shared/StringRef;->resolved:Z

    return-object v0
.end method

.method public static sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 59
    new-instance v0, Lcom/gold/extension/shared/StringRef;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/StringRef;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sfc(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;
    .registers 3
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 42
    sget-object v0, Lcom/gold/extension/shared/StringRef;->strings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/StringRef;

    if-nez v1, :cond_12

    .line 44
    new-instance v1, Lcom/gold/extension/shared/StringRef;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/StringRef;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v1
.end method

.method public static str(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 70
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->sfc(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_1
    iget-boolean v0, p0, Lcom/gold/extension/shared/StringRef;->resolved:Z

    if-nez v0, :cond_17

    .line 117
    iget-object v0, p0, Lcom/gold/extension/shared/StringRef;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/extension/shared/ResourceUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 118
    const-string v0, "Unknown string"

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_1b

    :cond_12
    :goto_12
    iput-object v0, p0, Lcom/gold/extension/shared/StringRef;->value:Ljava/lang/String;

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/gold/extension/shared/StringRef;->resolved:Z

    .line 121
    :cond_17
    iget-object v0, p0, Lcom/gold/extension/shared/StringRef;->value:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_10

    monitor-exit p0

    return-object v0

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_10

    throw v0
.end method
