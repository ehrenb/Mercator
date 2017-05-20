.class Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$TracedException;
.super Ljava/lang/RuntimeException;
.source "RxJavaStackTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TracedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 77
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError$TracedException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 78
    return-void
.end method
