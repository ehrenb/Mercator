.class Lcom/a/a/c/k$10;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/k;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
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
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/a/a/c/k;


# direct methods
.method constructor <init>(Lcom/a/a/c/k;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/a/a/c/k$10;->d:Lcom/a/a/c/k;

    iput-object p2, p0, Lcom/a/a/c/k$10;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/a/a/c/k$10;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/a/a/c/k$10;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/a/a/c/k$10;->d:Lcom/a/a/c/k;

    iget-object v1, p0, Lcom/a/a/c/k$10;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/a/a/c/k$10;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/a/a/c/k$10;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/c/k;->a(Lcom/a/a/c/k;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 255
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
    .line 251
    invoke-virtual {p0}, Lcom/a/a/c/k$10;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
