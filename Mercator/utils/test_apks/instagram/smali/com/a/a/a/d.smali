.class Lcom/a/a/a/d;
.super Ljava/lang/Object;
.source "AnswersEventValidator.java"


# instance fields
.field final a:I

.field final b:I

.field c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/a/a/a/d;->a:I

    .line 27
    iput p2, p0, Lcom/a/a/a/d;->b:I

    .line 28
    iput-boolean p3, p0, Lcom/a/a/a/d;->c:Z

    .line 29
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 3

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/a/a/a/d;->c:Z

    if-eqz v0, :cond_0

    .line 73
    throw p1

    .line 75
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Invalid user input detected"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/k;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/a/a/a/d;->b:I

    if-le v0, v1, :cond_0

    .line 36
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "String is too long, truncating to %d characters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/a/a/a/d;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/a/a/a/d;->a(Ljava/lang/RuntimeException;)V

    .line 39
    iget v0, p0, Lcom/a/a/a/d;->b:I

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 41
    :cond_0
    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/a/d;->a(Ljava/lang/RuntimeException;)V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    iget v3, p0, Lcom/a/a/a/d;->a:I

    if-lt v2, v3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Limit of %d attributes reached, skipping attribute"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/a/a/a/d;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/a/a/a/d;->a(Ljava/lang/RuntimeException;)V

    .line 65
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
