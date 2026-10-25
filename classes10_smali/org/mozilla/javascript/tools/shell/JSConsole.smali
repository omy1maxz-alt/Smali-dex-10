.class public Lorg/mozilla/javascript/tools/shell/JSConsole;
.super Ljavax/swing/JFrame;
.source "JSConsole.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# static fields
.field static final serialVersionUID:J = 0x2367c621635c1accL


# instance fields
.field private CWD:Ljava/io/File;

.field private consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

.field private dlg:Ljavax/swing/JFileChooser;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "Rhino JavaScript Console"

    invoke-direct {v0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/swing/JMenuBar;

    invoke-direct {v1}, Ljavax/swing/JMenuBar;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;->createFileChooser()V

    const-string v2, "Load..."

    const-string v3, "Exit"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "Load"

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [C

    fill-array-data v5, :array_114

    const-string v6, "Cut"

    const-string v7, "Copy"

    const-string v8, "Paste"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v7, [C

    fill-array-data v8, :array_11a

    const-string v9, "Metal"

    const-string v10, "Windows"

    const-string v11, "Motif"

    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Z

    fill-array-data v10, :array_122

    new-instance v11, Ljavax/swing/JMenu;

    const-string v12, "File"

    invoke-direct {v11, v12}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x46

    invoke-virtual {v11, v12}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v12, Ljavax/swing/JMenu;

    const-string v13, "Edit"

    invoke-direct {v12, v13}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x45

    invoke-virtual {v12, v13}, Ljavax/swing/JMenu;->setMnemonic(C)V

    new-instance v13, Ljavax/swing/JMenu;

    const-string v14, "Platform"

    invoke-direct {v13, v14}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x50

    invoke-virtual {v13, v14}, Ljavax/swing/JMenu;->setMnemonic(C)V

    const/4 v15, 0x0

    :goto_67
    if-ge v15, v4, :cond_84

    new-instance v4, Ljavax/swing/JMenuItem;

    aget-object v14, v2, v15

    aget-char v7, v5, v15

    invoke-direct {v4, v14, v7}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    aget-object v7, v3, v15

    invoke-virtual {v4, v7}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v11, v4}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x3

    const/16 v14, 0x50

    goto :goto_67

    :cond_84
    const/4 v2, 0x0

    :goto_85
    const/4 v3, 0x3

    if-ge v2, v3, :cond_9a

    new-instance v3, Ljavax/swing/JMenuItem;

    aget-object v4, v6, v2

    aget-char v5, v8, v2

    invoke-direct {v3, v4, v5}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v12, v3}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_9a
    new-instance v2, Ljavax/swing/ButtonGroup;

    invoke-direct {v2}, Ljavax/swing/ButtonGroup;-><init>()V

    const/4 v3, 0x3

    const/4 v15, 0x0

    :goto_a1
    if-ge v15, v3, :cond_b8

    new-instance v4, Ljavax/swing/JRadioButtonMenuItem;

    aget-object v5, v9, v15

    aget-boolean v6, v10, v15

    invoke-direct {v4, v5, v6}, Ljavax/swing/JRadioButtonMenuItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljavax/swing/ButtonGroup;->add(Ljavax/swing/AbstractButton;)V

    invoke-virtual {v4, v0}, Ljavax/swing/JRadioButtonMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {v13, v4}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v15, v15, 0x1

    goto :goto_a1

    :cond_b8
    invoke-virtual {v1, v11}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {v1, v12}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {v1, v13}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/JSConsole;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    new-instance v1, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    new-instance v1, Ljavax/swing/JScrollPane;

    iget-object v3, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-direct {v1, v3}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/JSConsole;->setContentPane(Ljava/awt/Container;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setRows(I)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->setColumns(I)V

    new-instance v1, Lorg/mozilla/javascript/tools/shell/JSConsole$2;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/tools/shell/JSConsole$2;-><init>(Lorg/mozilla/javascript/tools/shell/JSConsole;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/JSConsole;->addWindowListener(Ljava/awt/event/WindowListener;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;->pack()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/JSConsole;->setVisible(Z)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getIn()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/shell/Main;->setIn(Ljava/io/InputStream;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/shell/Main;->setOut(Ljava/io/PrintStream;)V

    iget-object v1, v0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->getErr()Ljava/io/PrintStream;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/tools/shell/Main;->setErr(Ljava/io/PrintStream;)V

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/tools/shell/Main;->main([Ljava/lang/String;)V

    return-void

    nop

    :array_114
    .array-data 2
        0x4cs
        0x58s
    .end array-data

    :array_11a
    .array-data 2
        0x54s
        0x43s
        0x50s
    .end array-data

    nop

    :array_122
    .array-data 1
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JSConsole;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 5

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Load"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;->chooseFile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ab

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->eval(Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_37
    const-string v0, "Exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_ab

    :cond_44
    const-string v0, "Cut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->cut()V

    goto :goto_ab

    :cond_52
    const-string v0, "Copy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->copy()V

    goto :goto_ab

    :cond_60
    const-string v0, "Paste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->paste()V

    goto :goto_ab

    :cond_6e
    const-string v0, "Metal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string p1, "javax.swing.plaf.metal.MetalLookAndFeel"

    goto :goto_90

    :cond_79
    const-string v0, "Windows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string p1, "com.sun.java.swing.plaf.windows.WindowsLookAndFeel"

    goto :goto_90

    :cond_84
    const-string v0, "Motif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8f

    const-string p1, "com.sun.java.swing.plaf.motif.MotifLookAndFeel"

    goto :goto_90

    :cond_8f
    const/4 p1, 0x0

    :goto_90
    if-eqz p1, :cond_ab

    :try_start_92
    invoke-static {p1}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V

    invoke-static {p0}, Ljavax/swing/SwingUtilities;->updateComponentTreeUI(Ljava/awt/Component;)V

    iget-object p1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->consoleTextArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    invoke-virtual {p1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->postUpdateUI()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/JSConsole;->createFileChooser()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a0} :catch_a1

    goto :goto_ab

    :catch_a1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Platform"

    invoke-static {p0, p1, v0, v1}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    :cond_ab
    :goto_ab
    return-void
.end method

.method public chooseFile()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->CWD:Ljava/io/File;

    if-nez v0, :cond_14

    const-string/jumbo v0, "user.dir"

    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->CWD:Ljava/io/File;

    :cond_14
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->CWD:Ljava/io/File;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v1, v0}, Ljavax/swing/JFileChooser;->setCurrentDirectory(Ljava/io/File;)V

    :cond_1d
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    const-string v1, "Select a file to load"

    invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setDialogTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0, p0}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v2}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->CWD:Ljava/io/File;

    return-object v0

    :cond_48
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFileChooser()V
    .registers 3

    new-instance v0, Ljavax/swing/JFileChooser;

    invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JSConsole$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/shell/JSConsole$1;-><init>(Lorg/mozilla/javascript/tools/shell/JSConsole;)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JSConsole;->dlg:Ljavax/swing/JFileChooser;

    invoke-virtual {v1, v0}, Ljavax/swing/JFileChooser;->addChoosableFileFilter(Ljavax/swing/filechooser/FileFilter;)V

    return-void
.end method
