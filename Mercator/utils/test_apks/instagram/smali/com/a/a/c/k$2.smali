.class Lcom/a/a/c/k$2;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/k;->c()V
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
.field final synthetic a:Lcom/a/a/c/k;


# direct methods
.method constructor <init>(Lcom/a/a/c/k;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/a/a/c/k$2;->a:Lcom/a/a/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/a/a/c/k$2;->a:Lcom/a/a/c/k;

    invoke-static {v0}, Lcom/a/a/c/k;->d(Lcom/a/a/c/k;)V

    .line 387
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
    .line 383
    invoke-virtual {p0}, Lcom/a/a/c/k$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
