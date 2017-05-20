.class Lcom/facebook/c/l$2;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/c/l;


# direct methods
.method constructor <init>(Lcom/facebook/c/l;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/facebook/c/l$2;->a:Lcom/facebook/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/c/l$2;->a:Lcom/facebook/c/l;

    invoke-static {v0}, Lcom/facebook/c/l;->b(Lcom/facebook/c/l;)V

    .line 306
    return-void
.end method
