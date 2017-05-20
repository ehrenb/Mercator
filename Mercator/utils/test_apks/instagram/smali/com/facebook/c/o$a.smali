.class public Lcom/facebook/c/o$a;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Lcom/facebook/c/o$b;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, "imageUri"

    invoke-static {p2, v0}, Lcom/facebook/c/ac;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/facebook/c/o$a;->a:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/facebook/c/o$a;->b:Landroid/net/Uri;

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/facebook/c/o$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/c/o$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/c/o$a;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/c/o$a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/c/o$a;)Lcom/facebook/c/o$b;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/c/o$a;->c:Lcom/facebook/c/o$b;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/c/o$a;)Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/facebook/c/o$a;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/facebook/c/o$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/c/o$a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/c/o$b;)Lcom/facebook/c/o$a;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/facebook/c/o$a;->c:Lcom/facebook/c/o$b;

    .line 139
    return-object p0
.end method

.method public a()Lcom/facebook/c/o;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/facebook/c/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/c/o;-><init>(Lcom/facebook/c/o$a;Lcom/facebook/c/o$1;)V

    return-object v0
.end method
