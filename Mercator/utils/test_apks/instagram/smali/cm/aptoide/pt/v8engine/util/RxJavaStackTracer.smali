.class public Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;
.super Lrx/f/d;
.source "RxJavaStackTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$OperatorTraceOnError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lrx/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscribeStart(Lrx/d;Lrx/d$a;)Lrx/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<+TT;>;",
            "Lrx/d$a",
            "<TT;>;)",
            "Lrx/d$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$1;

    invoke-direct {v0, p0, p2}, Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer$1;-><init>(Lcm/aptoide/pt/v8engine/util/RxJavaStackTracer;Lrx/d$a;)V

    return-object v0
.end method
