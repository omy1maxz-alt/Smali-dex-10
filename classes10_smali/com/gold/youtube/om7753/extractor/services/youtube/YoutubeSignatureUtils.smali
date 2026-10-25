.class final Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;
.super Ljava/lang/Object;
.source "YoutubeSignatureUtils.java"


# static fields
.field static final DEOBFUSCATION_FUNCTION_NAME:Ljava/lang/String; = "deobfuscate"

.field private static final DEOBF_FUNC_REGEX_END:Ljava/lang/String; = "=function\\([a-zA-Z0-9_]+\\)\\{.+?\\})"

.field private static final DEOBF_FUNC_REGEX_START:Ljava/lang/String; = "("

.field private static final FUNCTION_REGEXES:[Ljava/util/regex/Pattern;

.field private static final SIG_DEOBF_GLOBAL_ARRAY_REGEX:Ljava/util/regex/Pattern;

.field private static final SIG_DEOBF_HELPER_OBJ_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final SIG_DEOBF_HELPER_OBJ_REGEX_END:Ljava/lang/String; = "=\\{(?>.|\\n)+?\\}\\};)"

.field private static final SIG_DEOBF_HELPER_OBJ_REGEX_START:Ljava/lang/String; = "(var "

.field private static final STS_REGEX:Ljava/lang/String; = "signatureTimestamp[=:](\\d+)"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v1, "\\b(?:[a-zA-Z0-9_$]+)&&\\((?:[a-zA-Z0-9_$]+)=([a-zA-Z0-9_$]{2,})\\((\\d+,)decodeURIComponent\\((?:[a-zA-Z0-9_$]+)\\)\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\\b(?:[a-zA-Z0-9_$]+)&&\\((?:[a-zA-Z0-9_$]+)=([a-zA-Z0-9_$]{2,})\\(decodeURIComponent\\((?:[a-zA-Z0-9_$]+)\\)\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\\bm=([a-zA-Z0-9$]{2,})\\(decodeURIComponent\\(h\\.s\\)\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\\bc&&\\(c=([a-zA-Z0-9$]{2,})\\(decodeURIComponent\\(c\\)\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "(?:\\b|[^a-zA-Z0-9$])([a-zA-Z0-9$]{2,})\\s*=\\s*function\\(\\s*a\\s*\\)\\s*\\{\\s*a\\s*=\\s*a\\.split\\(\\s*\"\"\\s*\\)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "([\\w$]+)\\s*=\\s*function\\((\\w+)\\)\\{\\s*\\2=\\s*\\2\\.split\\(\"\"\\)\\s*;"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->FUNCTION_REGEXES:[Ljava/util/regex/Pattern;

    nop

    const-string v0, "(var [A-z]=[\'\"].*[\'\"].split\\(\"[;{]\"\\))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->SIG_DEOBF_GLOBAL_ARRAY_REGEX:Ljava/util/regex/Pattern;

    nop

    const-string v0, "[;,]([A-Za-z0-9_$]{2,})\\[.."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->SIG_DEOBF_HELPER_OBJ_NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeobfuscateFunctionWithLexer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=function"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/jsextractor/JavaScriptExtractor;->matchToClosingBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDeobfuscateFunctionWithRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    nop

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=function\\([a-zA-Z0-9_]+\\)\\{.+?\\})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "var "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getDeobfuscationCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, ";"

    :try_start_2
    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->getDeobfuscationFunctionNameAndParams(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/utils/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_75

    :try_start_12
    invoke-static {p0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->getDeobfuscateFunctionWithLexer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v4

    :try_start_18
    invoke-static {p0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->getDeobfuscateFunctionWithRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :goto_1d
    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/utils/JavaScript;->compileOrThrow(Ljava/lang/String;)V

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->SIG_DEOBF_GLOBAL_ARRAY_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v5, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->SIG_DEOBF_HELPER_OBJ_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v6, v4}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->getHelperObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "function deobfuscate(a){return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "a);}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_74} :catch_75

    return-object v0

    :catch_75
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not parse deobfuscation function"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getDeobfuscationFunctionNameAndParams(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/utils/Pair;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->FUNCTION_REGEXES:[Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchMultiplePatterns([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-le v3, v1, :cond_17

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    new-instance v3, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    invoke-direct {v3, v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V
    :try_end_1e
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v3

    :catch_1f
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not find deobfuscation function with any of the known patterns"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getHelperObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    nop

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(var "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\\{(?>.|\\n)+?\\}\\};)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getSignatureTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "signatureTimestamp[=:](\\d+)"

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not extract signature timestamp from JavaScript code"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
