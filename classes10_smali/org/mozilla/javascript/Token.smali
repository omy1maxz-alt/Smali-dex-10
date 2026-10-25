.class public Lorg/mozilla/javascript/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field public static final ADD:I = 0x15

.field public static final AND:I = 0x6a

.field public static final ARRAYCOMP:I = 0x9e

.field public static final ARRAYLIT:I = 0x42

.field public static final ARROW:I = 0xa5

.field public static final ASSIGN:I = 0x5b

.field public static final ASSIGN_ADD:I = 0x62

.field public static final ASSIGN_BITAND:I = 0x5e

.field public static final ASSIGN_BITOR:I = 0x5c

.field public static final ASSIGN_BITXOR:I = 0x5d

.field public static final ASSIGN_DIV:I = 0x65

.field public static final ASSIGN_LSH:I = 0x5f

.field public static final ASSIGN_MOD:I = 0x66

.field public static final ASSIGN_MUL:I = 0x64

.field public static final ASSIGN_RSH:I = 0x60

.field public static final ASSIGN_SUB:I = 0x63

.field public static final ASSIGN_URSH:I = 0x61

.field public static final BINDNAME:I = 0x31

.field public static final BITAND:I = 0xb

.field public static final BITNOT:I = 0x1b

.field public static final BITOR:I = 0x9

.field public static final BITXOR:I = 0xa

.field public static final BLOCK:I = 0x82

.field public static final BREAK:I = 0x79

.field public static final CALL:I = 0x26

.field public static final CASE:I = 0x74

.field public static final CATCH:I = 0x7d

.field public static final CATCH_SCOPE:I = 0x39

.field public static final COLON:I = 0x68

.field public static final COLONCOLON:I = 0x91

.field public static final COMMA:I = 0x5a

.field public static final COMMENT:I = 0xa2

.field public static final CONST:I = 0x9b

.field public static final CONTINUE:I = 0x7a

.field public static final DEBUGGER:I = 0xa1

.field public static final DEC:I = 0x6c

.field public static final DEFAULT:I = 0x75

.field public static final DEFAULTNAMESPACE:I = 0x4b

.field public static final DELPROP:I = 0x1f

.field public static final DEL_REF:I = 0x46

.field public static final DIV:I = 0x18

.field public static final DO:I = 0x77

.field public static final DOT:I = 0x6d

.field public static final DOTDOT:I = 0x90

.field public static final DOTQUERY:I = 0x93

.field public static final ELSE:I = 0x72

.field public static final EMPTY:I = 0x81

.field public static final ENTERWITH:I = 0x2

.field public static final ENUM_ID:I = 0x3f

.field public static final ENUM_INIT_ARRAY:I = 0x3c

.field public static final ENUM_INIT_KEYS:I = 0x3a

.field public static final ENUM_INIT_VALUES:I = 0x3b

.field public static final ENUM_INIT_VALUES_IN_ORDER:I = 0x3d

.field public static final ENUM_NEXT:I = 0x3e

.field public static final EOF:I = 0x0

.field public static final EOL:I = 0x1

.field public static final EQ:I = 0xc

.field public static final ERROR:I = -0x1

.field public static final ESCXMLATTR:I = 0x4c

.field public static final ESCXMLTEXT:I = 0x4d

.field public static final EXPORT:I = 0x6f

.field public static final EXPR_RESULT:I = 0x87

.field public static final EXPR_VOID:I = 0x86

.field public static final FALSE:I = 0x2c

.field public static final FINALLY:I = 0x7e

.field public static final FIRST_ASSIGN:I = 0x5b

.field public static final FIRST_BYTECODE_TOKEN:I = 0x2

.field public static final FOR:I = 0x78

.field public static final FUNCTION:I = 0x6e

.field public static final GE:I = 0x11

.field public static final GENEXPR:I = 0xa3

.field public static final GET:I = 0x98

.field public static final GETELEM:I = 0x24

.field public static final GETPROP:I = 0x21

.field public static final GETPROPNOWARN:I = 0x22

.field public static final GETVAR:I = 0x37

.field public static final GET_REF:I = 0x44

.field public static final GOTO:I = 0x5

.field public static final GT:I = 0x10

.field public static final HOOK:I = 0x67

.field public static final IF:I = 0x71

.field public static final IFEQ:I = 0x6

.field public static final IFNE:I = 0x7

.field public static final IMPORT:I = 0x70

.field public static final IN:I = 0x34

