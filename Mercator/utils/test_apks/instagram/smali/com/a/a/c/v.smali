.class Lcom/a/a/c/v;
.super Ljava/lang/Object;
.source "MiddleOutFallbackStrategy.java"

# interfaces
.implements Lcom/a/a/c/af;


# instance fields
.field private final a:I

.field private final b:[Lcom/a/a/c/af;

.field private final c:Lcom/a/a/c/w;


# direct methods
.method public varargs constructor <init>(I[Lcom/a/a/c/af;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/a/a/c/v;->a:I

    .line 16
    iput-object p2, p0, Lcom/a/a/c/v;->b:[Lcom/a/a/c/af;

    .line 17
    new-instance v0, Lcom/a/a/c/w;

    invoke-direct {v0, p1}, Lcom/a/a/c/w;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/c/v;->c:Lcom/a/a/c/w;

    .line 18
    return-void
.end method


# virtual methods
.method public a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    .prologue
    .line 22
    array-length v0, p1

    iget v1, p0, Lcom/a/a/c/v;->a:I

    if-gt v0, v1, :cond_0

    .line 39
    :goto_0
    return-object p1

    .line 27
    :cond_0
    iget-object v3, p0, Lcom/a/a/c/v;->b:[Lcom/a/a/c/af;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    .line 28
    array-length v5, v0

    iget v6, p0, Lcom/a/a/c/v;->a:I

    if-gt v5, v6, :cond_3

    .line 35
    :cond_1
    array-length v1, v0

    iget v2, p0, Lcom/a/a/c/v;->a:I

    if-le v1, v2, :cond_2

    .line 36
    iget-object v1, p0, Lcom/a/a/c/v;->c:Lcom/a/a/c/w;

    invoke-virtual {v1, v0}, Lcom/a/a/c/w;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    :cond_2
    move-object p1, v0

    .line 39
    goto :goto_0

    .line 32
    :cond_3
    invoke-interface {v2, p1}, Lcom/a/a/c/af;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1
.end method
