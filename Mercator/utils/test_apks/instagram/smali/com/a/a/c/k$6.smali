.class Lcom/a/a/c/k$6;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/k;->a(Lcom/a/a/c/a/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/a/a/d;

.field final synthetic b:Lcom/a/a/c/k;


# direct methods
.method constructor <init>(Lcom/a/a/c/k;Lcom/a/a/c/a/a/d;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/a/a/c/k$6;->b:Lcom/a/a/c/k;

    iput-object p2, p0, Lcom/a/a/c/k$6;->a:Lcom/a/a/c/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lcom/a/a/c/k$6;->b:Lcom/a/a/c/k;

    invoke-static {v0}, Lcom/a/a/c/k;->a(Lcom/a/a/c/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/a/a/c/k$6;->b:Lcom/a/a/c/k;

    iget-object v1, p0, Lcom/a/a/c/k$6;->a:Lcom/a/a/c/a/a/d;

    invoke-static {v0, v1}, Lcom/a/a/c/k;->a(Lcom/a/a/c/k;Lcom/a/a/c/a/a/d;)V

    .line 829
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/a/a/c/k$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
