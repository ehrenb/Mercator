.class Lcom/a/a/c/k$11;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/k;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/a/a/c/k;


# direct methods
.method constructor <init>(Lcom/a/a/c/k;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/a/a/c/k$11;->d:Lcom/a/a/c/k;

    iput-object p2, p0, Lcom/a/a/c/k$11;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/a/a/c/k$11;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/a/a/c/k$11;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/a/a/c/k$11;->d:Lcom/a/a/c/k;

    invoke-static {v0}, Lcom/a/a/c/k;->a(Lcom/a/a/c/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/a/a/c/k$11;->d:Lcom/a/a/c/k;

    iget-object v1, p0, Lcom/a/a/c/k$11;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/a/a/c/k$11;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/a/a/c/k$11;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/c/k;->b(Lcom/a/a/c/k;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 331
    :cond_0
    return-void
.end method
