.class Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;
.super Lrx/j;
.source "RxJavaStackTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;->call(Lrx/j;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;

.field final synthetic val$child:Lrx/j;


# direct methods
.method constructor <init>(Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;Lrx/j;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;->this$0:Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;->val$child:Lrx/j;

    invoke-direct {p0}, Lrx/j;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;->val$child:Lrx/j;

    invoke-virtual {v0}, Lrx/j;->onCompleted()V

    .line 55
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 58
    const-class v0, Lcm/aptoide/pt/utils/BaseException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;->val$child:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;->val$child:Lrx/j;

    new-instance v1, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$TracedException;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;->this$0:Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;

    # getter for: Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;->trace:[Ljava/lang/StackTraceElement;
    invoke-static {v2}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;->access$000(Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;)[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$TracedException;-><init>(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V

    invoke-virtual {v0, v1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;->val$child:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
