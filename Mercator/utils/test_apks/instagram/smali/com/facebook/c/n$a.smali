.class Lcom/facebook/c/n$a;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/c/n$d;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/c/n$d;Z)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/facebook/c/n$a;->a:Landroid/content/Context;

    .line 356
    iput-object p2, p0, Lcom/facebook/c/n$a;->b:Lcom/facebook/c/n$d;

    .line 357
    iput-boolean p3, p0, Lcom/facebook/c/n$a;->c:Z

    .line 358
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/c/n$a;->b:Lcom/facebook/c/n$d;

    iget-object v1, p0, Lcom/facebook/c/n$a;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/facebook/c/n$a;->c:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/c/n;->a(Lcom/facebook/c/n$d;Landroid/content/Context;Z)V

    .line 363
    return-void
.end method