.field public static final INC:I = 0x6b

.field public static final INSTANCEOF:I = 0x35

.field public static final JSR:I = 0x88

.field public static final LABEL:I = 0x83

.field public static final LAST_ASSIGN:I = 0x66

.field public static final LAST_BYTECODE_TOKEN:I = 0x51

.field public static final LAST_TOKEN:I = 0xa7

.field public static final LB:I = 0x54

.field public static final LC:I = 0x56

.field public static final LE:I = 0xf

.field public static final LEAVEWITH:I = 0x3

.field public static final LET:I = 0x9a

.field public static final LETEXPR:I = 0x9f

.field public static final LOCAL_BLOCK:I = 0x8e

.field public static final LOCAL_LOAD:I = 0x36

.field public static final LOOP:I = 0x85

.field public static final LP:I = 0x58

.field public static final LSH:I = 0x12

.field public static final LT:I = 0xe

.field public static final METHOD:I = 0xa4

.field public static final MOD:I = 0x19

.field public static final MUL:I = 0x17

.field public static final NAME:I = 0x27

.field public static final NE:I = 0xd

.field public static final NEG:I = 0x1d

.field public static final NEW:I = 0x1e

.field public static final NOT:I = 0x1a

.field public static final NULL:I = 0x2a

.field public static final NUMBER:I = 0x28

.field public static final OBJECTLIT:I = 0x43

.field public static final OR:I = 0x69

.field public static final POS:I = 0x1c

.field public static final RB:I = 0x55

.field public static final RC:I = 0x57

.field public static final REF_CALL:I = 0x47

.field public static final REF_MEMBER:I = 0x4e

.field public static final REF_NAME:I = 0x50

.field public static final REF_NS_MEMBER:I = 0x4f

.field public static final REF_NS_NAME:I = 0x51

.field public static final REF_SPECIAL:I = 0x48

.field public static final REGEXP:I = 0x30

.field public static final RESERVED:I = 0x80

.field public static final RETHROW:I = 0x33

.field public static final RETURN:I = 0x4

.field public static final RETURN_RESULT:I = 0x41

.field public static final RP:I = 0x59

.field public static final RSH:I = 0x13

.field public static final SCRIPT:I = 0x89

.field public static final SEMI:I = 0x53

.field public static final SET:I = 0x99

.field public static final SETCONST:I = 0x9c

.field public static final SETCONSTVAR:I = 0x9d

.field public static final SETELEM:I = 0x25

.field public static final SETELEM_OP:I = 0x8d

.field public static final SETNAME:I = 0x8

.field public static final SETPROP:I = 0x23

.field public static final SETPROP_OP:I = 0x8c

.field public static final SETVAR:I = 0x38

.field public static final SET_REF:I = 0x45

.field public static final SET_REF_OP:I = 0x8f

.field public static final SHEQ:I = 0x2e

.field public static final SHNE:I = 0x2f

.field public static final STRICT_SETNAME:I = 0x4a

.field public static final STRING:I = 0x29

.field public static final SUB:I = 0x16

.field public static final SWITCH:I = 0x73

.field public static final TARGET:I = 0x84

.field public static final THIS:I = 0x2b

.field public static final THISFN:I = 0x40

.field public static final THROW:I = 0x32

.field public static final TO_DOUBLE:I = 0x97

.field public static final TO_OBJECT:I = 0x96

.field public static final TRUE:I = 0x2d

.field public static final TRY:I = 0x52

.field public static final TYPEOF:I = 0x20

.field public static final TYPEOFNAME:I = 0x8a

.field public static final URSH:I = 0x14

.field public static final USE_STACK:I = 0x8b

.field public static final VAR:I = 0x7b

.field public static final VOID:I = 0x7f

.field public static final WHILE:I = 0x76

.field public static final WITH:I = 0x7c

.field public static final WITHEXPR:I = 0xa0

.field public static final XML:I = 0x92

.field public static final XMLATTR:I = 0x94

.field public static final XMLEND:I = 0x95

.field public static final YIELD:I = 0x49

.field public static final YIELD_STAR:I = 0xa6

.field static final printICode:Z

.field static final printNames:Z

