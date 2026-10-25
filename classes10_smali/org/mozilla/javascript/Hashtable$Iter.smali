.class final Lorg/mozilla/javascript/Hashtable$Iter;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private pos:Lorg/mozilla/javascript/Hashtable$Entry;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Hashtable$Entry;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/mozilla/javascript/Hashtable;->access$000()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object v0

    iput-object p1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    return-void
.end method

.method private skipDeleted()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_d

    iget-boolean v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->deleted:Z

    if-eqz v1, :cond_d

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    :cond_d
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->skipDeleted()V

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->next()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/mozilla/javascript/Hashtable$Entry;
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/Hashtable$Iter;->skipDeleted()V

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_e

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Iter;->pos:Lorg/mozilla/javascript/Hashtable$Entry;

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
