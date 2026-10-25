.class Lorg/mozilla/javascript/tools/debugger/EvalTextArea;
.super Ljavax/swing/JTextArea;
.source "SwingGui.java"

# interfaces
.implements Ljava/awt/event/KeyListener;
.implements Ljavax/swing/event/DocumentListener;


# static fields
.field private static final serialVersionUID:J = -0x365fa6d87e7fad02L


# instance fields
.field private debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field private history:Ljava/util/List;

.field private historyIndex:I

.field private outputMark:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .registers 6

    invoke-direct {p0}, Ljavax/swing/JTextArea;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object p1

    invoke-interface {p1, p0}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    invoke-virtual {p0, p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->addKeyListener(Ljava/awt/event/KeyListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->setLineWrap(Z)V

    new-instance v0, Ljava/awt/Font;

    const-string v1, "Label.font"

    invoke-static {v1}, Ljavax/swing/UIManager;->getFont(Ljava/lang/Object;)Ljava/awt/Font;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Font;->getSize()I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "Monospaced"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->setFont(Ljava/awt/Font;)V

    const-string v0, "% "

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->append(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/swing/text/Document;->getLength()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    return-void
.end method

.method private declared-synchronized returnPressed()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/text/Document;->getLength()I

    move-result v1

    new-instance v2, Ljavax/swing/text/Segment;

    invoke-direct {v2}, Ljavax/swing/text/Segment;-><init>()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_6c

    :try_start_e
    iget v3, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v3, v1, v2}, Ljavax/swing/text/Document;->getText(IILjavax/swing/text/Segment;)V
    :try_end_14
    .catch Ljavax/swing/text/BadLocationException; {:try_start_e .. :try_end_14} :catch_15
    .catchall {:try_start_e .. :try_end_14} :catchall_6c

    goto :goto_19

    :catch_15
    move-exception v1

    :try_start_16
    invoke-virtual {v1}, Ljavax/swing/text/BadLocationException;->printStackTrace()V

    :goto_19
    invoke-virtual {v2}, Ljavax/swing/text/Segment;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object v2, v2, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->stringIsCompilableUnit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3e

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    :cond_3e
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->append(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object v2, v2, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->eval(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_59

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->append(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->append(Ljava/lang/String;)V

    :cond_59
    const-string v1, "% "

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->append(Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/swing/text/Document;->getLength()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    goto :goto_6a

    :cond_65
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->append(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_16 .. :try_end_6a} :catchall_6c

    :goto_6a
    monitor-exit p0

    return-void

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getLength()I

    move-result v0

    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getOffset()I

    move-result p1

    iget v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    if-le v1, p1, :cond_10

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .registers 6

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_e

    goto/16 :goto_f0

    :cond_e
    const/16 v1, 0x24

    if-ne v0, v1, :cond_3d

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    if-ne v0, v1, :cond_1f

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto/16 :goto_fb

    :cond_1f
    if-le v0, v1, :cond_fb

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->isControlDown()Z

    move-result v0

    if-nez v0, :cond_fb

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->isShiftDown()Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->moveCaretPosition(I)V

    goto :goto_38

    :cond_33
    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->setCaretPosition(I)V

    :goto_38
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto/16 :goto_fb

    :cond_3d
    const/16 v1, 0xa

    if-ne v0, v1, :cond_49

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->returnPressed()V

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto/16 :goto_fb

    :cond_49
    const/16 v1, 0x26

    if-ne v0, v1, :cond_98

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    if-ltz v0, :cond_90

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_67

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    :cond_67
    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    if-ltz v0, :cond_8b

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v1

    iget v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0, v0, v2, v1}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->replaceRange(Ljava/lang/String;II)V

    iget v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v1}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->select(II)V

    goto :goto_94

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    goto :goto_94

    :cond_90
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    :goto_94
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_fb

    :cond_98
    const/16 v1, 0x28

    if-ne v0, v1, :cond_fb

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e9

    iget v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    if-gez v1, :cond_b1

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    :cond_b1
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v1

    iget v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_da

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    iget v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0, v0, v2, v1}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->replaceRange(Ljava/lang/String;II)V

    iget v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_e9

    :cond_da
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->historyIndex:I

    iget v2, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    const-string v3, ""

    invoke-virtual {p0, v3, v2, v1}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->replaceRange(Ljava/lang/String;II)V

    :cond_e9
    :goto_e9
    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->select(II)V

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_fb

    :cond_f0
    :goto_f0
    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getCaretPosition()I

    move-result v1

    if-ne v0, v1, :cond_fb

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    :cond_fb
    :goto_fb
    return-void
.end method

.method public declared-synchronized keyReleased(Ljava/awt/event/KeyEvent;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .registers 4

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyChar()C

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getCaretPosition()I

    move-result v1

    if-ne v0, v1, :cond_1f

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_1f

    :cond_14
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getCaretPosition()I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    if-ge p1, v0, :cond_1f

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->setCaretPosition(I)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public declared-synchronized postUpdateUI()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->getCaret()Ljavax/swing/text/Caret;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->setCaret(Ljavax/swing/text/Caret;)V

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->select(II)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getLength()I

    move-result v0

    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getOffset()I

    move-result p1

    iget v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    if-le v1, p1, :cond_17

    add-int v2, p1, v0

    if-lt v1, v2, :cond_15

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    goto :goto_17

    :cond_15
    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public select(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Ljavax/swing/JTextArea;->select(II)V

    return-void
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->insert(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->outputMark:I

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->select(II)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method