.field public static final printTrees:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidToken(I)Z
    .registers 2

    const/4 v0, -0x1

    if-lt p0, v0, :cond_9

    const/16 v0, 0xa7

    if-gt p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static keywordToName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9a

    const/16 v0, 0x32

    if-eq p0, v0, :cond_96

    const/16 v0, 0x49

    if-eq p0, v0, :cond_92

    const/16 v0, 0x52

    if-eq p0, v0, :cond_8e

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_8b

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_88

    const/16 v0, 0x34

    if-eq p0, v0, :cond_85

    const/16 v0, 0x35

    if-eq p0, v0, :cond_82

    const/16 v0, 0x9a

    if-eq p0, v0, :cond_7f

    const/16 v0, 0x9b

    if-eq p0, v0, :cond_7c

    packed-switch p0, :pswitch_data_9e

    packed-switch p0, :pswitch_data_a8

    packed-switch p0, :pswitch_data_b4

    const/4 p0, 0x0

    return-object p0

    :pswitch_32  #0x7f
    const-string/jumbo p0, "void"

    return-object p0

    :pswitch_36  #0x7e
    const-string p0, "finally"

    return-object p0

    :pswitch_39  #0x7d
    const-string p0, "catch"

    return-object p0

    :pswitch_3c  #0x7c
    const-string/jumbo p0, "with"

    return-object p0

    :pswitch_40  #0x7b
    const-string/jumbo p0, "var"

    return-object p0

    :pswitch_44  #0x7a
    const-string p0, "continue"

    return-object p0

    :pswitch_47  #0x79
    const-string p0, "break"

    return-object p0

    :pswitch_4a  #0x78
    const-string p0, "for"

    return-object p0

    :pswitch_4d  #0x77
    const-string p0, "do"

    return-object p0

    :pswitch_50  #0x76
    const-string/jumbo p0, "while"

    return-object p0

    :pswitch_54  #0x75
    const-string p0, "default"

    return-object p0

    :pswitch_57  #0x74
    const-string p0, "case"

    return-object p0

    :pswitch_5a  #0x73
    const-string/jumbo p0, "switch"

    return-object p0

    :pswitch_5e  #0x72
    const-string p0, "else"

    return-object p0

    :pswitch_61  #0x71
    const-string p0, "if"

    return-object p0

    :pswitch_64  #0x2d
    const-string/jumbo p0, "true"

    return-object p0

    :pswitch_68  #0x2c
    const-string p0, "false"

    return-object p0

    :pswitch_6b  #0x2b
    const-string/jumbo p0, "this"

    return-object p0

    :pswitch_6f  #0x2a
    const-string p0, "null"

    return-object p0

    :pswitch_72  #0x20
    const-string/jumbo p0, "typeof"

    return-object p0

    :pswitch_76  #0x1f
    const-string p0, "delete"

    return-object p0

    :pswitch_79  #0x1e
    const-string p0, "new"

    return-object p0

    :cond_7c
    const-string p0, "const"

    return-object p0

    :cond_7f
    const-string p0, "let"

    return-object p0

    :cond_82
    const-string p0, "instanceof"

    return-object p0

    :cond_85
    const-string p0, "in"

    return-object p0

    :cond_88
    const-string p0, "debugger"

    return-object p0

    :cond_8b
    const-string p0, "function"

    return-object p0

    :cond_8e
    const-string/jumbo p0, "try"

    return-object p0

    :cond_92
    const-string/jumbo p0, "yield"

    return-object p0

    :cond_96
    const-string/jumbo p0, "throw"

    return-object p0

    :cond_9a
    const-string p0, "return"

    return-object p0

    nop

    :pswitch_data_9e
    .packed-switch 0x1e
        :pswitch_79  #0000001e
        :pswitch_76  #0000001f
        :pswitch_72  #00000020
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x2a
        :pswitch_6f  #0000002a
        :pswitch_6b  #0000002b
        :pswitch_68  #0000002c
        :pswitch_64  #0000002d
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x71
        :pswitch_61  #00000071
        :pswitch_5e  #00000072
        :pswitch_5a  #00000073
        :pswitch_57  #00000074
        :pswitch_54  #00000075
        :pswitch_50  #00000076
        :pswitch_4d  #00000077
        :pswitch_4a  #00000078
        :pswitch_47  #00000079
        :pswitch_44  #0000007a
        :pswitch_40  #0000007b
        :pswitch_3c  #0000007c
        :pswitch_39  #0000007d
        :pswitch_36  #0000007e
        :pswitch_32  #0000007f
    .end packed-switch
.end method

