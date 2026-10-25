.class final Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;
.super Ljj$/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOCKSTATE:J

.field static final READER:I = 0x4

.field private static final U:Ljj$/sun/misc/DesugarUnsafe;

.field static final WAITER:I = 0x2

.field static final WRITER:I = 0x1


# instance fields
.field volatile first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

.field volatile lockState:I

.field root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljj$/sun/misc/DesugarUnsafe;->getUnsafe()Ljj$/sun/misc/DesugarUnsafe;

    move-result-object v0

    sput-object v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Ljj$/sun/misc/DesugarUnsafe;

    const-class v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    const-string v2, "lockState"

    invoke-virtual {v0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    return-void
.end method

.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .registers 15

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v0, 0x0

    move-object v2, p1

    :goto_9
    if-eqz v2, :cond_61

    iget-object v3, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    check-cast v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_1c

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v4, 0x0

    iput-boolean v4, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object v0, v2

    goto :goto_5e

    :cond_1c
    iget-object v4, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    iget v5, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    const/4 v6, 0x0

    move-object v7, v0

    :goto_22
    iget-object v8, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    iget v9, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v10, v9

    if-le v9, v5, :cond_2b

    const/4 v9, -0x1

    goto :goto_45

    :cond_2b
    if-ge v10, v5, :cond_2f

    const/4 v9, 0x1

    goto :goto_45

    :cond_2f
    if-nez v6, :cond_38

    invoke-static {v4}, Ljj$/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v9

    move-object v6, v9

    if-eqz v9, :cond_3f

    :cond_38
    invoke-static {v6, v4, v8}, Ljj$/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    move v11, v9

    if-nez v9, :cond_44

    :cond_3f
    invoke-static {v4, v8}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    goto :goto_45

    :cond_44
    move v9, v11

    :goto_45
    move-object v11, v7

    if-gtz v9, :cond_4b

    iget-object v12, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4d

    :cond_4b
    iget-object v12, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_4d
    move-object v7, v12

    if-nez v12, :cond_60

    iput-object v11, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-gtz v9, :cond_57

    iput-object v2, v11, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_59

    :cond_57
    iput-object v2, v11, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_59
    invoke-static {v0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    nop

    :goto_5e
    move-object v2, v3

    goto :goto_9

    :cond_60
    goto :goto_22

    :cond_61
    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    nop

    return-void
.end method

.method static balanceDeletion(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 11

    nop

    :goto_1
    if-eqz p1, :cond_ee

    if-ne p1, p0, :cond_7

    goto/16 :goto_ee

    :cond_7
    iget-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    iput-boolean v2, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    return-object p1

    :cond_10
    iget-boolean v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_17

    iput-boolean v2, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    return-object p0

    :cond_17
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, p1, :cond_87

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v0

    if-eqz v0, :cond_39

    iget-boolean v0, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_39

    iput-boolean v2, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v5, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_36

    move-object v0, v4

    goto :goto_38

    :cond_36
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_38
    move-object v6, v0

    :cond_39
    if-nez v6, :cond_3d

    move-object p1, v1

    goto :goto_1

    :cond_3d
    iget-object v0, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v7, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v7, :cond_47

    iget-boolean v8, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_4e

    :cond_47
    if-eqz v0, :cond_82

    iget-boolean v8, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_4e

    goto :goto_82

    :cond_4e
    if-eqz v7, :cond_54

    iget-boolean v8, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_67

    :cond_54
    if-eqz v0, :cond_58

    iput-boolean v2, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_58
    iput-boolean v5, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v6}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v5, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_64

    goto :goto_66

    :cond_64
    iget-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_66
    move-object v6, v4

    :cond_67
    if-eqz v6, :cond_78

    if-nez v1, :cond_6d

    const/4 v4, 0x0

    goto :goto_6f

    :cond_6d
    iget-boolean v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_6f
    iput-boolean v4, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iget-object v4, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v7, v4

    if-eqz v4, :cond_78

    iput-boolean v2, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_78
    if-eqz v1, :cond_80

    iput-boolean v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    :cond_80
    move-object p1, p0

    goto :goto_85

    :cond_82
    :goto_82
    iput-boolean v5, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p1, v1

    :goto_85
    goto/16 :goto_1

    :cond_87
    if-eqz v3, :cond_9f

    iget-boolean v0, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_9f

    iput-boolean v2, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v5, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_9c

    move-object v0, v4

    goto :goto_9e

    :cond_9c
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_9e
    move-object v3, v0

    :cond_9f
    if-nez v3, :cond_a4

    move-object p1, v1

    goto/16 :goto_1

    :cond_a4
    iget-object v0, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v6, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v0, :cond_ae

    iget-boolean v7, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_b5

    :cond_ae
    if-eqz v6, :cond_e9

    iget-boolean v7, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_b5

    goto :goto_e9

    :cond_b5
    if-eqz v0, :cond_bb

    iget-boolean v7, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_ce

    :cond_bb
    if-eqz v6, :cond_bf

    iput-boolean v2, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_bf
    iput-boolean v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v3}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v5, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_cb

    goto :goto_cd

    :cond_cb
    iget-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_cd
    move-object v3, v4

    :cond_ce
    if-eqz v3, :cond_df

    if-nez v1, :cond_d4

    const/4 v4, 0x0

    goto :goto_d6

    :cond_d4
    iget-boolean v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_d6
    iput-boolean v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v0, v4

    if-eqz v4, :cond_df

    iput-boolean v2, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_df
    if-eqz v1, :cond_e7

    iput-boolean v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    :cond_e7
    move-object p1, p0

    goto :goto_ec

    :cond_e9
    :goto_e9
    iput-boolean v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p1, v1

    :goto_ec
    goto/16 :goto_1

    :cond_ee
    :goto_ee
    return-object p0
.end method

.method static balanceInsertion(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 10

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :cond_3
    :goto_3
    iget-object v1, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    const/4 v3, 0x0

    if-nez v1, :cond_c

    iput-boolean v3, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    return-object p1

    :cond_c
    iget-boolean v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_7a

    iget-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v4, v1

    if-nez v1, :cond_17

    goto/16 :goto_7a

    :cond_17
    iget-object v1, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v1

    const/4 v6, 0x0

    if-ne v2, v1, :cond_4d

    iget-object v1, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v7, v1

    if-eqz v1, :cond_2e

    iget-boolean v1, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_2e

    iput-boolean v3, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v3, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v0, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p1, v4

    goto :goto_3

    :cond_2e
    iget-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v1, :cond_40

    move-object p1, v2

    invoke-static {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v1, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v6, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_3f
    move-object v4, v6

    :cond_40
    if-eqz v2, :cond_3

    iput-boolean v3, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v4, :cond_3

    iput-boolean v0, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v4}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    :cond_4d
    if-eqz v5, :cond_5b

    iget-boolean v1, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_5b

    iput-boolean v3, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v3, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v0, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    move-object p1, v4

    goto :goto_3

    :cond_5b
    iget-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v1, :cond_6d

    move-object p1, v2

    invoke-static {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    iget-object v1, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_6a

    goto :goto_6c

    :cond_6a
    iget-object v6, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_6c
    move-object v4, v6

    :cond_6d
    if-eqz v2, :cond_3

    iput-boolean v3, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v4, :cond_3

    iput-boolean v0, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    invoke-static {p0, v4}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    :cond_7a
    :goto_7a
    return-object p0
.end method

.method static checkInvariants(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .registers 9

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    check-cast v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v5, 0x0

    if-eqz v3, :cond_14

    iget-object v6, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-eq v6, p0, :cond_14

    return v5

    :cond_14
    if-eqz v4, :cond_1b

    iget-object v6, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq v6, p0, :cond_1b

    return v5

    :cond_1b
    if-eqz v0, :cond_26

    iget-object v6, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_26

    iget-object v6, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_26

    return v5

    :cond_26
    if-eqz v1, :cond_33

    iget-object v6, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_32

    iget v6, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-le v6, v7, :cond_33

    :cond_32
    return v5

    :cond_33
    if-eqz v2, :cond_40

    iget-object v6, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_3f

    iget v6, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-ge v6, v7, :cond_40

    :cond_3f
    return v5

    :cond_40
    iget-boolean v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v1, :cond_51

    iget-boolean v6, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v2, :cond_51

    iget-boolean v6, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    return v5

    :cond_51
    if-eqz v1, :cond_5a

    invoke-static {v1}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_5a

    return v5

    :cond_5a
    if-eqz v2, :cond_63

    invoke-static {v2}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_63

    return v5

    :cond_63
    const/4 v5, 0x1

    return v5
.end method

.method private final contendedLock()V
    .registers 9

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    move v6, v1

    and-int/lit8 v1, v1, -0x3

    if-nez v1, :cond_1a

    sget-object v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v7, 0x1

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    iput-object v1, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    :cond_19
    return-void

    :cond_1a
    move-object v3, p0

    and-int/lit8 v1, v6, 0x2

    if-nez v1, :cond_33

    sget-object v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    or-int/lit8 v7, v6, 0x2

    invoke-virtual/range {v2 .. v7}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    goto :goto_1

    :cond_33
    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final lockRoot()V
    .registers 7

    sget-object v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->contendedLock()V

    :cond_10
    return-void
.end method

.method static rotateLeft(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 6

    if-eqz p1, :cond_29

    iget-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-eqz v0, :cond_29

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    if-eqz v0, :cond_10

    iput-object p1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_10
    iget-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    if-nez v0, :cond_1c

    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_25

    :cond_1c
    iget-object v0, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, p1, :cond_23

    iput-object v1, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_25

    :cond_23
    iput-object v1, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_25
    iput-object p1, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_29
    return-object p0
.end method

.method static rotateRight(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 6

    if-eqz p1, :cond_29

    iget-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-eqz v0, :cond_29

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    if-eqz v0, :cond_10

    iput-object p1, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_10
    iget-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    if-nez v0, :cond_1c

    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_25

    :cond_1c
    iget-object v0, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, p1, :cond_23

    iput-object v1, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_25

    :cond_23
    iput-object v1, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_25
    iput-object p1, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_29
    return-object p0
.end method

.method static tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    if-nez v0, :cond_29

    :cond_1b
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_27

    const/4 v0, -0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x1

    :goto_28
    move v1, v0

    :cond_29
    return v1
.end method

.method private final unlockRoot()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    return-void
.end method


# virtual methods
.method final find(ILjava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_69

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_5
    if-eqz v1, :cond_67

    iget v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    move v7, v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_24

    iget v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v2, p1, :cond_20

    iget-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v3, v2

    if-eq v2, p2, :cond_1f

    if-eqz v3, :cond_20

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1f
    return-object v1

    :cond_20
    iget-object v1, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, p0

    goto :goto_66

    :cond_24
    sget-object v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    add-int/lit8 v8, v7, 0x4

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljj$/sun/misc/DesugarUnsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x6

    const/4 v3, -0x4

    :try_start_33
    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v5

    if-nez v5, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {v6, p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_52

    :goto_3d
    nop

    sget-object v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    invoke-virtual {v5, p0, v8, v9, v3}, Ljj$/sun/misc/DesugarUnsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v3

    if-ne v3, v2, :cond_50

    iget-object v2, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v3, v2

    if-eqz v2, :cond_50

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_50
    nop

    return-object v0

    :catchall_52
    move-exception v0

    sget-object v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->U:Ljj$/sun/misc/DesugarUnsafe;

    sget-wide v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    invoke-virtual {v5, p0, v8, v9, v3}, Ljj$/sun/misc/DesugarUnsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v3

    if-ne v3, v2, :cond_65

    iget-object v2, v4, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v3, v2

    if-eqz v2, :cond_65

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_65
    throw v0

    :cond_66
    :goto_66
    goto :goto_5

    :cond_67
    move-object v4, p0

    goto :goto_6a

    :cond_69
    move-object v4, p0

    :goto_6a
    return-object v0
.end method

.method final putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move v7, v1

    move-object v8, v2

    :goto_6
    if-nez v8, :cond_18

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto/16 :goto_ad

    :cond_18
    iget v1, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v9, v1

    if-le v1, p1, :cond_23

    const/4 v1, -0x1

    move v10, v1

    move v11, v7

    move-object v7, v0

    goto/16 :goto_70

    :cond_23
    if-ge v9, p1, :cond_2a

    const/4 v1, 0x1

    move v10, v1

    move v11, v7

    move-object v7, v0

    goto :goto_70

    :cond_2a
    iget-object v1, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v4, v1

    if-eq v1, p2, :cond_b9

    if-eqz v4, :cond_39

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto/16 :goto_b9

    :cond_39
    if-nez v0, :cond_42

    invoke-static {p2}, Ljj$/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_49

    :cond_42
    invoke-static {v0, p2, v4}, Ljj$/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    move v5, v1

    if-nez v1, :cond_6d

    :cond_49
    if-nez v7, :cond_65

    const/4 v7, 0x1

    iget-object v1, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v1

    if-eqz v1, :cond_58

    invoke-virtual {v5, p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v1

    move-object v6, v1

    if-nez v1, :cond_64

    :cond_58
    iget-object v1, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v1

    if-eqz v1, :cond_65

    invoke-virtual {v5, p1, p2, v0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v1

    move-object v6, v1

    if-eqz v1, :cond_65

    :cond_64
    return-object v6

    :cond_65
    invoke-static {p2, v4}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    move v10, v1

    move v11, v7

    move-object v7, v0

    goto :goto_70

    :cond_6d
    move v10, v5

    move v11, v7

    move-object v7, v0

    :goto_70
    move-object v6, v8

    if-gtz v10, :cond_76

    iget-object v0, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_78

    :cond_76
    iget-object v0, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_78
    move-object v8, v0

    if-nez v0, :cond_b5

    iget-object v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object v2, v1

    iput-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v5, :cond_8c

    iput-object v2, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_8c
    if-gtz v10, :cond_91

    iput-object v2, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_93

    :cond_91
    iput-object v2, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_93
    iget-boolean v0, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v0, :cond_9b

    const/4 v0, 0x1

    iput-boolean v0, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_ab

    :cond_9b
    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    :try_start_9e
    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_b0

    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    nop

    nop

    :goto_ab
    move-object v0, v7

    move v7, v11

    :goto_ad
    nop

    const/4 v1, 0x0

    return-object v1

    :catchall_b0
    move-exception v0

    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    throw v0

    :cond_b5
    move-object v0, v7

    move v7, v11

    goto/16 :goto_6

    :cond_b9
    :goto_b9
    return-object v8
.end method

.method final removeTreeNode(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .registers 16

    iget-object v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v1, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v1, :cond_b

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_d

    :cond_b
    iput-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_d
    if-eqz v0, :cond_11

    iput-object v1, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_11
    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1a

    iput-object v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    return v3

    :cond_1a
    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v2

    if-eqz v2, :cond_dc

    iget-object v2, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_dc

    iget-object v2, v5, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v2

    if-eqz v2, :cond_dc

    iget-object v2, v6, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_2e

    goto/16 :goto_dc

    :cond_2e
    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    :try_start_31
    iget-object v2, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v3, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_8c

    if-eqz v3, :cond_8c

    move-object v7, v3

    :goto_3a
    iget-object v8, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v9, v8

    if-eqz v8, :cond_41

    move-object v7, v9

    goto :goto_3a

    :cond_41
    iget-boolean v8, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iget-boolean v10, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v10, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v8, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iget-object v10, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iget-object v11, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v7, v3, :cond_54

    iput-object v7, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object p1, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_69

    :cond_54
    iget-object v12, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v12, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v12, :cond_63

    iget-object v13, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v7, v13, :cond_61

    iput-object p1, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_63

    :cond_61
    iput-object p1, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_63
    :goto_63
    iput-object v3, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v3, :cond_69

    iput-object v7, v3, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_69
    :goto_69
    iput-object v4, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v10, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v10, :cond_71

    iput-object p1, v10, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_71
    iput-object v2, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_77

    iput-object v7, v2, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_77
    iput-object v11, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v11, :cond_7d

    move-object v5, v7

    goto :goto_86

    :cond_7d
    iget-object v12, v11, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v12, :cond_84

    iput-object v7, v11, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_86

    :cond_84
    iput-object v7, v11, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_86
    if-eqz v10, :cond_8a

    move-object v12, v10

    goto :goto_8b

    :cond_8a
    move-object v12, p1

    :goto_8b
    goto :goto_95

    :cond_8c
    if-eqz v2, :cond_90

    move-object v12, v2

    goto :goto_95

    :cond_90
    if-eqz v3, :cond_94

    move-object v12, v3

    goto :goto_95

    :cond_94
    move-object v12, p1

    :goto_95
    if-eq v12, p1, :cond_ae

    iget-object v7, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v7, v12, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v7, :cond_9f

    move-object v5, v12

    goto :goto_a8

    :cond_9f
    iget-object v8, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v8, :cond_a6

    iput-object v12, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_a8

    :cond_a6
    iput-object v12, v7, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_a8
    iput-object v4, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v4, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v4, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_ae
    iget-boolean v7, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v7, :cond_b4

    move-object v7, v5

    goto :goto_b8

    :cond_b4
    invoke-static {v5, v12}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->balanceDeletion(Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;)Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v7

    :goto_b8
    iput-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v12, :cond_d0

    iget-object v7, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v8, v7

    if-eqz v7, :cond_d0

    iget-object v7, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_c8

    iput-object v4, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_ce

    :cond_c8
    iget-object v7, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_ce

    iput-object v4, v8, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    :cond_ce
    :goto_ce
    iput-object v4, p1, Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_d0
    .catchall {:try_start_31 .. :try_end_d0} :catchall_d7

    :cond_d0
    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    nop

    nop

    const/4 v2, 0x0

    return v2

    :catchall_d7
    move-exception v2

    invoke-direct {p0}, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    throw v2

    :cond_dc
    :goto_dc
    return v3
.end method
