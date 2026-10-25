.class Lorg/mozilla/javascript/tools/debugger/VariableModel;
.super Ljava/lang/Object;
.source "SwingGui.java"

# interfaces
.implements Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;


# static fields
.field private static final CHILDLESS:[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

.field private static final cNames:[Ljava/lang/String;

.field private static final cTypes:[Ljava/lang/Class;


# instance fields
.field private debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

.field private root:Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, " Name"

    const-string v1, " Value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->cNames:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    sput-object v0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->cTypes:[Ljava/lang/Class;

    new-array v0, v2, [Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    sput-object v0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->CHILDLESS:[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    new-instance p1, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    const-string/jumbo v0, "this"

    invoke-direct {p1, p2, v0}, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->root:Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    return-void
.end method

.method private children(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;
    .registers 8

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;->access$000(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;->access$000(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel;->getValue(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->getObjectIds(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    array-length v2, v1

    if-nez v2, :cond_1b

    goto :goto_36

    :cond_1b
    new-instance v2, Lorg/mozilla/javascript/tools/debugger/VariableModel$1;

    invoke-direct {v2, p0}, Lorg/mozilla/javascript/tools/debugger/VariableModel$1;-><init>(Lorg/mozilla/javascript/tools/debugger/VariableModel;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v1

    new-array v2, v2, [Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    const/4 v3, 0x0

    :goto_27
    array-length v4, v1

    if-eq v3, v4, :cond_38

    new-instance v4, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    aget-object v5, v1, v3

    invoke-direct {v4, v0, v5}, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_36
    :goto_36
    sget-object v2, Lorg/mozilla/javascript/tools/debugger/VariableModel;->CHILDLESS:[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    :cond_38
    invoke-static {p1, v2}, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;->access$002(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    return-object v2
.end method


# virtual methods
.method public addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .registers 2

    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel;->children(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    move-result-object p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel;->children(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->cTypes:[Ljava/lang/Class;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getColumnCount()I
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->cNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->cNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    check-cast p2, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel;->children(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    array-length v2, p1

    if-eq v0, v2, :cond_1a

    aget-object v2, p1, v0

    if-ne v2, p2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1a
    return v1
.end method

.method public getRoot()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->root:Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    return-object v0
.end method

.method public getValue(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;->access$100(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;->access$200(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->getObjectProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    const-string/jumbo p1, "undefined"

    return-object p1
.end method

.method public getValueAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    if-eqz p2, :cond_47

    const/4 v2, 0x1

    if-eq p2, v2, :cond_e

    return-object v1

    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel;->getValue(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_24

    :catch_17
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_23

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_23
    move-object p1, p2

    :goto_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v0, :cond_42

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/16 v2, 0x20

    :cond_3c
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_47
    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCellEditable(Ljava/lang/Object;I)Z
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/VariableModel;->debugger:Lorg/mozilla/javascript/tools/debugger/Dim;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/VariableModel;->children(Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;)[Lorg/mozilla/javascript/tools/debugger/VariableModel$VariableNode;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public removeTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .registers 2

    return-void
.end method

.method public setValueAt(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4

    return-void
.end method

.method public valueForPathChanged(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
