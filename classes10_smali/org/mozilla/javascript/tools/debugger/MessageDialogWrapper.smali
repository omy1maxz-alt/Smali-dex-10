.class Lorg/mozilla/javascript/tools/debugger/MessageDialogWrapper;
.super Ljava/lang/Object;
.source "SwingGui.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showMessageDialog(Ljava/awt/Component;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    if-ge v4, v2, :cond_46

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_41

    add-int/lit8 v6, v4, 0x1

    :goto_25
    if-ge v6, v2, :cond_35

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_32

    goto :goto_35

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_35
    :goto_35
    if-ge v6, v2, :cond_41

    sub-int/2addr v6, v4

    add-int/2addr v6, v5

    if-le v6, v1, :cond_41

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :cond_41
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4a
    invoke-static {p0, p1, p2, p3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method
