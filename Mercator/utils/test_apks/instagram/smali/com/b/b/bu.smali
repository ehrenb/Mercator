.class public final Lcom/b/b/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:I

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/b/b/bu;->a:Z

    .line 23
    const/4 v0, 0x5

    sput v0, Lcom/b/b/bu;->b:I

    .line 26
    sput-boolean v1, Lcom/b/b/bu;->c:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/b/b/bu;->a:Z

    .line 32
    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 60
    sput p0, Lcom/b/b/bu;->b:I

    .line 61
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    invoke-static {p0, p1, p2}, Lcom/b/b/bu;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 112
    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/b/b/bu;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/b/b/bu;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 80
    .line 1120
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/b/b/bu;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/b/b/bu;->a:Z

    .line 38
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/b/b/bu;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/b/b/bu;->b:I

    if-gt v0, p0, :cond_0

    .line 125
    invoke-static {p0, p1, p2}, Lcom/b/b/bu;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/b/b/bu;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/b/b/bu;->b:I

    return v0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/b/b/bu;->c:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0, p1, p2}, Lcom/b/b/bu;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/b/b/bu;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private static d(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 140
    sget-boolean v0, Lcom/b/b/bu;->c:Z

    if-eqz v0, :cond_1

    .line 147
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v1

    .line 148
    :goto_2
    if-ge v2, v0, :cond_0

    .line 149
    const/16 v1, 0xfa0

    sub-int v3, v0, v2

    if-le v1, v3, :cond_3

    move v1, v0

    .line 150
    :goto_3
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 152
    if-gtz v2, :cond_4

    .line 159
    :cond_0
    return-void

    .line 140
    :cond_1
    const-string p1, "FlurryAgent"

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 149
    :cond_3
    add-int/lit16 v1, v2, 0xfa0

    goto :goto_3

    :cond_4
    move v2, v1

    .line 158
    goto :goto_2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/b/b/bu;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/b/b/bu;->c:Z

    return v0
.end method
