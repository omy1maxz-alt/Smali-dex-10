.class public abstract Lcom/gold/extension/shared/patches/components/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;
    }
.end annotation


# instance fields
.field public final identifierCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/patches/components/StringFilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final pathCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/patches/components/StringFilterGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/shared/patches/components/Filter;->identifierCallbacks:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/shared/patches/components/Filter;->pathCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final varargs addIdentifierCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/Filter;->identifierCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final varargs addPathCallbacks([Lcom/gold/extension/shared/patches/components/StringFilterGroup;)V
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/Filter;->pathCallbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public isFiltered(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/StringFilterGroup;Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;I)Z
    .registers 10

    .line 0
    const/4 p0, 0x1

    return p0
.end method
