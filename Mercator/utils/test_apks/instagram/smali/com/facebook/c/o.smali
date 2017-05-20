.class public Lcom/facebook/c/o;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/c/o$a;,
        Lcom/facebook/c/o$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Lcom/facebook/c/o$b;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/facebook/c/o$a;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/facebook/c/o$a;->a(Lcom/facebook/c/o$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/o;->a:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Lcom/facebook/c/o$a;->b(Lcom/facebook/c/o$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/o;->b:Landroid/net/Uri;

    .line 96
    invoke-static {p1}, Lcom/facebook/c/o$a;->c(Lcom/facebook/c/o$a;)Lcom/facebook/c/o$b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/c/o;->c:Lcom/facebook/c/o$b;

    .line 97
    invoke-static {p1}, Lcom/facebook/c/o$a;->d(Lcom/facebook/c/o$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/c/o;->d:Z

    .line 98
    invoke-static {p1}, Lcom/facebook/c/o$a;->e(Lcom/facebook/c/o$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/facebook/c/o;->e:Ljava/lang/Object;

    .line 99
    return-void

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/facebook/c/o$a;->e(Lcom/facebook/c/o$a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/c/o$a;Lcom/facebook/c/o$1;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/c/o;-><init>(Lcom/facebook/c/o$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/c/o;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/c/o;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Lcom/facebook/c/o$b;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/c/o;->c:Lcom/facebook/c/o$b;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/facebook/c/o;->d:Z

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/c/o;->e:Ljava/lang/Object;

    return-object v0
.end method
