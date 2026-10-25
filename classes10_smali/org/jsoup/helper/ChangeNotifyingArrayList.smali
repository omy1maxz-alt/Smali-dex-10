.class public abstract Lorg/jsoup/helper/ChangeNotifyingArrayList;
.super Ljava/util/ArrayList;
.source "ChangeNotifyingArrayList.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .registers 1

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public abstract onContentsChanged()V
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected removeRange(II)V
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/helper/ChangeNotifyingArrayList;->onContentsChanged()V

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
