.class final Lcom/a/a/c/x$m;
.super Lcom/a/a/c/x$j;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/a/f;Lcom/a/a/c/x$k;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 317
    new-array v0, v2, [Lcom/a/a/c/x$j;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/a/a/c/x$j;-><init>(I[Lcom/a/a/c/x$j;)V

    .line 318
    iget-object v0, p1, Lcom/a/a/c/a/a/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c/x$m;->a:Ljava/lang/String;

    .line 319
    iget v0, p1, Lcom/a/a/c/a/a/f;->b:I

    iput v0, p0, Lcom/a/a/c/x$m;->b:I

    .line 320
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/a/a/c/x$m;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/x$m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/a/a/c/x$m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/c/x$m;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/c/a;->a(Ljava/lang/String;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/c/d;->b(ILcom/a/a/c/a;)I

    move-result v0

    .line 326
    :goto_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/a/a/c/x$m;->b:I

    invoke-static {v1, v2}, Lcom/a/a/c/d;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/a/a/c/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/a/a/c/x$m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/c/x$m;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/c/a;->a(Ljava/lang/String;)Lcom/a/a/c/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/c/d;->a(ILcom/a/a/c/a;)V

    .line 334
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/a/a/c/x$m;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/c/d;->a(II)V

    .line 335
    return-void
.end method