.method public static name(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static typeToName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_200

    :pswitch_3  #0x4a, 0x9d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d  #0xa6
    const-string p0, "YIELD_STAR"

    return-object p0

    :pswitch_10  #0xa5
    const-string p0, "ARROW"

    return-object p0

    :pswitch_13  #0xa4
    const-string p0, "METHOD"

    return-object p0

    :pswitch_16  #0xa3
    const-string p0, "GENEXPR"

    return-object p0

    :pswitch_19  #0xa2
    const-string p0, "COMMENT"

    return-object p0

    :pswitch_1c  #0xa1
    const-string p0, "DEBUGGER"

    return-object p0

    :pswitch_1f  #0xa0
    const-string p0, "WITHEXPR"

    return-object p0

    :pswitch_22  #0x9f
    const-string p0, "LETEXPR"

    return-object p0

    :pswitch_25  #0x9e
    const-string p0, "ARRAYCOMP"

    return-object p0

    :pswitch_28  #0x9c
    const-string p0, "SETCONST"

    return-object p0

    :pswitch_2b  #0x9b
    const-string p0, "CONST"

    return-object p0

    :pswitch_2e  #0x9a
    const-string p0, "LET"

    return-object p0

    :pswitch_31  #0x99
    const-string p0, "SET"

    return-object p0

    :pswitch_34  #0x98
    const-string p0, "GET"

    return-object p0

    :pswitch_37  #0x97
    const-string p0, "TO_DOUBLE"

    return-object p0

    :pswitch_3a  #0x96
    const-string p0, "TO_OBJECT"

    return-object p0

    :pswitch_3d  #0x95
    const-string p0, "XMLEND"

    return-object p0

    :pswitch_40  #0x94
    const-string p0, "XMLATTR"

    return-object p0

    :pswitch_43  #0x93
    const-string p0, "DOTQUERY"

    return-object p0

    :pswitch_46  #0x92
    const-string p0, "XML"

    return-object p0

    :pswitch_49  #0x91
    const-string p0, "COLONCOLON"

    return-object p0

    :pswitch_4c  #0x90
    const-string p0, "DOTDOT"

    return-object p0

    :pswitch_4f  #0x8f
    const-string p0, "SET_REF_OP"

    return-object p0

    :pswitch_52  #0x8e
    const-string p0, "LOCAL_BLOCK"

    return-object p0

    :pswitch_55  #0x8d
    const-string p0, "SETELEM_OP"

    return-object p0

    :pswitch_58  #0x8c
    const-string p0, "SETPROP_OP"

    return-object p0

    :pswitch_5b  #0x8b
    const-string p0, "USE_STACK"

    return-object p0

    :pswitch_5e  #0x8a
    const-string p0, "TYPEOFNAME"

    return-object p0

    :pswitch_61  #0x89
    const-string p0, "SCRIPT"

    return-object p0

    :pswitch_64  #0x88
    const-string p0, "JSR"

    return-object p0

    :pswitch_67  #0x87
    const-string p0, "EXPR_RESULT"

    return-object p0

    :pswitch_6a  #0x86
    const-string p0, "EXPR_VOID"

    return-object p0

    :pswitch_6d  #0x85
    const-string p0, "LOOP"

    return-object p0

    :pswitch_70  #0x84
    const-string p0, "TARGET"

    return-object p0

    :pswitch_73  #0x83
    const-string p0, "LABEL"

    return-object p0

    :pswitch_76  #0x82
    const-string p0, "BLOCK"

    return-object p0

    :pswitch_79  #0x81
    const-string p0, "EMPTY"

    return-object p0

    :pswitch_7c  #0x80
    const-string p0, "RESERVED"

    return-object p0

    :pswitch_7f  #0x7f
    const-string p0, "VOID"

    return-object p0

    :pswitch_82  #0x7e
    const-string p0, "FINALLY"

    return-object p0

    :pswitch_85  #0x7d
    const-string p0, "CATCH"

    return-object p0

    :pswitch_88  #0x7c
    const-string p0, "WITH"

    return-object p0

    :pswitch_8b  #0x7b
    const-string p0, "VAR"

    return-object p0

    :pswitch_8e  #0x7a
    const-string p0, "CONTINUE"

    return-object p0

    :pswitch_91  #0x79
    const-string p0, "BREAK"

    return-object p0

    :pswitch_94  #0x78
    const-string p0, "FOR"

    return-object p0

    :pswitch_97  #0x77
    const-string p0, "DO"

    return-object p0

    :pswitch_9a  #0x76
    const-string p0, "WHILE"

    return-object p0

    :pswitch_9d  #0x75
    const-string p0, "DEFAULT"

    return-object p0

    :pswitch_a0  #0x74
    const-string p0, "CASE"

    return-object p0

    :pswitch_a3  #0x73
    const-string p0, "SWITCH"

    return-object p0

    :pswitch_a6  #0x72
    const-string p0, "ELSE"

    return-object p0

    :pswitch_a9  #0x71
    const-string p0, "IF"

    return-object p0

    :pswitch_ac  #0x70
    const-string p0, "IMPORT"

    return-object p0

    :pswitch_af  #0x6f
    const-string p0, "EXPORT"

    return-object p0

    :pswitch_b2  #0x6e
    const-string p0, "FUNCTION"

    return-object p0

    :pswitch_b5  #0x6d
    const-string p0, "DOT"

    return-object p0

    :pswitch_b8  #0x6c
    const-string p0, "DEC"

    return-object p0

    :pswitch_bb  #0x6b
    const-string p0, "INC"

    return-object p0

    :pswitch_be  #0x6a
    const-string p0, "AND"

    return-object p0

    :pswitch_c1  #0x69
    const-string p0, "OR"

    return-object p0

    :pswitch_c4  #0x68
    const-string p0, "COLON"

    return-object p0

    :pswitch_c7  #0x67
    const-string p0, "HOOK"

    return-object p0

    :pswitch_ca  #0x66
    const-string p0, "ASSIGN_MOD"

    return-object p0

    :pswitch_cd  #0x65
    const-string p0, "ASSIGN_DIV"

    return-object p0

    :pswitch_d0  #0x64
    const-string p0, "ASSIGN_MUL"

    return-object p0

    :pswitch_d3  #0x63
    const-string p0, "ASSIGN_SUB"

    return-object p0

    :pswitch_d6  #0x62
    const-string p0, "ASSIGN_ADD"

    return-object p0

    :pswitch_d9  #0x61
    const-string p0, "ASSIGN_URSH"

    return-object p0

    :pswitch_dc  #0x60
    const-string p0, "ASSIGN_RSH"

    return-object p0

    :pswitch_df  #0x5f
    const-string p0, "ASSIGN_LSH"

    return-object p0

    :pswitch_e2  #0x5e
    const-string p0, "ASSIGN_BITAND"

    return-object p0

    :pswitch_e5  #0x5d
    const-string p0, "ASSIGN_BITXOR"

    return-object p0

    :pswitch_e8  #0x5c
    const-string p0, "ASSIGN_BITOR"

    return-object p0

    :pswitch_eb  #0x5b
    const-string p0, "ASSIGN"

    return-object p0

    :pswitch_ee  #0x5a
    const-string p0, "COMMA"

    return-object p0

    :pswitch_f1  #0x59
    const-string p0, "RP"

    return-object p0

    :pswitch_f4  #0x58
    const-string p0, "LP"

    return-object p0

    :pswitch_f7  #0x57
    const-string p0, "RC"

    return-object p0

    :pswitch_fa  #0x56
    const-string p0, "LC"

    return-object p0

    :pswitch_fd  #0x55
    const-string p0, "RB"

    return-object p0

    :pswitch_100  #0x54
    const-string p0, "LB"

    return-object p0

    :pswitch_103  #0x53
    const-string p0, "SEMI"

    return-object p0

    :pswitch_106  #0x52
    const-string p0, "TRY"

    return-object p0

    :pswitch_109  #0x51
    const-string p0, "REF_NS_NAME"

    return-object p0

    :pswitch_10c  #0x50
    const-string p0, "REF_NAME"

    return-object p0

    :pswitch_10f  #0x4f
    const-string p0, "REF_NS_MEMBER"

    return-object p0

    :pswitch_112  #0x4e
    const-string p0, "REF_MEMBER"

    return-object p0

    :pswitch_115  #0x4d
    const-string p0, "ESCXMLTEXT"

    return-object p0

    :pswitch_118  #0x4c
    const-string p0, "ESCXMLATTR"

    return-object p0

    :pswitch_11b  #0x4b
    const-string p0, "DEFAULTNAMESPACE"

    return-object p0

    :pswitch_11e  #0x49
    const-string p0, "YIELD"

    return-object p0

    :pswitch_121  #0x48
    const-string p0, "REF_SPECIAL"

    return-object p0

    :pswitch_124  #0x47
    const-string p0, "REF_CALL"

    return-object p0

    :pswitch_127  #0x46
    const-string p0, "DEL_REF"

    return-object p0

    :pswitch_12a  #0x45
    const-string p0, "SET_REF"

    return-object p0

    :pswitch_12d  #0x44
    const-string p0, "GET_REF"

    return-object p0

    :pswitch_130  #0x43
    const-string p0, "OBJECTLIT"

    return-object p0

    :pswitch_133  #0x42
    const-string p0, "ARRAYLIT"

    return-object p0

    :pswitch_136  #0x41
    const-string p0, "RETURN_RESULT"

    return-object p0

    :pswitch_139  #0x40
    const-string p0, "THISFN"

    return-object p0

    :pswitch_13c  #0x3f
    const-string p0, "ENUM_ID"

    return-object p0

    :pswitch_13f  #0x3e
    const-string p0, "ENUM_NEXT"

    return-object p0

    :pswitch_142  #0x3d
    const-string p0, "ENUM_INIT_VALUES_IN_ORDER"

    return-object p0

    :pswitch_145  #0x3c
    const-string p0, "ENUM_INIT_ARRAY"

    return-object p0

    :pswitch_148  #0x3b
    const-string p0, "ENUM_INIT_VALUES"

    return-object p0

    :pswitch_14b  #0x3a
    const-string p0, "ENUM_INIT_KEYS"

    return-object p0

    :pswitch_14e  #0x39
    const-string p0, "CATCH_SCOPE"

    return-object p0

    :pswitch_151  #0x38
    const-string p0, "SETVAR"

    return-object p0

    :pswitch_154  #0x37
    const-string p0, "GETVAR"

    return-object p0

    :pswitch_157  #0x36
    const-string p0, "LOCAL_LOAD"

    return-object p0

    :pswitch_15a  #0x35
    const-string p0, "INSTANCEOF"

    return-object p0

    :pswitch_15d  #0x34
    const-string p0, "IN"

    return-object p0

    :pswitch_160  #0x33
    const-string p0, "RETHROW"

    return-object p0

    :pswitch_163  #0x32
    const-string p0, "THROW"

    return-object p0

    :pswitch_166  #0x31
    const-string p0, "BINDNAME"

    return-object p0

    :pswitch_169  #0x30
    const-string p0, "REGEXP"

    return-object p0

    :pswitch_16c  #0x2f
    const-string p0, "SHNE"

    return-object p0

    :pswitch_16f  #0x2e
    const-string p0, "SHEQ"

    return-object p0

    :pswitch_172  #0x2d
    const-string p0, "TRUE"

    return-object p0

    :pswitch_175  #0x2c
    const-string p0, "FALSE"

    return-object p0

    :pswitch_178  #0x2b
    const-string p0, "THIS"

    return-object p0

    :pswitch_17b  #0x2a
    const-string p0, "NULL"

    return-object p0

    :pswitch_17e  #0x29
    const-string p0, "STRING"

    return-object p0

    :pswitch_181  #0x28
    const-string p0, "NUMBER"

    return-object p0

    :pswitch_184  #0x27
    const-string p0, "NAME"

    return-object p0

    :pswitch_187  #0x26
    const-string p0, "CALL"

    return-object p0

    :pswitch_18a  #0x25
    const-string p0, "SETELEM"

    return-object p0

    :pswitch_18d  #0x24
    const-string p0, "GETELEM"

    return-object p0

    :pswitch_190  #0x23
    const-string p0, "SETPROP"

    return-object p0

    :pswitch_193  #0x22
    const-string p0, "GETPROPNOWARN"

    return-object p0

    :pswitch_196  #0x21
    const-string p0, "GETPROP"

    return-object p0

    :pswitch_199  #0x20
    const-string p0, "TYPEOF"

    return-object p0

    :pswitch_19c  #0x1f
    const-string p0, "DELPROP"

    return-object p0

    :pswitch_19f  #0x1e
    const-string p0, "NEW"

    return-object p0

    :pswitch_1a2  #0x1d
    const-string p0, "NEG"

    return-object p0

    :pswitch_1a5  #0x1c
    const-string p0, "POS"

    return-object p0

    :pswitch_1a8  #0x1b
    const-string p0, "BITNOT"

    return-object p0

    :pswitch_1ab  #0x1a
    const-string p0, "NOT"

    return-object p0

    :pswitch_1ae  #0x19
    const-string p0, "MOD"

    return-object p0

    :pswitch_1b1  #0x18
    const-string p0, "DIV"

    return-object p0

    :pswitch_1b4  #0x17
    const-string p0, "MUL"

    return-object p0

    :pswitch_1b7  #0x16
    const-string p0, "SUB"

    return-object p0

    :pswitch_1ba  #0x15
    const-string p0, "ADD"

    return-object p0

    :pswitch_1bd  #0x14
    const-string p0, "URSH"

    return-object p0

    :pswitch_1c0  #0x13
    const-string p0, "RSH"

    return-object p0

    :pswitch_1c3  #0x12
    const-string p0, "LSH"

    return-object p0

    :pswitch_1c6  #0x11
    const-string p0, "GE"

    return-object p0

    :pswitch_1c9  #0x10
    const-string p0, "GT"

    return-object p0

    :pswitch_1cc  #0xf
    const-string p0, "LE"

    return-object p0

    :pswitch_1cf  #0xe
    const-string p0, "LT"

    return-object p0

    :pswitch_1d2  #0xd
    const-string p0, "NE"

    return-object p0

    :pswitch_1d5  #0xc
    const-string p0, "EQ"

    return-object p0

    :pswitch_1d8  #0xb
    const-string p0, "BITAND"

    return-object p0

    :pswitch_1db  #0xa
    const-string p0, "BITXOR"

    return-object p0

    :pswitch_1de  #0x9
    const-string p0, "BITOR"

    return-object p0

    :pswitch_1e1  #0x8
    const-string p0, "SETNAME"

    return-object p0

    :pswitch_1e4  #0x7
    const-string p0, "IFNE"

    return-object p0

    :pswitch_1e7  #0x6
    const-string p0, "IFEQ"

    return-object p0

    :pswitch_1ea  #0x5
    const-string p0, "GOTO"

    return-object p0

    :pswitch_1ed  #0x4
    const-string p0, "RETURN"

    return-object p0

    :pswitch_1f0  #0x3
    const-string p0, "LEAVEWITH"

    return-object p0

    :pswitch_1f3  #0x2
    const-string p0, "ENTERWITH"

    return-object p0

    :pswitch_1f6  #0x1
    const-string p0, "EOL"

    return-object p0

    :pswitch_1f9  #0x0
    const-string p0, "EOF"

    return-object p0

    :pswitch_1fc  #0xffffffff
    const-string p0, "ERROR"

    return-object p0

    nop

    :pswitch_data_200
    .packed-switch -0x1
        :pswitch_1fc  #ffffffff
        :pswitch_1f9  #00000000
        :pswitch_1f6  #00000001
        :pswitch_1f3  #00000002
        :pswitch_1f0  #00000003
        :pswitch_1ed  #00000004
        :pswitch_1ea  #00000005
        :pswitch_1e7  #00000006
        :pswitch_1e4  #00000007
        :pswitch_1e1  #00000008
        :pswitch_1de  #00000009
        :pswitch_1db  #0000000a
        :pswitch_1d8  #0000000b
        :pswitch_1d5  #0000000c
        :pswitch_1d2  #0000000d
        :pswitch_1cf  #0000000e
        :pswitch_1cc  #0000000f
        :pswitch_1c9  #00000010
        :pswitch_1c6  #00000011
        :pswitch_1c3  #00000012
        :pswitch_1c0  #00000013
        :pswitch_1bd  #00000014
        :pswitch_1ba  #00000015
        :pswitch_1b7  #00000016
        :pswitch_1b4  #00000017
        :pswitch_1b1  #00000018
        :pswitch_1ae  #00000019
        :pswitch_1ab  #0000001a
        :pswitch_1a8  #0000001b
        :pswitch_1a5  #0000001c
        :pswitch_1a2  #0000001d
        :pswitch_19f  #0000001e
        :pswitch_19c  #0000001f
        :pswitch_199  #00000020
        :pswitch_196  #00000021
        :pswitch_193  #00000022
        :pswitch_190  #00000023
        :pswitch_18d  #00000024
        :pswitch_18a  #00000025
        :pswitch_187  #00000026
        :pswitch_184  #00000027
        :pswitch_181  #00000028
        :pswitch_17e  #00000029
        :pswitch_17b  #0000002a
        :pswitch_178  #0000002b
        :pswitch_175  #0000002c
        :pswitch_172  #0000002d
        :pswitch_16f  #0000002e
        :pswitch_16c  #0000002f
        :pswitch_169  #00000030
        :pswitch_166  #00000031
        :pswitch_163  #00000032
        :pswitch_160  #00000033
        :pswitch_15d  #00000034
        :pswitch_15a  #00000035
        :pswitch_157  #00000036
        :pswitch_154  #00000037
        :pswitch_151  #00000038
        :pswitch_14e  #00000039
        :pswitch_14b  #0000003a
        :pswitch_148  #0000003b
        :pswitch_145  #0000003c
        :pswitch_142  #0000003d
        :pswitch_13f  #0000003e
        :pswitch_13c  #0000003f
        :pswitch_139  #00000040
        :pswitch_136  #00000041
        :pswitch_133  #00000042
        :pswitch_130  #00000043
        :pswitch_12d  #00000044
        :pswitch_12a  #00000045
        :pswitch_127  #00000046
        :pswitch_124  #00000047
        :pswitch_121  #00000048
        :pswitch_11e  #00000049
        :pswitch_3  #0000004a
        :pswitch_11b  #0000004b
        :pswitch_118  #0000004c
        :pswitch_115  #0000004d
        :pswitch_112  #0000004e
        :pswitch_10f  #0000004f
        :pswitch_10c  #00000050
        :pswitch_109  #00000051
        :pswitch_106  #00000052
        :pswitch_103  #00000053
        :pswitch_100  #00000054
        :pswitch_fd  #00000055
        :pswitch_fa  #00000056
        :pswitch_f7  #00000057
        :pswitch_f4  #00000058
        :pswitch_f1  #00000059
        :pswitch_ee  #0000005a
        :pswitch_eb  #0000005b
        :pswitch_e8  #0000005c
        :pswitch_e5  #0000005d
        :pswitch_e2  #0000005e
        :pswitch_df  #0000005f
        :pswitch_dc  #00000060
        :pswitch_d9  #00000061
        :pswitch_d6  #00000062
        :pswitch_d3  #00000063
        :pswitch_d0  #00000064
        :pswitch_cd  #00000065
        :pswitch_ca  #00000066
        :pswitch_c7  #00000067
        :pswitch_c4  #00000068
        :pswitch_c1  #00000069
        :pswitch_be  #0000006a
        :pswitch_bb  #0000006b
        :pswitch_b8  #0000006c
        :pswitch_b5  #0000006d
        :pswitch_b2  #0000006e
        :pswitch_af  #0000006f
        :pswitch_ac  #00000070
        :pswitch_a9  #00000071
        :pswitch_a6  #00000072
        :pswitch_a3  #00000073
        :pswitch_a0  #00000074
        :pswitch_9d  #00000075
        :pswitch_9a  #00000076
        :pswitch_97  #00000077
        :pswitch_94  #00000078
        :pswitch_91  #00000079
        :pswitch_8e  #0000007a
        :pswitch_8b  #0000007b
        :pswitch_88  #0000007c
        :pswitch_85  #0000007d
        :pswitch_82  #0000007e
        :pswitch_7f  #0000007f
        :pswitch_7c  #00000080
        :pswitch_79  #00000081
        :pswitch_76  #00000082
        :pswitch_73  #00000083
        :pswitch_70  #00000084
        :pswitch_6d  #00000085
        :pswitch_6a  #00000086
        :pswitch_67  #00000087
        :pswitch_64  #00000088
        :pswitch_61  #00000089
        :pswitch_5e  #0000008a
        :pswitch_5b  #0000008b
        :pswitch_58  #0000008c
        :pswitch_55  #0000008d
        :pswitch_52  #0000008e
        :pswitch_4f  #0000008f
        :pswitch_4c  #00000090
        :pswitch_49  #00000091
        :pswitch_46  #00000092
        :pswitch_43  #00000093
        :pswitch_40  #00000094
        :pswitch_3d  #00000095
        :pswitch_3a  #00000096
        :pswitch_37  #00000097
        :pswitch_34  #00000098
        :pswitch_31  #00000099
        :pswitch_2e  #0000009a
        :pswitch_2b  #0000009b
        :pswitch_28  #0000009c
        :pswitch_3  #0000009d
        :pswitch_25  #0000009e
        :pswitch_22  #0000009f
        :pswitch_1f  #000000a0
        :pswitch_1c  #000000a1
        :pswitch_19  #000000a2
        :pswitch_16  #000000a3
        :pswitch_13  #000000a4
        :pswitch_10  #000000a5
        :pswitch_d  #000000a6
    .end packed-switch
.end method
