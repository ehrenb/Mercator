.class final Lcom/facebook/a/e$2;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/facebook/a/e;->c()Lcom/facebook/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/a/f;->a(Lcom/facebook/a/d;)V

    .line 79
    new-instance v0, Lcom/facebook/a/d;

    invoke-direct {v0}, Lcom/facebook/a/d;-><init>()V

    invoke-static {v0}, Lcom/facebook/a/e;->a(Lcom/facebook/a/d;)Lcom/facebook/a/d;

    .line 80
    return-void
.end method
