.class final Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
.super Ljj$/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# instance fields
.field left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

.field parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

.field prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

.field red:Z

.field right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p5, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    return-object v0
.end method

.method final findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 11

    if-eqz p2, :cond_4c

    move-object v0, p0

    :cond_3
    iget-object v1, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v2, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget v3, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v4, v3

    if-le v3, p1, :cond_e

    move-object v0, v1

    goto :goto_48

    :cond_e
    if-ge v4, p1, :cond_12

    move-object v0, v2

    goto :goto_48

    :cond_12
    iget-object v3, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v5, v3

    if-eq v3, p2, :cond_4b

    if-eqz v5, :cond_20

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_4b

    :cond_20
    if-nez v1, :cond_24

    move-object v0, v2

    goto :goto_48

    :cond_24
    if-nez v2, :cond_28

    move-object v0, v1

    goto :goto_48

    :cond_28
    if-nez p3, :cond_31

    invoke-static {p2}, Ljj$/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    move-object p3, v3

    if-eqz v3, :cond_3f

    :cond_31
    invoke-static {p3, p2, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v6, v3

    if-eqz v3, :cond_3f

    if-gez v6, :cond_3c

    move-object v3, v1

    goto :goto_3d

    :cond_3c
    move-object v3, v2

    :goto_3d
    move-object v0, v3

    goto :goto_48

    :cond_3f
    invoke-virtual {v2, p1, p2, p3}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v3

    move-object v6, v3

    if-eqz v3, :cond_47

    return-object v6

    :cond_47
    move-object v0, v1

    :goto_48
    if-nez v0, :cond_3

    goto :goto_4c

    :cond_4b
    :goto_4b
    return-object v0

    :cond_4c
    :goto_4c
    const/4 v0, 0x0

    return-object v0
.end method
