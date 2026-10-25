.class public Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;
.super Ljavax/swing/JTextArea;
.source "ConsoleTextArea.java"

# interfaces
.implements Ljava/awt/event/KeyListener;
.implements Ljavax/swing/event/DocumentListener;


# static fields
.field static final serialVersionUID:J = 0x76c0dddfb1975581L


# instance fields
.field private console1:Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

.field private console2:Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

.field private err:Ljava/io/PrintStream;

.field private history:Ljava/util/List;

.field private historyIndex:I

.field private in:Ljava/io/PipedInputStream;

.field private inPipe:Ljava/io/PrintWriter;

.field private out:Ljava/io/PrintStream;

.field private outputMark:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljavax/swing/JTextArea;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    new-instance v0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;-><init>(Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->console1:Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

    new-instance v0, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;-><init>(Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->console2:Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->console1:Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->console2:Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

    invoke-direct {v0, v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->inPipe:Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/PipedInputStream;

    invoke-direct {v1}, Ljava/io/PipedInputStream;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->in:Ljava/io/PipedInputStream;

    :try_start_44
    invoke-virtual {v0, v1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4c
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    invoke-virtual {p0, p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->addKeyListener(Ljava/awt/event/KeyListener;)V

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setLineWrap(Z)V

    new-instance v0, Ljava/awt/Font;

    const/16 v1, 0xc

    const-string v2, "Monospaced"

    invoke-direct {v0, v2, p1, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setFont(Ljava/awt/Font;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public eval(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->inPipe:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->inPipe:Ljava/io/PrintWriter;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->inPipe:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->console1:Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->flush()V

    return-void
.end method

.method public getErr()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->err:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getIn()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->in:Ljava/io/PipedInputStream;

    return-object v0
.end method

.method public getOut()Ljava/io/PrintStream;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public declared-synchronized insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getLength()I

    move-result v0

    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getOffset()I

    move-result p1

    iget v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    if-le v1, p1, :cond_10

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I
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

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getCaretPosition()I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

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

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->moveCaretPosition(I)V

    goto :goto_38

    :cond_33
    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setCaretPosition(I)V

    :goto_38
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto/16 :goto_fb

    :cond_3d
    const/16 v1, 0xa

    if-ne v0, v1, :cond_49

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->returnPressed()V

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto/16 :goto_fb

    :cond_49
    const/16 v1, 0x26

    if-ne v0, v1, :cond_98

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    if-ltz v0, :cond_90

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_67

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    :cond_67
    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    if-ltz v0, :cond_8b

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v1

    iget v2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0, v0, v2, v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->replaceRange(Ljava/lang/String;II)V

    iget v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->select(II)V

    goto :goto_94

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    goto :goto_94

    :cond_90
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    :goto_94
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_fb

    :cond_98
    const/16 v1, 0x28

    if-ne v0, v1, :cond_fb

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e9

    iget v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    if-gez v1, :cond_b1

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    :cond_b1
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v1

    iget v2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    iget-object v3, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_da

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    iget v2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0, v0, v2, v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->replaceRange(Ljava/lang/String;II)V

    iget v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_e9

    :cond_da
    iget-object v2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    iget v2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    const-string v3, ""

    invoke-virtual {p0, v3, v2, v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->replaceRange(Ljava/lang/String;II)V

    :cond_e9
    :goto_e9
    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->select(II)V

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_fb

    :cond_f0
    :goto_f0
    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getCaretPosition()I

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

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getCaretPosition()I

    move-result v1

    if-ne v0, v1, :cond_1f

    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    goto :goto_1f

    :cond_14
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getCaretPosition()I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    if-ge p1, v0, :cond_1f

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setCaretPosition(I)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public declared-synchronized postUpdateUI()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->requestFocus()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getCaret()Ljavax/swing/text/Caret;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setCaret(Ljavax/swing/text/Caret;)V

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->select(II)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
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

    iget v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    if-le v1, p1, :cond_17

    add-int v2, p1, v0

    if-lt v1, v2, :cond_15

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    goto :goto_17

    :cond_15
    iput p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I
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

.method declared-synchronized returnPressed()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/text/Document;->getLength()I

    move-result v1

    new-instance v2, Ljavax/swing/text/Segment;

    invoke-direct {v2}, Ljavax/swing/text/Segment;-><init>()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_57

    :try_start_e
    iget v3, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v3, v1, v2}, Ljavax/swing/text/Document;->getText(IILjavax/swing/text/Segment;)V
    :try_end_14
    .catch Ljavax/swing/text/BadLocationException; {:try_start_e .. :try_end_14} :catch_15
    .catchall {:try_start_e .. :try_end_14} :catchall_57

    goto :goto_19

    :catch_15
    move-exception v1

    :try_start_16
    invoke-virtual {v1}, Ljavax/swing/text/BadLocationException;->printStackTrace()V

    :goto_19
    iget v1, v2, Ljavax/swing/text/Segment;->count:I

    if-lez v1, :cond_26

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    invoke-virtual {v2}, Ljavax/swing/text/Segment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->historyIndex:I

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->inPipe:Ljava/io/PrintWriter;

    iget-object v3, v2, Ljavax/swing/text/Segment;->array:[C

    iget v4, v2, Ljavax/swing/text/Segment;->offset:I

    iget v2, v2, Ljavax/swing/text/Segment;->count:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/PrintWriter;->write([CII)V

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->append(Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/swing/text/Document;->getLength()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->inPipe:Ljava/io/PrintWriter;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->inPipe:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->console1:Lorg/mozilla/javascript/tools/shell/ConsoleWriter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/shell/ConsoleWriter;->flush()V
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_57

    monitor-exit p0

    return-void

    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public select(II)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->requestFocus()V

    invoke-super {p0, p1, p2}, Ljavax/swing/JTextArea;->select(II)V

    return-void
.end method

.method public declared-synchronized write(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->insert(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->outputMark:I

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->select(II)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method
