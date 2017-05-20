.class Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$1;
.super Ljava/lang/Object;
.source "RxJavaStackTracer.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;->onSubscribeStart(Lrx/d;Lrx/d$a;)Lrx/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;

.field final synthetic val$onSubscribe:Lrx/d$a;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;Lrx/d$a;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$1;->this$0:Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$1;->val$onSubscribe:Lrx/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$1;->call(Lrx/j;)V

    return-void
.end method

.method public call(Lrx/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    invoke-static {}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;->traceOnError()Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$1;->this$0:Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;->onLift(Lrx/d$b;)Lrx/d$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/d$b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :try_start_1
    invoke-virtual {v0}, Lrx/j;->onStart()V

    .line 30
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$1;->val$onSubscribe:Lrx/d$a;

    invoke-interface {v1, v0}, Lrx/d$a;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    invoke-static {v1}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 33
    invoke-virtual {v0, v1}, Lrx/j;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    .line 36
    invoke-static {v0}, Lrx/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 37
    invoke-virtual {p1, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
