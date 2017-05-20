.class Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;
.super Ljava/lang/Object;
.source "RxJavaStackTracer.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OperatorTraceOnError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$TracedException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final trace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;->trace:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;)[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;->trace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public static traceOnError()Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;->call(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/j;)Lrx/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)",
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$1;-><init>(Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;Lrx/j;)V

    .line 70
    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 71
    return-object v0
.end method
